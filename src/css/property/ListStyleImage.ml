(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-image} *)

type 'a t = [> Css_Property.list_style_image ] as 'a

external _make:
  string -> Css_Property.Type.list_style_image Css_Property.t = "%identity"

let make value: 'a t =
  `list_style_image (_make @@ Css_Value.ListStyleImage.show value)
