(** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

type 'a t = [> Css.Property.height ] as 'a

external _make: string -> Css.Property.Type.height Css.Property.t = "%identity"

let make value: 'a t = `height (_make @@ Css.Value.LengthPercent.show value)
