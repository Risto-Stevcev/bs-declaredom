(** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

type 'a t = [> Css.Property.border_style ] as 'a

external _make:
  string -> Css.Property.Type.border_style Css.Property.t = "%identity"

let make value: 'a t = `border_style (_make @@ Css.Value.BorderStyle.show value)
