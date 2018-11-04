(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

type 'a t = [> Css.Property.background_attachment ] as 'a

type value = Css_Value.BackgroundAttachment.t

external to_json:
  Css.Property.background_attachment Css.Property.t ->
  <backgroundAttachment: string> Js.t = "%identity"

external _make:
  backgroundAttachment:string ->
  Css.Property.Type.background_attachment Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css_Value.BackgroundAttachment.show in
  `background_attachment (_make ~backgroundAttachment:(show value))
