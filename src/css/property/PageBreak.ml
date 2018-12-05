(** {{: https://www.w3.org/TR/CSS22/page.html#page-breaks } Page breaks} *)

type 'a before = [> Css_Property.page_break_before ] as 'a
 and 'a after  = [> Css_Property.page_break_after  ] as 'a
 and 'a inside = [> Css_Property.page_break_inside ] as 'a


module Value = struct
  type value =
    [ `auto | `always | `avoid | `left | `right ] [@@bs.deriving jsConverter]

  type inside = [ Css_Value.Global.t | `auto | `always ]

  type t = [ Css_Value.Global.t | value ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Css_Value.Global.show global
  | ( `auto | `always | `avoid | `left | `right ) as value ->
    valueToJs value
end


external to_property: string -> _ Css_Property.t = "%identity"

let before (x: Value.t): _ before =
  `page_break_before (to_property @@ Value.show x)

and after (x: Value.t): _ after =
  `page_break_after (to_property @@ Value.show x)

and inside (x: Value.inside): _ inside =
  `page_break_inside (to_property @@ Value.show (x :> Value.t))
