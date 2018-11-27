(* TODO:
 * stylesheet takes a list of:
 *  - directives ie @charset or @font-face
 *  - A `selector list` (which will be comma delimited) with a ruleset
 *  - css modules
 *)
module Charset = Css_Charset

module Media = Css_Media

module Selector = Css_Selector

module Property = Css_Property

module FontFace = struct
  (** {{: https://www.w3.org/TR/css-fonts-3/#font-face-rule } Font-face rule} *)

  type t = [ `font_face of string * string ]

  let make ~(family:string) ~(src:string): t = `font_face (family, src)

  let show (`font_face (family, src): t): string =
    "@font-face {\n"^
    "  font-family: "^ family ^"\n"^
    "  src: "^ src ^"\n"^
    "}"
end

module Rule = struct
  (* TODO: add @page rule
   * https://www.w3.org/TR/CSS2/page.html#page-box
   *)
  type t =
    (* TODO: use a map instead of list to avoid duplicate rules *)
    [ `media of Media.t * Selector.t * Property.display Js.Dict.t
    | `style of Selector.t * Property.display list
    | `module_ of Property.display Css_Module.t
    | FontFace.t
    ]

  type ruleset = t list

  module Media = struct
    let print ?(only=false) ?condition selector properties: t =
      let media_type = if only then `only `print else `print in
      let query =
        condition
        |. Belt.Option.mapWithDefault [`modifier media_type]
             (fun condition -> [`media_query (media_type, condition)])
      in
      `media
        ( query
        , selector
        , properties
          (* TODO: add upcast helpers ie: to_print and to_display *)
          |> Js.Dict.map (fun [@bs] p -> ((p :> Property.MediaType.print) :> Property.display))
        )

    let screen ?(only=false) ?condition selector properties: t =
      let media_type = if only then `only `screen else `screen in
      let query =
        condition
        |. Belt.Option.mapWithDefault [`modifier media_type]
             (fun condition -> [`media_query (media_type, condition)])
      in
      `media
        ( query
        , selector
        , properties
          |> Js.Dict.map (fun [@bs] p -> ((p :> Property.MediaType.screen) :> Property.display))
        )

    let speech ?(only=false) ?condition selector properties: t =
      let media_type = if only then `only `speech else `speech in
      let query =
        condition
        |. Belt.Option.mapWithDefault [`modifier media_type]
             (fun condition -> [`media_query (media_type, condition)])
      in
      `media
        ( query
        , selector
        , properties
          |> Js.Dict.map (fun [@bs] p -> ((p :> Property.MediaType.speech) :> Property.display))
        )
  end

  let style selector properties: t =
    `style
      ( selector
      , properties |. Belt.List.map (fun p -> (p :> Property.display))
      )

  let module_ { Css_Module.name; Css_Module.declaration }: t =
    `module_
      { Css_Module.name
      ; declaration = declaration |> List.map (fun e -> (e :> Property.display)) 
      }

  let show: t -> string = function
  | `media (media, selector, properties) ->
    Css_Media.show media ^ " {\n  " ^
      Css_Selector.show selector ^ " {\n    " ^
        (properties
         |> Js.Dict.entries
         |. Belt.Array.map (fun (key, value) -> Util.camel_to_dash key ^": "^ Css_Property.show value ^";")
         |> Js.Array.joinWith "\n    "
        ) ^"\n  "^
      "}\n" ^
    "}"
  | _ -> ""
end

type t = Charset.t * Rule.t list 
