(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

type 'a t = [> Css.Property.background_image ] as 'a

external to_json:
  Css.Property.background_image Css.Property.t ->
  <backgroundImage: string> Js.t = "%identity"

external _make:
  backgroundImage:string ->
  Css.Property.Type.background_image Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css.Value.BackgroundImage.show in
  `background_image (_make ~backgroundImage:(show value))
