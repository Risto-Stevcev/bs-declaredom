(** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

type 'a t = [> Css_Property.border_style ] as 'a

external _make:
  string -> Css_Property.Type.border_style Css_Property.t = "%identity"

let make value: 'a t = `border_style (_make @@ Css_Value.BorderStyle.show value)
