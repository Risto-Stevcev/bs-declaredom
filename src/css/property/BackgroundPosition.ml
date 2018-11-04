(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-position } Background Position} *)

type 'a t = [> Css.Property.background_position ] as 'a

type value = [ Css_Value.Global.t | Css_Value.Position.t ]

let valueToJs: value -> string = function
| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
| ( `left | `right | `top | `bottom | `center | `value2 _ | `value4 _
  ) as position ->
  Css_Value.Position.show position

external to_json:
  Css.Property.background_position Css.Property.t ->
  <backgroundPosition: string> Js.t = "%identity"

external _make:
  backgroundPosition:string ->
  Css.Property.Type.background_position Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `background_position (_make ~backgroundPosition:(valueToJs value))
