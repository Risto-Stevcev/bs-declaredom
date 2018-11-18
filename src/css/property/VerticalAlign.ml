(** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical-align} *)

type 'a t = [> Css.Property.vertical_align ] as 'a

type value =
  [ Css.Value.ParentRelative.t | Css.Value.LineRelative.t | Css.Value.Global.t ]

let show: value -> string = function
| ( `baseline | `sub | `super | `text_top | `text_bottom | `middle | `length _
  | `percent _
  ) as parent_relative ->
  Css.Value.ParentRelative.show parent_relative
| ( `top | `bottom ) as line_relative ->
  Css.Value.LineRelative.tToJs line_relative
| ( `inherit_ | `initial | `unset ) as global ->
  Css.Value.Global.tToJs global

external _make:
  string -> Css.Property.Type.vertical_align Css.Property.t = "%identity"

let make value: 'a t = `vertical_align (_make @@ show value)
