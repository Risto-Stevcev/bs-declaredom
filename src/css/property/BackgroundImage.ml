(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

type 'a t = [> Css.Property.background_image ] as 'a

type value = [ Css_Value.Global.t | Css_Value.Uri.t | `none ]

let valueToJs: value -> string = function
| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
| `uri _ as uri -> Css_Value.Uri.show uri
| `none -> "none"

external to_json:
  Css.Property.background_image Css.Property.t ->
  <backgroundImage: string> Js.t = "%identity"

external _make:
  backgroundImage:string ->
  Css.Property.Type.background_image Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `background_image (_make ~backgroundImage:(valueToJs value))
