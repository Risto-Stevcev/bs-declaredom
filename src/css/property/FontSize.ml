(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font size} *)

type 'a t = [> Css.Property.font_size ] as 'a

external _make:
  string -> Css.Property.Type.font_size Css.Property.t = "%identity"

let make value: 'a t = `font_size (_make @@ Css.Value.FontSize.show value)
