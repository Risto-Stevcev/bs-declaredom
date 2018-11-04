(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-width } Border Width} *)

type 'a t = [> Css.Property.border_width ] as 'a

type value = Css_Value.BorderWidth.t

external to_json:
  Css.Property.border_width Css.Property.t ->
  <borderWidth: string> Js.t = "%identity"

external _make:
  borderWidth:string ->
  Css.Property.Type.border_width Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css_Value.BorderWidth.show in
  `border_width (_make ~borderWidth:(show value))
