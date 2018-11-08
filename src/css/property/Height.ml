(** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

type 'a t = [> Css.Property.height ] as 'a

external _make:
  height:string -> Css.Property.Type.height Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `height (_make ~height:(Css.Value.LengthPercent.show value))
