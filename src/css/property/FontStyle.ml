(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font style} *)

type 'a t = [> Css_Property.font_style ] as 'a

external _make:
  string -> Css_Property.Type.font_style Css_Property.t = "%identity"

let make value: 'a t = `font_style (_make @@ Css_Value.FontStyle.show value)
