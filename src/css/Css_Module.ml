(**
 Creates CSS modules -- styles that are scoped by components and identified 
 by a uniquely generated class name
 *)

type 'a t

module Internal = struct
  type 'a value = { name: string; declaration: 'a Js.Dict.t }

  module Convert = struct
    external to_module: 'a value -> 'a t = "%identity"
    external to_value: 'a t -> 'a value = "%identity"

    let position:
      Css_Property.Position.t -> [< Css_Property.display] Js.Dict.t =
    function
    | `static static     -> Obj.magic static
    | `absolute absolute -> Obj.magic absolute
    | `relative relative -> Obj.magic relative
    | `fixed fixed       -> Obj.magic fixed
  end

  let make_name declaration =
    "m"^ MD5.make @@ Css_Property.show_properties declaration

  let map fn css_module =
    css_module
    |> Convert.to_value
    |> fn
    |> Convert.to_module
end

(** Gets a class name from the className and/or cssModule if provided *)
let get_class ?className ?cssModule () =
  match (className, Belt.Option.map cssModule Internal.Convert.to_value) with
  | (Some className', Some {name}) -> className' ^" "^ name |. Some
  | (Some _, None) -> className
  | (None, Some {name}) -> Some name
  | _ -> None

let to_display css_module =
  css_module
  |> Internal.map @@ fun { name; declaration } -> begin
    { name
    ; declaration =
        declaration |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display))
    }
  end

let make
  ?(position:Css_Property.Position.t option)
  declaration: [< Css_Property.display] t =
  Internal.Convert.to_module
    { name = Internal.make_name declaration
    ; declaration = match position with
      | Some position' ->
        Util.merge (Internal.Convert.position position') declaration
      | None ->
        declaration
    }

let map f css_module =
  css_module
  |> Internal.Convert.to_value
  |> (fun {declaration} -> begin
      let declaration' = f declaration
      in
      { Internal.name = Internal.make_name declaration'
      ; declaration = declaration' }
     end)
  |> Internal.Convert.to_module

let merge css_module_a css_module_b =
  let {Internal.declaration=a} = Internal.Convert.to_value css_module_a
  and {Internal.declaration=b} = Internal.Convert.to_value css_module_b
  in
  make @@ Util.merge_all [|Js.Dict.empty (); a; b|]

let class_name css_module =
  let {Internal.name} = Internal.Convert.to_value css_module
  in
  name

let show ?indent css_module =
  let {Internal.declaration} = Internal.Convert.to_value css_module
  in
  Css_Property.show_properties ?indent declaration
