(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-position} *)

type 'a t = [> Css.Property.list_style_position ] as 'a

external to_json:
  Css.Property.list_style_position Css.Property.t ->
  <list_style_position: string> Js.t = "%identity"

external _make:
  listStylePosition:string ->
  Css.Property.Type.list_style_position Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css.Value.ListStylePosition.show in
  `list_style_position (_make ~listStylePosition:(show value))
