(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

type 'a t = [> Css.Property.background_repeat ] as 'a

external _make:
  string -> Css.Property.Type.background_repeat Css.Property.t = "%identity"

let make value: 'a t =
  `background_repeat (_make @@ Css.Value.BackgroundRepeat.show value)
