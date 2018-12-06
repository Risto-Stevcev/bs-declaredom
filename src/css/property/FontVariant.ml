(** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font variant} *)

type 'a t = [> Css_Property.font_variant ] as 'a

external _make:
  string -> Css_Property.Type.font_variant Css_Property.t = "%identity"

let make value: 'a t = `font_variant (_make @@ Css_Value.FontVariant.show value)
