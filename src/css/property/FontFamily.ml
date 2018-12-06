(** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font family} *)

type 'a t = [> Css_Property.font_family ] as 'a

external _make:
  string -> Css_Property.Type.font_family Css_Property.t = "%identity"

let make value: 'a t = `font_family (_make @@ Css_Value.FontFamily.show value)
