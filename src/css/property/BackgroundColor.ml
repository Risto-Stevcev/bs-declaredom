(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} *)

type 'a t = [> Css.Property.background_color ] as 'a

external to_json:
  Css.Property.background_color Css.Property.t ->
  <backgroundColor: string> Js.t = "%identity"

external _make:
  backgroundColor:string ->
  Css.Property.Type.background_color Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css.Value.BackgroundColor.show in
  `background_color (_make ~backgroundColor:(show value))
