(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-position } Background Position} *)

type 'a t = [> Css.Property.background_position ] as 'a

type value = Css_Value.BackgroundPosition.t

external to_json:
  Css.Property.background_position Css.Property.t ->
  <backgroundPosition: string> Js.t = "%identity"

external _make:
  backgroundPosition:string ->
  Css.Property.Type.background_position Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css_Value.BackgroundPosition.show in
  `background_position (_make ~backgroundPosition:(show value))
