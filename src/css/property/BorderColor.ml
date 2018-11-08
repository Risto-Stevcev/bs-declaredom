(** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

type 'a t = [> Css.Property.border_color ] as 'a

external to_json:
  Css.Property.border_color Css.Property.t ->
  <borderColor: string> Js.t = "%identity"

external _make:
  borderColor:string ->
  Css.Property.Type.border_color Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `border_color (_make ~borderColor:(Css.Value.BorderColor.show value))
