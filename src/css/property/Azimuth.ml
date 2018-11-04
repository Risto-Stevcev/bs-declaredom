(** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-azimuth } Azimuth } *)

type 'a t = [> Css.Property.azimuth ] as 'a

type _value =
  [
  | `left_side | `far_left | `left | `center_left | `center | `center_right
  | `right | `far_right | `right_side | `leftwards | `rightwards
  ]
  [@@bs.deriving jsConverter]

(** {{: https://www.w3.org/TR/CSS22/aural.html#value-def-angle } Angle} *)
type value =
  [
  | Css_Value.Global.t | Css_Value.Angle.t | `behind of _value option | _value
  ]

let valueToJs: value -> string = function
| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
| `angle _ as angle -> Css_Value.Angle.show angle
| `behind None -> "behind"
| `behind (Some value') -> 
  "behind " ^ (value' |> _valueToJs |> Util.underscore_to_dash)
| ( `left_side | `far_left | `left | `center_left | `center | `center_right
  | `right | `far_right | `right_side | `leftwards | `rightwards
  ) as value' ->
  value' |> _valueToJs |> Util.underscore_to_dash

external to_json:
  Css.Property.azimuth Css.Property.t -> <azimuth: string> Js.t = "%identity"

external _make:
  azimuth:string -> Css.Property.Type.azimuth Css.Property.t = "" [@@bs.obj]

let make value: 'a t = `azimuth (_make ~azimuth:(valueToJs value))
