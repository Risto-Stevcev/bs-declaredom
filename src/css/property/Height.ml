(** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

type 'a t = [> Css_Property.height ] as 'a

external _make: string -> Css_Property.Type.height Css_Property.t = "%identity"

let make value: 'a t = `height (_make @@ Css_Value.LengthPercent.show value)
