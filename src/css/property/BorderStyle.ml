(** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

type 'a t = [> Css.Property.border_style ] as 'a

external to_json:
  Css.Property.border_style Css.Property.t ->
  <borderStyle: string> Js.t = "%identity"

external _make:
  borderStyle:string ->
  Css.Property.Type.border_style Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `border_style (_make ~borderStyle:(Css.Value.BorderStyle.show value))
