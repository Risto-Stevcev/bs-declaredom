(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} *)

type 'a t = [> Css_Property.background_color ] as 'a

external _make:
  string -> Css_Property.Type.background_color Css_Property.t = "%identity"

let make value: 'a t =
  `background_color (_make @@ Css_Value.BackgroundColor.show value)
