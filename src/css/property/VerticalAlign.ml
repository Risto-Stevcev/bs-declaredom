type 'a t =
  [> `vertical_align of Css.Property.vertical_align Css.Property.t ] as 'a

type value =
  [ Css.Value.ParentRelative.t | Css.Value.LineRelative.t | Css.Value.Global.t ]

let valueToJs: value -> string = function
| ( `baseline | `sub | `super | `text_top | `text_bottom | `middle | `length _
  | `percent _
  ) as parent_relative ->
  Css.Value.ParentRelative.show parent_relative
| ( `top | `bottom ) as line_relative ->
  Css.Value.LineRelative.tToJs line_relative
| ( `inherit_ | `initial | `unset ) as global ->
  Css.Value.Global.tToJs global

external _make:
  verticalAlign:value -> Css.Property.vertical_align Css.Property.t = ""
  [@@bs.obj]

let make value: 'a t = `vertical_align (_make ~verticalAlign:value)
