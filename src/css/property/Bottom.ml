(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

type 'a t = [> Css.Property.bottom ] as 'a

external to_json:
  Css.Property.bottom Css.Property.t -> <bottom: string> Js.t = "%identity"

external _make:
  bottom:string -> Css.Property.Type.bottom Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `bottom (_make ~bottom:(Css.Value.LengthPercent.show value))
