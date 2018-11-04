(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-color } Border Color} *)

type 'a t = [> Css.Property.border_color ] as 'a

type value = Css_Value.BorderColor.t

external to_json:
  Css.Property.border_color Css.Property.t ->
  <borderColor: string> Js.t = "%identity"

external _make:
  borderColor:string ->
  Css.Property.Type.border_color Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css_Value.BorderColor.show in
  `border_color (_make ~borderColor:(show value))
