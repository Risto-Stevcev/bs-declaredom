(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-style } Border Style} *)

type 'a t = [> Css.Property.border_style ] as 'a

type value = Css_Value.BorderStyle.t

external to_json:
  Css.Property.border_style Css.Property.t ->
  <borderStyle: string> Js.t = "%identity"

external _make:
  borderStyle:string ->
  Css.Property.Type.border_style Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css_Value.BorderStyle.show in
  `border_style (_make ~borderStyle:(show value))
