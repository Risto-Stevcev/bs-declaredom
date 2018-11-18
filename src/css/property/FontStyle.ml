(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font style} *)

type 'a t = [> Css.Property.font_style ] as 'a

external _make:
  string -> Css.Property.Type.font_style Css.Property.t = "%identity"

let make value: 'a t = `font_style (_make @@ Css.Value.FontStyle.show value)
