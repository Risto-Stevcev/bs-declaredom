(** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} *)

type 'a t = [> Css.Property.background_position ] as 'a

external _make:
  string -> Css.Property.Type.background_position Css.Property.t = "%identity"

let make value: 'a t =
  `background_position (_make @@ Css.Value.BackgroundPosition.show value)
