(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-type} *)

type 'a t = [> Css.Property.list_style_type ] as 'a

external to_json:
  Css.Property.list_style_type Css.Property.t ->
  <list_style_type: string> Js.t = "%identity"

external _make:
  listStyleType:string ->
  Css.Property.Type.list_style_type Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css.Value.ListStyleType.show in
  `list_style_type (_make ~listStyleType:(show value))
