(** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

type 'a t = [> Css_Property.border_width ] as 'a

external _make:
  string -> Css_Property.Type.border_width Css_Property.t = "%identity"

let make value: 'a t = `border_width (_make @@ Css_Value.BorderWidth.show value)
