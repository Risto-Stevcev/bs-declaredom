(** {{: https://www.w3.org/TR/CSS22/visudet.html#leading } Leading} *)

type 'a t = [> Css.Property.line_height ] as 'a

external to_json:
  Css.Property.line_height Css.Property.t ->
  <line_height: string> Js.t = "%identity"

external _make:
  lineHeight:string ->
  Css.Property.Type.line_height Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `line_height (_make ~lineHeight:(Css.Value.LineHeight.show value))
