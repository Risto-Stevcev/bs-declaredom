(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

type 'a t = [> Css.Property.left ] as 'a

external _make: string -> Css.Property.Type.left Css.Property.t = "%identity"

let make value: 'a t = `left (_make @@ Css.Value.LengthPercent.show value)
