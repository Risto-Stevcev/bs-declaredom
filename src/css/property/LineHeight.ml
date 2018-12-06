(** {{: https://www.w3.org/TR/CSS22/visudet.html#leading } Leading} *)

type 'a t = [> Css_Property.line_height ] as 'a

external _make:
  string -> Css_Property.Type.line_height Css_Property.t = "%identity"

let make value: 'a t = `line_height (_make @@ Css_Value.LineHeight.show value)
