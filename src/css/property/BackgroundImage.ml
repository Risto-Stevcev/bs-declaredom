(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

type 'a t = [> Css_Property.background_image ] as 'a

external _make:
  string -> Css_Property.Type.background_image Css_Property.t = "%identity"

let make value: 'a t =
  `background_image (_make @@ Css_Value.BackgroundImage.show value)
