(** {{: https://www.w3.org/TR/CSS22/box.html#margin-properties } Margin properties} *)

type 'a t      = [> Css_Property.margin        ] as 'a
 and 'a top    = [> Css_Property.margin_top    ] as 'a
 and 'a right  = [> Css_Property.margin_right  ] as 'a
 and 'a bottom = [> Css_Property.margin_bottom ] as 'a
 and 'a left   = [> Css_Property.margin_left   ] as 'a


module Internal = struct
  external margin:
    string -> Css_Property.Type.margin Css_Property.t = "%identity"
  external top:
    string -> Css_Property.Type.margin_top Css_Property.t = "%identity"
  external right:
    string -> Css_Property.Type.margin_right Css_Property.t = "%identity"
  external bottom:
    string -> Css_Property.Type.margin_bottom Css_Property.t = "%identity"
  external left:
    string -> Css_Property.Type.margin_left Css_Property.t = "%identity"
end


let margin l: _ t =
  `margin (Internal.margin @@ Css_Value.Length.show l)
and margin_top l: _ top =
  `margin_top (Internal.top @@ Css_Value.Length.show l)
and margin_right l: _ right =
  `margin_right (Internal.right @@ Css_Value.Length.show l)
and margin_bottom l: _ bottom =
  `margin_bottom (Internal.bottom @@ Css_Value.Length.show l)
and margin_left l: _ left =
  `margin_left (Internal.left @@ Css_Value.Length.show l)
