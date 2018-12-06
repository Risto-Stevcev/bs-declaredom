(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

type 'a t = [> Css_Property.background_repeat ] as 'a

external _make:
  string -> Css_Property.Type.background_repeat Css_Property.t = "%identity"

let make value: 'a t =
  `background_repeat (_make @@ Css_Value.BackgroundRepeat.show value)
