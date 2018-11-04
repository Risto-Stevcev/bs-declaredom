(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

type 'a t = [> Css.Property.background_attachment ] as 'a

type _value =
  [ `scroll | `fixed ]
  [@@bs.deriving jsConverter]

type value = [ Css_Value.Global.t | _value ]

let valueToJs: value -> string = function
| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
| ( `scroll | `fixed ) as value' -> _valueToJs value'

external to_json:
  Css.Property.background_attachment Css.Property.t ->
  <backgroundAttachment: string> Js.t = "%identity"

external _make:
  backgroundAttachment:string ->
  Css.Property.Type.background_attachment Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `background_attachment (_make ~backgroundAttachment:(valueToJs value))
