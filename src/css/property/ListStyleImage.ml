(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-image} *)

type 'a t = [> Css.Property.list_style_image ] as 'a

external _make:
  string -> Css.Property.Type.list_style_image Css.Property.t = "%identity"

let make value: 'a t =
  `list_style_image (_make @@ Css.Value.ListStyleImage.show value)
