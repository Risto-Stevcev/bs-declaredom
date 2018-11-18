(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

type 'a t = [> Css.Property.background_image ] as 'a

external _make:
  string -> Css.Property.Type.background_image Css.Property.t = "%identity"

let make value: 'a t =
  `background_image (_make @@ Css.Value.BackgroundImage.show value)
