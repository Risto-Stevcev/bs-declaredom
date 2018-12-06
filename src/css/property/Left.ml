(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

type 'a t = [> Css_Property.left ] as 'a

external _make: string -> Css_Property.Type.left Css_Property.t = "%identity"

let make value: 'a t = `left (_make @@ Css_Value.LengthPercent.show value)
