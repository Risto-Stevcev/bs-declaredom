(** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical-align} *)

type 'a t = [> Css_Property.vertical_align ] as 'a

type value =
  [ Css_Value.ParentRelative.t | Css_Value.LineRelative.t | Css_Value.Global.t ]

let show: value -> string = function
| ( `baseline | `sub | `super | `text_top | `text_bottom | `middle | `length _
  | `percent _
  ) as parent_relative ->
  Css_Value.ParentRelative.show parent_relative
| ( `top | `bottom ) as line_relative ->
  Css_Value.LineRelative.tToJs line_relative
| ( `inherit_ | `initial | `unset ) as global ->
  Css_Value.Global.tToJs global

external _make:
  string -> Css_Property.Type.vertical_align Css_Property.t = "%identity"

let make value: 'a t = `vertical_align (_make @@ show value)
