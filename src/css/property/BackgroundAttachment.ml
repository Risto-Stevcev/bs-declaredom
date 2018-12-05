(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

type 'a t = [> Css_Property.background_attachment ] as 'a

external to_json:
  Css_Property.background_attachment Css_Property.t ->
  <backgroundAttachment: string> Js.t = "%identity"

external _make:
  string ->
  Css_Property.Type.background_attachment Css_Property.t = "%identity"

let make value: 'a t =
  let show = Css_Value.BackgroundAttachment.show in
  `background_attachment (_make @@ show value)
