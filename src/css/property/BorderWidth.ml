(** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

type 'a t = [> Css.Property.border_width ] as 'a

external to_json:
  Css.Property.border_width Css.Property.t ->
  <borderWidth: string> Js.t = "%identity"

external _make:
  borderWidth:string ->
  Css.Property.Type.border_width Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `border_width (_make ~borderWidth:(Css_Value.BorderWidth.show value))
