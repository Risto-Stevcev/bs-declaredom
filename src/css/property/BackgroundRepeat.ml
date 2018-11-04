(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

type 'a t = [> Css.Property.background_repeat ] as 'a

type _value =
  [ `repeat | `repeat_x | `repeat_y | `no_repeat ] [@@bs.deriving jsConverter]

type value = [ Css_Value.Global.t | _value ]

let valueToJs: value -> string = function
| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
| ( `repeat | `repeat_x | `repeat_y | `no_repeat ) as value ->
  value |> _valueToJs |> Util.underscore_to_dash

external to_json:
  Css.Property.background_repeat Css.Property.t ->
  <backgroundRepeat: string> Js.t = "%identity"

external _make:
  backgroundRepeat:string ->
  Css.Property.Type.background_repeat Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `background_repeat (_make ~backgroundRepeat:(valueToJs value))
