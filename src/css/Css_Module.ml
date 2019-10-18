type 'a t

module Internal = struct
  type 'a value = {
    name: string;
    declaration: (Css_Selector.PseudoClass.t list * 'a Css_Property.t Js.Dict.t) list;
    media: (Css_Media.t * Css_Selector.PseudoClass.t list * 'a Css_Property.t Js.Dict.t) list
  }

  module Convert = struct
    external to_module: 'a value -> 'a t = "%identity"
    external to_value: 'a t -> 'a value = "%identity"
  end

  let show_pseudo pseudoclasses =
    pseudoclasses
    |> List.map Css_Selector.PseudoClass.show
    |. Util.join_with ""

  let show_pseudo_and_declaration (pseudoclasses, declaration) =
    show_pseudo pseudoclasses ^ Css_Property.show_properties declaration

  let make_name media declaration =
    let media' =
      media
      |> List.map (fun (media_t, pseudoclasses, declaration) -> begin
           Css_Media.show media_t ^ show_pseudo_and_declaration (pseudoclasses, declaration)
         end)
    and declaration' =
      declaration
      |> List.map show_pseudo_and_declaration
    in
    let display =
      List.append media' declaration'
      |. Util.join_with "\n"
    in
    "m"^ Digest.to_hex @@ Digest.string @@ display

  let map fn css_module =
    css_module
    |> Convert.to_value
    |> fn
    |> Convert.to_module

  let collect declarations (pseudoclasses, declaration) =
    let key = show_pseudo pseudoclasses in
    let (_, entry) =
      declarations |. Js.Dict.get key |> Js.Option.getWithDefault (pseudoclasses, Js.Dict.empty ())
    in
    declarations
    |. Js.Dict.set key (pseudoclasses, Util.merge_all [|Js.Dict.empty (); entry; declaration|])

  let collect_media declarations (media_t, pseudoclasses, declaration) =
    let key = Css_Media.show media_t ^ show_pseudo pseudoclasses in
    let (_, _, entry) =
      declarations
      |. Js.Dict.get key |> Js.Option.getWithDefault (media_t, pseudoclasses, Js.Dict.empty ())
    in
    declarations
    |. Js.Dict.set key
       (media_t, pseudoclasses, Util.merge_all [|Js.Dict.empty (); entry; declaration|])
end

let get_class ?class_name ?css_module () =
  match (class_name, Belt.Option.map css_module Internal.Convert.to_value) with
  | (Some class_name', Some {name}) -> class_name' ^" "^ name |. Some
  | (Some _, None) -> class_name
  | (None, Some {name}) -> Some name
  | _ -> None

let to_display css_module =
  css_module
  |> Internal.map @@ fun { name; declaration; media } -> begin
    { name
    ; declaration =
        declaration
        |> List.map (fun (pseudoclasses, properties) -> begin
             pseudoclasses,
             properties |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display Css_Property.t))
           end)
    ; media =
       media
       |> List.map (fun (media_t, pseudoclasses, declaration) -> begin
            media_t,
            pseudoclasses,
            declaration |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display Css_Property.t))
          end)
    }
  end

let make ?(media=[]) declaration: [< Css_Property.display] t =
  let declaration' = [[], declaration]
  and media' = media |> List.map (fun (media_t, declaration) -> media_t, [], declaration)
  in
  Internal.Convert.to_module
    { name = Internal.make_name media' declaration'
    ; declaration = declaration'
    ; media = media'
    }

let make' ?(media=[]) declaration: [< Css_Property.display] t =
  let declaration' =
    declaration
    |> List.map (fun (pseudoclasses, declaration) -> begin
          pseudoclasses
          |> List.map (fun pseudoclass -> (pseudoclass :> Css_Selector.PseudoClass.t)),
          declaration
        end)
  and media' =
    media
    |> List.map (fun (media_t, pseudoclasses, declaration) -> begin
          media_t,
          pseudoclasses
          |> List.map (fun pseudoclass -> (pseudoclass :> Css_Selector.PseudoClass.t)),
          declaration
        end)
  in
  Internal.Convert.to_module
    { name = Internal.make_name media' declaration'
    ; declaration = declaration'
    ; media = media'
    }

let map f css_module =
  css_module
  |> Internal.Convert.to_value
  |> (fun {declaration; media} -> begin
      let declaration' =
        declaration
        |> List.map (fun (pseudoclasses, declaration) ->  pseudoclasses, f declaration)
      and media' =
        media
        |> List.map (fun (media_t, pseudoclasses, declaration) -> begin
             media_t, pseudoclasses, f declaration
           end)
      in
      { Internal.name = Internal.make_name media' declaration'
      ; declaration = declaration'
      ; media = media'
      }
     end)
  |> Internal.Convert.to_module

let merge css_module_a css_module_b =
  let {Internal.declaration=a; Internal.media=ma} = Internal.Convert.to_value css_module_a
  and {Internal.declaration=b; Internal.media=mb} = Internal.Convert.to_value css_module_b
  in
  let declarations_map = Js.Dict.empty ()
  and media_map = Js.Dict.empty ()
  in
  let _ =
    a |> List.iter (Internal.collect declarations_map);
    b |> List.iter (Internal.collect declarations_map);
    ma |> List.iter (Internal.collect_media media_map);
    mb |> List.iter (Internal.collect_media media_map)
  in
  let declarations = declarations_map |> Js.Dict.values |> Array.to_list
  and media = media_map |> Js.Dict.values |> Array.to_list
  in
  make' ~media declarations

let class_name css_module =
  let {Internal.name} = Internal.Convert.to_value css_module
  in
  name

let show_declaration ?(indent = 0) ?(pseudoclasses = []) css_module declaration =
  let indent' = Js.String.repeat indent "  "
  and pseudoclasses' =
    pseudoclasses
    |> List.map Css_Selector.PseudoClass.show
    |. Util.join_with ""
  in
  indent' ^ "."^ class_name css_module ^ pseudoclasses' ^" {\n"^
    Css_Property.show_properties ~indent:(indent + 1) declaration ^"\n"^
  indent' ^ "}"

let show_media ?(indent = 0) css_module =
  let {Internal.media} = Internal.Convert.to_value css_module
  in
  media
  |> List.map (fun (media_t, pseudoclasses, declaration) -> begin
       let indent' = Js.String.repeat indent "  "
       in
       indent' ^ Css_Media.show media_t ^" {\n"^
         show_declaration ~indent:(indent + 1) ~pseudoclasses css_module declaration ^"\n"^
       indent' ^ "}"
     end)
  |. Util.join_with "\n"

let show_declaration ?indent css_module =
  let {Internal.declaration} = Internal.Convert.to_value css_module
  in
  declaration
  |> List.map (fun (pseudoclasses, declaration) -> begin
       show_declaration ?indent ~pseudoclasses css_module declaration
     end)
  |. Util.join_with "\n"

let show ?indent css_module =
  [ show_declaration ?indent css_module
  ; show_media ?indent css_module
  ]
  |. Util.join_with "\n"
  |> Js.String.trim
