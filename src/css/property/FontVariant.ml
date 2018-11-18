(** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font variant} *)

type 'a t = [> Css.Property.font_variant ] as 'a

external _make:
  string -> Css.Property.Type.font_variant Css.Property.t = "%identity"

let make value: 'a t = `font_variant (_make @@ Css.Value.FontVariant.show value)
