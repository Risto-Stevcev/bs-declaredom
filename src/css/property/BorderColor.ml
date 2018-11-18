(** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

type 'a t = [> Css.Property.border_color ] as 'a

external _make:
  string -> Css.Property.Type.border_color Css.Property.t = "%identity"

let make value: 'a t = `border_color (_make @@ Css.Value.BorderColor.show value)
