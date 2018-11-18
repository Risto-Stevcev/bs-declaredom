(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

type 'a t = [> Css.Property.bottom ] as 'a

external _make: string -> Css.Property.Type.bottom Css.Property.t = "%identity"

let make value: 'a t = `bottom (_make @@ Css.Value.LengthPercent.show value)
