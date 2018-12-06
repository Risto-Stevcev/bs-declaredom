(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-position} *)

type 'a t = [> Css_Property.list_style_position ] as 'a

external _make:
  string -> Css_Property.Type.list_style_position Css_Property.t = "%identity"

let make value: 'a t =
  `list_style_position (_make @@ Css_Value.ListStylePosition.show value)
