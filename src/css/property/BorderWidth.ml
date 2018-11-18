(** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

type 'a t = [> Css.Property.border_width ] as 'a

external _make:
  string -> Css.Property.Type.border_width Css.Property.t = "%identity"

let make value: 'a t = `border_width (_make @@ Css_Value.BorderWidth.show value)
