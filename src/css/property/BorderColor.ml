(** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

type 'a t = [> Css_Property.border_color ] as 'a

external _make:
  string -> Css_Property.Type.border_color Css_Property.t = "%identity"

let make value: 'a t = `border_color (_make @@ Css_Value.BorderColor.show value)
