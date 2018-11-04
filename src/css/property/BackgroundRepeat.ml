(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

type 'a t = [> Css.Property.background_repeat ] as 'a

type value = Css_Value.BackgroundRepeat.t

external to_json:
  Css.Property.background_repeat Css.Property.t ->
  <backgroundRepeat: string> Js.t = "%identity"

external _make:
  backgroundRepeat:string ->
  Css.Property.Type.background_repeat Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css_Value.BackgroundRepeat.show in
  `background_repeat (_make ~backgroundRepeat:(show value))
