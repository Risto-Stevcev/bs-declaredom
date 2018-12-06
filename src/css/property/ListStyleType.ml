(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-type} *)

type 'a t = [> Css_Property.list_style_type ] as 'a

external _make:
  string -> Css_Property.Type.list_style_type Css_Property.t = "%identity"

let make value: 'a t =
  `list_style_type (_make @@ Css_Value.ListStyleType.show value)
