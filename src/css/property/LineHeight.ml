(** {{: https://www.w3.org/TR/CSS22/visudet.html#leading } Leading} *)

type 'a t = [> Css.Property.line_height ] as 'a

external _make:
  string -> Css.Property.Type.line_height Css.Property.t = "%identity"

let make value: 'a t = `line_height (_make @@ Css.Value.LineHeight.show value)
