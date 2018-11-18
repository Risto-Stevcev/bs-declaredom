(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} *)

type 'a t = [> Css.Property.background_color ] as 'a

external _make:
  string -> Css.Property.Type.background_color Css.Property.t = "%identity"

let make value: 'a t =
  `background_color (_make @@ Css.Value.BackgroundColor.show value)
