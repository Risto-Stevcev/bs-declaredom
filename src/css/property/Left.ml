(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

type 'a t = [> Css.Property.left ] as 'a

external to_json:
  Css.Property.left Css.Property.t -> <left: string> Js.t = "%identity"

external _make:
  left:string -> Css.Property.Type.left Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `left (_make ~left:(Css.Value.LengthPercent.show value))
