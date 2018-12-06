(** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} *)

type 'a t = [> Css_Property.background_position ] as 'a

external _make:
  string -> Css_Property.Type.background_position Css_Property.t = "%identity"

let make value: 'a t =
  `background_position (_make @@ Css_Value.BackgroundPosition.show value)
