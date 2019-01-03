(** {{: https://www.w3.org/TR/CSS22/propidx.html } Full property table} *)
(** {{: https://www.w3.org/TR/css-values-4/#component-combinators } Component combinators *)

(* TODO: hide this *)
module Internal = struct
  external make: string -> _ Css_Property.t = "%identity"

  external static:
    Css_Property.display Js.Dict.t ->
    Css_Property.Position.Type.static = "%identity"

  external absolute:
    Css_Property.display Js.Dict.t ->
    Css_Property.Position.Type.absolute = "%identity"

  external relative:
    Css_Property.display Js.Dict.t ->
    Css_Property.Position.Type.relative = "%identity"

  external fixed:
    Css_Property.display Js.Dict.t ->
    Css_Property.Position.Type.fixed = "%identity"
end


module AlignContent = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#align-content-property} Align-content} *)

  type 'a t = [> Css_Property.align_content ] as 'a

  module Value = struct
    type value =
      [ `flex_start [@bs.as "flex-start"] | `flex_end [@bs.as "flex-end"]
      | `center | `space_between [@bs.as "space-between"]
      | `space_around [@bs.as "space-around"] | `stretch
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `flex_start | `flex_end | `center | `space_between
      | `space_around | `stretch ) as value ->
      valueToJs value
  end

  let make value: 'a t = `align_content (Internal.make @@ Value.show value)
end


module AlignItems = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align-items} *)

  type 'a t = [> Css_Property.align_items ] as 'a

  module Value = struct
    type value =
      [ `flex_start [@bs.as "flex-start"] | `flex_end [@bs.as "flex-end"]
      | `center | `baseline | `stretch
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `flex_start | `flex_end | `center | `baseline | `stretch ) as value ->
      valueToJs value
  end

  let make value: 'a t = `align_items (Internal.make @@ Value.show value)
end


module AlignSelf = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align-self} *)

  type 'a t = [> Css_Property.align_self ] as 'a

  module Value = struct
    type value =
      [ `auto | `flex_start [@bs.as "flex-start"]
      | `flex_end [@bs.as "flex-end"] | `center | `baseline | `stretch
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `auto | `flex_start | `flex_end | `center | `baseline | `stretch
      ) as value ->
      valueToJs value
  end

  let make value: 'a t = `align_self (Internal.make @@ Value.show value)
end


module Azimuth = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-azimuth } Azimuth} *)

  type 'a t = [> Css_Property.azimuth ] as 'a

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

  let show: value -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
  | ( `deg _ | `grad _ | `rad _ | `turn _ ) as angle ->
    Css_Value.Angle.show angle
  | `behind None -> "behind"
  | `behind (Some value') -> 
    "behind " ^ (value' |> _valueToJs |> Util.underscore_to_dash)
  | ( `left_side | `far_left | `left | `center_left | `center | `center_right
    | `right | `far_right | `right_side | `leftwards | `rightwards
    ) as value' ->
    value' |> _valueToJs |> Util.underscore_to_dash

  let make value: 'a t = `azimuth (Internal.make @@ show value)
end


module BackgroundAttachment = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

  type 'a t = [> Css_Property.background_attachment ] as 'a

  external to_json:
    Css_Property.background_attachment Css_Property.t ->
    <backgroundAttachment: string> Js.t = "%identity"

  let make value: 'a t =
    let show = Css_Value.Background.Attachment.show in
    `background_attachment (Internal.make @@ show value)
end


module BackgroundColor = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} *)

  type 'a t = [> Css_Property.background_color ] as 'a

  let make value: 'a t =
    `background_color (Internal.make @@ Css_Value.Background.Color.show value)
end


module BackgroundImage = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

  type 'a t = [> Css_Property.background_image ] as 'a

  let make value: 'a t =
    `background_image (Internal.make @@ Css_Value.Background.Image.show value)
end


module BackgroundPosition = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} *)

  type 'a t = [> Css_Property.background_position ] as 'a

  let make value: 'a t =
    `background_position
      (Internal.make @@ Css_Value.Background.Position.show value)
end


module BackgroundRepeat = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

  type 'a t = [> Css_Property.background_repeat ] as 'a

  let make value: 'a t =
    `background_repeat (Internal.make @@ Css_Value.Background.Repeat.show value)
end


module Background = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background } Background} *)

  type 'a t = [> Css_Property.background ] as 'a

  module Value = struct
    type t =
      Css_Value.Background.Color.t option *
      Css_Value.Background.Image.t option *
      Css_Value.Background.Repeat.t option *
      Css_Value.Background.Attachment.t option *
      Css_Value.Background.Position.t option

    let show ((color, image, repeat, attachment, position): t): string =
      let color' =
        Belt.Option.mapWithDefault color "" Css_Value.Background.Color.show
      and image' =
        Belt.Option.mapWithDefault image "" Css_Value.Background.Image.show
      and repeat' =
        Belt.Option.mapWithDefault repeat "" Css_Value.Background.Repeat.show
      and attachment' =
        Belt.Option.mapWithDefault
          attachment "" Css_Value.Background.Attachment.show
      and position' =
        Belt.Option.mapWithDefault
          position "" Css_Value.Background.Position.show
      in
      Util.combine_styles [| color'; image'; repeat'; attachment'; position' |]
  end

  let make ?color ?image ?repeat ?attachment ?position (): 'a t =
    let value = (color, image, repeat, attachment, position) in
    `background (Internal.make @@ Value.show value)
end


module BorderCollapse = struct
  (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} *)

  type 'a t = [> Css_Property.border_collapse ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `collapse | `separate ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `collapse -> "collapse"
    | `separate -> "separate"
  end

  let make value: 'a t = `border_collapse (Internal.make @@ Value.show value)
end


module BorderColor = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

  type 'a t = [> Css_Property.border_color ] as 'a

  let make value: 'a t =
    `border_color (Internal.make @@ Css_Value.Border.Color.show value)
end


module BorderSpacing = struct
  (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-spacing } Border Spacing} *)

  type 'a t = [> Css_Property.border_spacing ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Length.t ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as value ->
      Css_Value.Global.show value
    | ( `cm _  | `mm _   | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
      | `ex _  | `cap _  | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
      | `vh _  | `vi _   | `vb _ | `vmin _ | `vmax _
      ) as length ->
      Css_Value.Length.show length
  end

  let make value: 'a t =
    `border_spacing (Internal.make @@ Value.show value)
end


module BorderWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

  type 'a t = [> Css_Property.border_width ] as 'a

  let make value: 'a t =
    `border_width (Internal.make @@ Css_Value.Border.Width.show value)
end


module BorderStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

  type 'a t = [> Css_Property.border_style ] as 'a

  let make value: 'a t =
    `border_style (Internal.make @@ Css_Value.Border.Style.show value)
end


module BorderTop = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top } Border Top} *)

  type 'a t = [> Css_Property.border_top ] as 'a

  module Value = struct
    type t =
      Css_Value.Border.Width.t option *
      Css_Value.Border.Style.t option *
      Css_Value.Border.Color.t option

    let show ((width, style, color): t): string =
      let width' =
        Belt.Option.mapWithDefault width "" Css_Value.Border.Width.show
      and style' =
        Belt.Option.mapWithDefault style "" Css_Value.Border.Style.show
      and color' =
        Belt.Option.mapWithDefault color "" Css_Value.Border.Color.show
      in
      Util.combine_styles [| width'; style'; color' |]
  end

  let make ?width ?style ?color (): 'a t =
    `border_top (Internal.make @@ Value.show (width, style, color))
end


module BorderBottom = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom } Border Bottom} *)

  type 'a t = [> Css_Property.border_bottom ] as 'a

  module Value = struct
    type t =
      Css_Value.Border.Width.t option *
      Css_Value.Border.Style.t option *
      Css_Value.Border.Color.t option

    let show ((width, style, color): t): string =
      let width' =
        Belt.Option.mapWithDefault width "" Css_Value.Border.Width.show
      and style' =
        Belt.Option.mapWithDefault style "" Css_Value.Border.Style.show
      and color' =
        Belt.Option.mapWithDefault color "" Css_Value.Border.Color.show
      in
      Util.combine_styles [| width'; style'; color' |]
  end

  let make ?width ?style ?color (): 'a t =
    `border_bottom (Internal.make @@ Value.show (width, style, color))
end


module BorderLeft = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left } Border Left} *)

  type 'a t = [> Css_Property.border_left ] as 'a

  module Value = struct
    type t =
      Css_Value.Border.Width.t option *
      Css_Value.Border.Style.t option *
      Css_Value.Border.Color.t option

    let show ((width, style, color): t): string =
      let width' =
        Belt.Option.mapWithDefault width "" Css_Value.Border.Width.show
      and style' =
        Belt.Option.mapWithDefault style "" Css_Value.Border.Style.show
      and color' =
        Belt.Option.mapWithDefault color "" Css_Value.Border.Color.show
      in
      Util.combine_styles [| width'; style'; color' |]
  end

  let make ?width ?style ?color (): 'a t =
    `border_left (Internal.make @@ Value.show (width, style, color))
end


module BorderRight = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right } Border Right} *)

  type 'a t = [> Css_Property.border_right ] as 'a

  module Value = struct
    type t =
      Css_Value.Border.Width.t option *
      Css_Value.Border.Style.t option *
      Css_Value.Border.Color.t option

    let show ((width, style, color): t): string =
      let width' =
        Belt.Option.mapWithDefault width "" Css_Value.Border.Width.show
      and style' =
        Belt.Option.mapWithDefault style "" Css_Value.Border.Style.show
      and color' =
        Belt.Option.mapWithDefault color "" Css_Value.Border.Color.show
      in
      Util.combine_styles [| width'; style'; color' |]
  end

  let make ?width ?style ?color (): 'a t =
    `border_right (Internal.make @@ Value.show (width, style, color))
end


module Border = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border } Border} *)

  type 'a t = [> Css_Property.border ] as 'a

  module Value = struct
    type t =
      Css_Value.Border.Width.t option *
      Css_Value.Border.Style.t option *
      Css_Value.Border.Color.t option

    let show ((width, style, color): t): string =
      let width' =
        Belt.Option.mapWithDefault width "" Css_Value.Border.Width.show
      and style' =
        Belt.Option.mapWithDefault style "" Css_Value.Border.Style.show
      and color' =
        Belt.Option.mapWithDefault color "" Css_Value.Border.Color.show
      in
      Util.combine_styles [| width'; style'; color' |]
  end

  let make ?width ?style ?color (): 'a t =
    `border (Internal.make @@ Value.show (width, style, color))
end


module BorderTopColor = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-color } Border top color} *)

  type 'a t = [> Css_Property.border_top_color ] as 'a

  let make value: 'a t =
    `border_top_color (Internal.make @@ Css_Value.Border.Color.show value)
end


module BorderRightColor = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-color } Border right color} *)

  type 'a t = [> Css_Property.border_right_color ] as 'a

  let make value: 'a t =
    `border_right_color (Internal.make @@ Css_Value.Border.Color.show value)
end


module BorderBottomColor = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-color } Border bottom color} *)

  type 'a t = [> Css_Property.border_bottom_color ] as 'a

  let make value: 'a t =
    `border_bottom_color (Internal.make @@ Css_Value.Border.Color.show value)
end


module BorderLeftColor = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-color } Border left color} *)

  type 'a t = [> Css_Property.border_left_color ] as 'a

  let make value: 'a t =
    `border_left_color (Internal.make @@ Css_Value.Border.Color.show value)
end


module BorderTopStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-style } Border top style} *)

  type 'a t = [> Css_Property.border_top_style ] as 'a

  let make value: 'a t =
    `border_top_style (Internal.make @@ Css_Value.Border.Style.show value)
end


module BorderRightStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-style } Border right style} *)

  type 'a t = [> Css_Property.border_right_style ] as 'a

  let make value: 'a t =
    `border_right_style (Internal.make @@ Css_Value.Border.Style.show value)
end


module BorderBottomStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-style } Border bottom style} *)

  type 'a t = [> Css_Property.border_bottom_style ] as 'a

  let make value: 'a t =
    `border_bottom_style (Internal.make @@ Css_Value.Border.Style.show value)
end


module BorderLeftStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-style } Border left style} *)

  type 'a t = [> Css_Property.border_left_style ] as 'a

  let make value: 'a t =
    `border_left_style (Internal.make @@ Css_Value.Border.Style.show value)
end


module BorderTopWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-width } Border top width} *)

  type 'a t = [> Css_Property.border_top_width ] as 'a

  let make value: 'a t =
    `border_top_width (Internal.make @@ Css_Value.Border.Width.show value)
end


module BorderRightWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-width } Border right width} *)

  type 'a t = [> Css_Property.border_right_width ] as 'a

  let make value: 'a t =
    `border_right_width (Internal.make @@ Css_Value.Border.Width.show value)
end


module BorderBottomWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-width } Border bottom width} *)

  type 'a t = [> Css_Property.border_bottom_width ] as 'a

  let make value: 'a t =
    `border_bottom_width (Internal.make @@ Css_Value.Border.Width.show value)
end


module BorderLeftWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-width } Border left width} *)

  type 'a t = [> Css_Property.border_left_width ] as 'a

  let make value: 'a t =
    `border_left_width (Internal.make @@ Css_Value.Border.Width.show value)
end


(* TODO: hide *)
module Bottom = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

  type 'a t = [> Css_Property.bottom ] as 'a

  let make value: 'a t =
    `bottom (Internal.make @@ Css_Value.LengthPercent.show value)
end


module CaptionSide = struct
  (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-caption-side } Caption side} *)

  type 'a t = [> Css_Property.caption_side ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `top | `bottom ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as value ->
      Css_Value.Global.show value
    | `top -> "top"
    | `bottom -> "bottom"
  end

  let make value: 'a t =
    `caption_side (Internal.make @@ Value.show value)
end


module Clear = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#flow-control } Clear} *)

  type 'a t = [> Css_Property.clear ] as 'a

  module Value = struct
    type value = [ `left | `right | `both | `none ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as value ->
      Css_Value.Global.show value
    | (`none | `left | `right | `both) as value -> 
      valueToJs value
  end

  let make value: 'a t = `clear (Internal.make @@ Value.show value)
end


module Clip = struct
  type 'a t = [> Css_Property.clip ] as 'a

  module Value = struct
    type value = [ Css_Value.Length.t | `auto ]

    let show_value: value -> string = function
    | ( `cm _  | `mm _   | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
      | `ex _  | `cap _  | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
      | `vh _  | `vi _   | `vb _ | `vmin _ | `vmax _
      ) as length ->
      Css_Value.Length.show length
    | `auto -> "auto"

    type t = [ Css_Value.Global.t | `rect of value * value * value * value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `rect (top, right, bottom, left) ->
      "rect("^
        show_value top    ^", "^
        show_value right  ^", "^
        show_value bottom ^", "^
        show_value left   ^
      ")"
  end

  let make value: 'a t = `clip (Internal.make @@ Value.show value)
end


module Color = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-color } Color} *)

  type 'a t = [> Css_Property.color ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Color.t ]

    let show: t -> string = function
    | ( `inherit_ | `initial | `unset ) as global ->
      Css_Value.Global.show global
    | ( `aliceblue | `antiquewhite | `aqua | `aquamarine | `azure | `beige
      | `bisque | `black | `blanchedalmond | `blue | `blueviolet | `brown
      | `burlywood | `cadetblue | `chartreuse | `chocolate | `coral
      | `cornflowerblue | `cornsilk | `crimson | `cyan | `darkblue | `darkcyan
      | `darkgoldenrod | `darkgray | `darkgreen | `darkgrey | `darkkhaki
      | `darkmagenta | `darkolivegreen | `darkorange | `darkorchid | `darkred
      | `darksalmon | `darkseagreen | `darkslateblue | `darkslategray
      | `darkslategrey | `darkturquoise | `darkviolet | `deeppink | `deepskyblue
      | `dimgray | `dimgrey | `dodgerblue | `firebrick | `floralwhite
      | `forestgreen | `fuchsia | `gainsboro | `ghostwhite | `gold | `goldenrod
      | `gray | `green | `greenyellow | `grey | `honeydew | `hotpink | `indianred
      | `indigo | `ivory | `khaki | `lavender | `lavenderblush | `lawngreen
      | `lemonchiffon | `lightblue | `lightcoral | `lightcyan
      | `lightgoldenrodyellow | `lightgray | `lightgreen | `lightgrey
      | `lightpink | `lightsalmon | `lightseagreen | `lightskyblue
      | `lightslategray | `lightslategrey | `lightsteelblue | `lightyellow
      | `lime | `limegreen | `linen | `magenta | `maroon | `mediumaquamarine
      | `mediumblue | `mediumorchid | `mediumpurple | `mediumseagreen
      | `mediumslateblue | `mediumspringgreen | `mediumturquoise
      | `mediumvioletred | `midnightblue | `mintcream | `mistyrose | `moccasin
      | `navajowhite | `navy | `oldlace | `olive | `olivedrab | `orange
      | `orangered | `orchid | `palegoldenrod | `palegreen | `paleturquoise
      | `palevioletred | `papayawhip | `peachpuff | `peru | `pink | `plum
      | `powderblue | `purple | `red | `rosybrown | `royalblue | `saddlebrown
      | `salmon | `sandybrown | `seagreen | `seashell | `sienna | `silver
      | `skyblue | `slateblue | `slategray | `slategrey | `snow | `springgreen
      | `steelblue | `tan | `teal | `thistle | `tomato | `turquoise | `violet
      | `wheat | `white | `whitesmoke | `yellow | `yellowgreen
      | `rgb _ | `rgba _ | `hsl _ | `hsla _
      ) as color ->
      Css_Value.Color.show color
  end

  let make value: 'a t = `color (Internal.make @@ Value.show value)
end


module CueAfter = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-after } Cue after} *)

  type 'a t = [> Css_Property.cue_after ] as 'a

  let make value: 'a t =
    `cue_after (Internal.make @@ Css_Value.UriOrNone.show value)
end


module CueBefore = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-before } Cue before} *)

  type 'a t = [> Css_Property.cue_before ] as 'a

  let make value: 'a t =
    `cue_before (Internal.make @@ Css_Value.UriOrNone.show value)
end


module Cue = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue } Cue} *)

  type 'a t = [> Css_Property.cue ] as 'a

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `cue of Css_Value.UriOrNone.t * Css_Value.UriOrNone.t ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `cue (cue_before, cue_after) ->
      Css_Value.UriOrNone.show cue_before ^" "^
      Css_Value.UriOrNone.show cue_after
  end

  let make value: 'a t =
    `cue (Internal.make @@ Value.show value)
end


module Cursor = struct
  (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-cursor} Cursor} *)

  type 'a t = [> Css_Property.cursor ] as 'a

  module Value = struct
    type value' =
      [
      | `auto | `crosshair | `default | `pointer | `move | `e_resize | `ne_resize
      | `nw_resize | `n_resize | `se_resize | `sw_resize | `s_resize | `w_resize
      | `text | `wait | `help | `progress
      ]
      [@@bs.deriving jsConverter]

    type value = [ Css_Value.Global.t | value' ]

    type t = Css_Value.Uri.t list * value 

    let show ((uris, value): t): string =
      let value' =
        match value with
        | ( `inherit_ | `initial | `unset ) as value ->
          Css_Value.Global.show value
        | ( `auto | `crosshair | `default | `pointer | `move | `e_resize | `ne_resize
          | `nw_resize | `n_resize | `se_resize | `sw_resize | `s_resize | `w_resize
          | `text | `wait | `help | `progress
          ) as value ->
          value'ToJs value |> Util.underscore_to_dash
      and uris' =
        uris
        |. Belt.List.map (fun e -> Css_Value.Uri.show e ^", ")
        |> Js.List.toVector
        |> Js.Array.joinWith ""
      in
      uris' ^ value' |> Js.String.trim
  end

  let make ?(uris = []) value: 'a t =
    `cursor (Internal.make @@ Value.show (uris, value))
end


module Direction = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-direction} Direction} *)

  type 'a t = [> Css_Property.direction ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `rtl | `ltr ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `rtl -> "rtl"
    | `ltr -> "ltr"
  end

  let make value: 'a t = `direction (Internal.make @@ Value.show value)
end


module Elevation = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-elevation} Elevation} *)

  type 'a t = [> Css_Property.elevation ] as 'a

  module Value = struct
    type value =
      [ `below | `level | `above | `higher | `lower ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | Css_Value.Angle.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `deg _ | `grad _ | `rad _ | `turn _ ) as angle ->
      Css_Value.Angle.show angle
    | (`below | `level | `above | `higher | `lower) as value ->
      valueToJs value
  end

  let make value: 'a t = `elevation (Internal.make @@ Value.show value)
end


module EmptyCells = struct
  (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-empty-cells} Empty cells} *)

  type 'a t = [> Css_Property.empty_cells ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `show | `hide ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `show -> "show"
    | `hide -> "hide"
  end

  let make value: 'a t = `empty_cells (Internal.make @@ Value.show value)
end


module Flex = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-property} Flex} *)

  type 'a t = [> Css_Property.flex' ] as 'a

  module Value = struct
    type t =
      [ Css_Value.Global.t | `none
      | `basis of Css_Value.LengthPercent.t
      | `flex of int * int option * Css_Value.LengthPercent.t option ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `none -> "none"
    | `basis basis ->
      Css_Value.LengthPercent.show basis
    | `flex (grow, shrink, basis) ->
      Js.Int.toString grow ^
      (shrink
      |. Belt.Option.mapWithDefault "" (fun e -> " "^ Js.Int.toString e)) ^
      (basis
      |. Belt.Option.mapWithDefault ""
         (fun e -> " "^ Css_Value.LengthPercent.show e))
  end

  let make value: 'a t = `flex (Internal.make @@ Value.show value)
end


module FlexBasis = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-basis-property} Flex-basis} *)

  type 'a t = [> Css_Property.flex_basis ] as 'a

  let make value: 'a t =
    `flex_basis (Internal.make @@ Css_Value.LengthPercent.show value)
end


module FlexDirection = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-direction-property} Flex-direction} *)

  type 'a t = [> Css_Property.flex_direction ] as 'a

  let make value: 'a t =
    `flex_direction (Internal.make @@ Css_Value.Flex.Direction.show value)
end


module FlexFlow = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-flow-property} Flex-flow} *)

  type 'a t = [> Css_Property.flex_flow ] as 'a

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `flow of Css_Value.Flex.Direction.t * Css_Value.Flex.Wrap.t ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `flow (direction, wrap) ->
      Css_Value.Flex.Direction.show direction ^" "^
      Css_Value.Flex.Wrap.show wrap
  end

  let make value: 'a t = `flex_flow (Internal.make @@ Value.show value)
end


module FlexGrow = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-grow-property} Flex-grow} *)

  type 'a t = [> Css_Property.flex_grow ] as 'a

  let make value: 'a t = `flex_grow (Internal.make @@ Js.Int.toString value)
end


module FlexShrink = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-shrink-property} Flex-shrink} *)

  type 'a t = [> Css_Property.flex_shrink ] as 'a

  let make value: 'a t = `flex_shrink (Internal.make @@ Js.Int.toString value)
end


module FlexWrap = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-wrap-property} Flex-wrap} *)

  type 'a t = [> Css_Property.flex_wrap ] as 'a

  let make value: 'a t =
    `flex_wrap (Internal.make @@ Css_Value.Flex.Wrap.show value)
end


module Float = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-float} Float} *)

  type 'a t = [> Css_Property.float_ ] as 'a

  module Value = struct
    type value = [ `left | `right | `none ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as value ->
      Css_Value.Global.show value
    | (`none | `left | `right ) as value -> 
      valueToJs value
  end

  let make value: 'a t = `float (Internal.make @@ Value.show value)
end


module FontFamily = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font family} *)

  type 'a t = [> Css_Property.font_family ] as 'a

  let make value: 'a t =
    `font_family (Internal.make @@ Css_Value.Font.Family.show value)
end


module FontSize = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font size} *)

  type 'a t = [> Css_Property.font_size ] as 'a

  let make value: 'a t =
    `font_size (Internal.make @@ Css_Value.Font.Size.show value)
end


module FontStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font style} *)

  type 'a t = [> Css_Property.font_style ] as 'a

  let make value: 'a t =
    `font_style (Internal.make @@ Css_Value.Font.Style.show value)
end


module FontVariant = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font variant} *)

  type 'a t = [> Css_Property.font_variant ] as 'a

  let make value: 'a t =
    `font_variant (Internal.make @@ Css_Value.Font.Variant.show value)
end


module FontWeight = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

  type 'a t = [> Css_Property.font_weight ] as 'a

  let make value: 'a t =
    `font_weight (Internal.make @@ Css_Value.Font.Weight.show value)
end


module Font = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-shorthand } Font} *)

  type 'a t = [> Css_Property.font ] as 'a

  module Value = struct
    type value =
      [
      | `caption | `icon | `menu | `message_box [@bs.as "message-box"]
      | `small_caption [@bs.as "small-caption"]
      | `status_bar [@bs.as "status-bar"]
      ]
      [@@bs.deriving jsConverter]

    type value' = [ Css_Value.Global.t | value ]

    type font_property =
      Css_Value.Font.Style.t option *
      Css_Value.Font.Variant.t option *
      Css_Value.Font.Weight.t option

    type font_size = Css_Value.Font.Size.t * Css_Value.LineHeight.t option

    type t = [ Css_Value.Global.t | `font of font_property * font_size | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as value ->
      Css_Value.Global.show value
    | `font ((style, variant, weight), (size, line_height)) ->
      let style' =
        Belt.Option.mapWithDefault style "" Css_Value.Font.Style.show
      and variant' =
        Belt.Option.mapWithDefault variant "" Css_Value.Font.Variant.show
      and weight' =
        Belt.Option.mapWithDefault weight "" Css_Value.Font.Weight.show
      and size' = Css_Value.Font.Size.show size
      and line_height' =
        Belt.Option.mapWithDefault line_height ""
          (fun l -> "/" ^ Css_Value.LineHeight.show l)
      in
      Util.combine_styles [| style'; variant'; weight'; size' ^ line_height' |]
    | ( `caption | `icon | `menu | `message_box | `small_caption | `status_bar
      ) as value ->
      valueToJs value
  end

  let make
    ?style ?variant ?weight ?size ?line_height
    ?(value:Value.value' = `inherit_)
    (): 'a t =

    let font =
      match size with
      | Some size' ->
        Internal.make @@ Value.show
              @@ `font ((style, variant, weight), (size', line_height))
      | None ->
        Internal.make @@ Value.show (value :> Value.t)
    in
    `font font
end


module Height = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

  type 'a t = [> Css_Property.height ] as 'a

  let make value: 'a t =
    `height (Internal.make @@ Css_Value.LengthPercent.show value)
end


module JustifyContent = struct
  (** {{: https://www.w3.org/TR/css-flexbox-1/#justify-content-property} Justify-content} *)

  type 'a t = [> Css_Property.justify_content ] as 'a

  module Value = struct
    type value =
      [ `flex_start [@bs.as "flex-start"] | `flex_end [@bs.as "flex-end"]
      | `center | `space_between [@bs.as "space-between"]
      | `space_around [@bs.as "space-around"]
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `flex_start | `flex_end | `center | `space_between | `space_around
      ) as value ->
      valueToJs value
  end

  let make value: 'a t = `justify_content (Internal.make @@ Value.show value)
end


(* TODO: hide *)
module Left = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

  type 'a t = [> Css_Property.left ] as 'a

  let make value: 'a t =
    `left (Internal.make @@ Css_Value.LengthPercent.show value)
end


module LetterSpacing = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter spacing} *)

  type 'a t = [> Css_Property.letter_spacing ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as value ->
      Css_Value.Global.show value
    | ( `cm _  | `mm _   | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
      | `ex _  | `cap _  | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
      | `vh _  | `vi _   | `vb _ | `vmin _ | `vmax _
      ) as length ->
      Css_Value.Length.show length
    | `normal -> "normal"
  end

  let make value: 'a t = `letter_spacing (Internal.make @@ Value.show value)
end


module LineHeight = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#leading } Leading} *)

  type 'a t = [> Css_Property.line_height ] as 'a

  let make value: 'a t =
    `line_height (Internal.make @@ Css_Value.LineHeight.show value)
end


module ListStyleImage = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-image} *)

  type 'a t = [> Css_Property.list_style_image ] as 'a

  let make value: 'a t =
    `list_style_image (Internal.make @@ Css_Value.ListStyle.Image.show value)
end


module ListStylePosition = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-position} *)

  type 'a t = [> Css_Property.list_style_position ] as 'a

  let make value: 'a t =
    `list_style_position (Internal.make @@ Css_Value.ListStyle.Position.show value)
end


module ListStyleType = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-type} *)

  type 'a t = [> Css_Property.list_style_type ] as 'a

  let make value: 'a t =
    `list_style_type (Internal.make @@ Css_Value.ListStyle.Type.show value)
end


module ListStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#list_style } List style} *)

  type 'a t = [> Css_Property.list_style ] as 'a

  module Value = struct
    type t =
      Css_Value.ListStyle.Type.t option *
      Css_Value.ListStyle.Position.t option *
      Css_Value.ListStyle.Image.t option

    let show ((type_, position, image): t): string =
      let type_' =
        Belt.Option.mapWithDefault type_ "" Css_Value.ListStyle.Type.show
      and position' =
        Belt.Option.mapWithDefault position "" Css_Value.ListStyle.Position.show
      and image' =
        Belt.Option.mapWithDefault image "" Css_Value.ListStyle.Image.show
      in
      Util.combine_styles [| type_'; position'; image' |]
  end

  let make ?type_ ?position ?image (): 'a t =
    `list_style (Internal.make @@ Value.show (type_, position, image))
end


module Margin = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin } Margin} *)

  type 'a t = [> Css_Property.margin ] as 'a

  module Value = struct
    type t =
      [ Css_Value.LengthPercent.t
      | `margin of Css_Value.LengthPercent.t *
                   Css_Value.LengthPercent.t *
                   Css_Value.LengthPercent.t *
                   Css_Value.LengthPercent.t ]

    let show: t -> string = function
    | ( `inherit_ | `initial   | `unset
      | `cm _  | `mm _   | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
      | `ex _  | `cap _  | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
      | `vh _  | `vi _   | `vb _ | `vmin _ | `vmax _
      | `percent _ | `auto ) as value ->
      Css_Value.LengthPercent.show value
    | `margin (top, right, bottom, left) ->
      Css_Value.LengthPercent.show top    ^" "^
      Css_Value.LengthPercent.show right  ^" "^
      Css_Value.LengthPercent.show bottom ^" "^
      Css_Value.LengthPercent.show left
  end

  let make value: 'a t = `margin (Internal.make @@ Value.show value)
end


module MarginTop = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-top } Margin-top} *)

  type 'a t = [> Css_Property.margin_top ] as 'a

  let make value: 'a t =
    `margin_top (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginRight = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-right } Margin-right} *)

  type 'a t = [> Css_Property.margin_right ] as 'a

  let make value: 'a t =
    `margin_right (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginBottom = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-bottom } Margin-bottom} *)

  type 'a t = [> Css_Property.margin_bottom ] as 'a

  let make value: 'a t =
    `margin_bottom (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginLeft = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-left } Margin-left} *)

  type 'a t = [> Css_Property.margin_left ] as 'a

  let make value: 'a t =
    `margin_left (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MaxHeight = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-height} Max-height} *)

  type 'a t = [> Css_Property.max_height ] as 'a

  let make value: 'a t =
    `max_height (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MaxWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-width} Max-width} *)

  type 'a t = [> Css_Property.max_width ] as 'a

  let make value: 'a t =
    `max_width (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MinHeight = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-height} Min-height} *)

  type 'a t = [> Css_Property.min_height ] as 'a

  let make value: 'a t =
    `min_height (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MinWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-width} Min-width} *)

  type 'a t = [> Css_Property.min_width ] as 'a

  let make value: 'a t =
    `min_width (Internal.make @@ Css_Value.LengthPercent.show value)
end


module Order = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-order } Order} *)

  type 'a t = [> Css_Property.order ] as 'a

  let make value: 'a t = `order (Internal.make @@ Js.Int.toString value)
end


module Orphans = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-orphans } Orphans} *)

  type 'a t = [> Css_Property.orphans ] as 'a

  let make value: 'a t =
    `orphans (Internal.make @@ Css_Value.BreakInside.show value)
end


module OutlineColor = struct
  (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-color} Outline color} *)

  type 'a t = [> Css_Property.outline_color ] as 'a

  let make value: 'a t =
    `outline_color (Internal.make @@ Css_Value.Outline.Color.show value)
end


module OutlineStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-style} Outline style} *)

  type 'a t = [> Css_Property.outline_style ] as 'a

  let make value: 'a t =
    `outline_style (Internal.make @@ Css_Value.Outline.Style.show value)
end


module OutlineWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-width} Outline width} *)

  type 'a t = [> Css_Property.outline_width ] as 'a

  let make value: 'a t =
    `outline_width (Internal.make @@ Css_Value.Outline.Width.show value)
end


module Outline = struct
  (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline} Outline} *)

  type 'a t = [> Css_Property.outline ] as 'a

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `outline of Css_Value.Outline.Color.t *
                    Css_Value.Outline.Style.t *
                    Css_Value.Outline.Width.t
      ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `outline (color, style, width) ->
      Css_Value.Outline.Color.show color ^" "^
      Css_Value.Outline.Style.show style ^" "^
      Css_Value.Outline.Width.show width
  end

  let make value: 'a t = `outline (Internal.make @@ Value.show value)
end


module Overflow = struct
  (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-overflow} Overflow} *)

  type 'a t = [> Css_Property.overflow ] as 'a

  module Value = struct
    type value =
      [ `visible | `hidden | `scroll | `auto ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`visible | `hidden | `scroll | `auto) as value ->
      valueToJs value
  end

  let make value: 'a t = `overflow (Internal.make @@ Value.show value)
end


module PaddingTop = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-top} Padding-top} *)

  type 'a t = [> Css_Property.padding_top ] as 'a

  let make value: 'a t =
    `padding_top (Internal.make @@ Css_Value.LengthPercent.show value)
end


module PaddingRight = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-right} Padding-right} *)

  type 'a t = [> Css_Property.padding_right ] as 'a

  let make value: 'a t =
    `padding_right (Internal.make @@ Css_Value.LengthPercent.show value)
end


module PaddingBottom = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-bottom} Padding-bottom} *)

  type 'a t = [> Css_Property.padding_bottom ] as 'a

  let make value: 'a t =
    `padding_bottom (Internal.make @@ Css_Value.LengthPercent.show value)
end


module PaddingLeft = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-left} Padding-left} *)

  type 'a t = [> Css_Property.padding_left ] as 'a

  let make value: 'a t =
    `padding_left (Internal.make @@ Css_Value.LengthPercent.show value)
end


module Padding = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding } Padding} *)

  type 'a t = [> Css_Property.padding ] as 'a

  module Value = struct
    type t =
      [ Css_Value.LengthPercent.t
      | `padding of Css_Value.LengthPercent.t *
                    Css_Value.LengthPercent.t *
                    Css_Value.LengthPercent.t *
                    Css_Value.LengthPercent.t ]

    let show: t -> string = function
    | ( `inherit_ | `initial   | `unset
      | `cm _  | `mm _   | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
      | `ex _  | `cap _  | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
      | `vh _  | `vi _   | `vb _ | `vmin _ | `vmax _
      | `percent _ | `auto ) as value ->
      Css_Value.LengthPercent.show value
    | `padding (top, right, bottom, left) ->
      Css_Value.LengthPercent.show top    ^" "^
      Css_Value.LengthPercent.show right  ^" "^
      Css_Value.LengthPercent.show bottom ^" "^
      Css_Value.LengthPercent.show left
  end

  let make value: 'a t = `padding (Internal.make @@ Value.show value)
end


module PageBreakAfter = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-after } Page break after} *)

  type 'a t = [> Css_Property.page_break_after ] as 'a

  let make value: 'a t =
    `page_break_after (Internal.make @@ Css_Value.PageBreak.show value)
end


module PageBreakBefore = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-before } Page break before} *)

  type 'a t = [> Css_Property.page_break_before ] as 'a

  let make value: 'a t =
    `page_break_before (Internal.make @@ Css_Value.PageBreak.show value)
end


module PageBreakInside = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-inside } Page break inside} *)

  type 'a t = [> Css_Property.page_break_inside ] as 'a

  let make (value: Css_Value.PageBreak.inside): 'a t =
    `page_break_inside
    (Internal.make @@ Css_Value.PageBreak.show  (value :> Css_Value.PageBreak.t))
end


module PauseAfter = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-after} Pause after} *)

  type 'a t = [> Css_Property.pause_after ] as 'a

  let make value: 'a t =
    `pause_after (Internal.make @@ Css_Value.TimePercent.show value)
end


module PauseBefore = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-before} Pause before} *)

  type 'a t = [> Css_Property.pause_before ] as 'a

  let make value: 'a t =
    `pause_before (Internal.make @@ Css_Value.TimePercent.show value)
end


module Pause = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause} Pause} *)

  type 'a t = [> Css_Property.pause ] as 'a

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `pause of Css_Value.TimePercent.t * Css_Value.TimePercent.t ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `pause (pause_before, pause_after) ->
      Css_Value.TimePercent.show pause_before ^" "^
      Css_Value.TimePercent.show pause_after
  end

  let make value: 'a t = `pause (Internal.make @@ Value.show value)
end


module PitchRange = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch-range} Pitch range} *)

  type 'a t = [> Css_Property.pitch_range ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `range of float ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `range range ->
      Js.Float.toString range
  end

  let make value: 'a t = `pitch_range (Internal.make @@ Value.show value)
end


module Pitch = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch} Pitch} *)

  type 'a t = [> Css_Property.pitch ] as 'a

  module Value = struct
    type value =
      [ `x_low [@bs.as "x-low"] | `low | `medium
      | `high | `x_high [@bs.as "x-high"] ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | Css_Value.Frequency.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `Hz _ | `kHz _ ) as frequency ->
      Css_Value.Frequency.show frequency
    | (`x_low | `low | `medium | `high | `x_high) as value ->
      valueToJs value
  end

  let make value: 'a t = `pitch (Internal.make @@ Value.show value)
end


module PlayDuring = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-play-during} Play during} *)

  type 'a t = [> Css_Property.play_during ] as 'a

  module Value = struct
    type value = [ `mix | `repeat ] [@@bs.deriving jsConverter]

    type t =
      [ Css_Value.Global.t | Css_Value.Uri.t | `sound of Css_Value.Uri.t * value
      | `auto | `none ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `uri _ as uri ->
      Css_Value.Uri.show uri
    | `sound (uri, value) ->
      Css_Value.Uri.show uri ^" "^ valueToJs value
    | `auto -> "auto"
    | `none -> "none"
  end

  let make value: 'a t = `play_during (Internal.make @@ Value.show value)
end


module Richness = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-richness} Richness} *)

  type 'a t = [> Css_Property.richness ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `richness of float ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `richness value ->
      Js.Float.toString value
  end

  let make value: 'a t = `richness (Internal.make @@ Value.show value)
end


(* TODO: hide *)
module Right = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-right} Right} *)

  type 'a t = [> Css_Property.right ] as 'a

  let make value: 'a t =
    `right (Internal.make @@ Css_Value.LengthPercent.show value)
end


module SpeakHeader = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-header} Speak header} *)

  type 'a t = [> Css_Property.speak_header ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `once | `always ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `once -> "once"
    | `always -> "always"
  end

  let make value: 'a t = `speak_header (Internal.make @@ Value.show value)
end


module SpeakNumeral = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-numeral} Speak numeral} *)

  type 'a t = [> Css_Property.speak_numeral ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `digits | `continuous ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `digits -> "digits"
    | `continuous -> "continuous"
  end

  let make value: 'a t = `speak_numeral (Internal.make @@ Value.show value)
end


module SpeakPunctuation = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-punctuation} Speak punctuation} *)

  type 'a t = [> Css_Property.speak_punctuation ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `code | `none ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `code -> "code"
    | `none -> "none"
  end

  let make value: 'a t = `speak_punctuation (Internal.make @@ Value.show value)
end


module Speak = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak} Speak} *)

  type 'a t = [> Css_Property.speak ] as 'a

  module Value = struct
    type value =
      [ `normal | `none | `spell_out [@bs.as "spell-out"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`normal | `none | `spell_out) as value ->
      valueToJs value
  end

  let make value: 'a t = `speak (Internal.make @@ Value.show value)
end


module SpeechRate = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speech-rate} Speech rate} *)

  type 'a t = [> Css_Property.speech_rate ] as 'a

  module Value = struct
    type value =
      [ `x_slow [@bs.as "x-slow"] | `slow | `medium
      | `fast | `x_fast [@bs.as "x-fast"] | `faster | `slower ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value | `rate of float ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`x_slow | `slow | `medium | `fast | `x_fast | `faster | `slower) as value ->
      valueToJs value
    | `rate rate ->
      Js.Float.toString rate
  end

  let make value: 'a t = `speech_rate (Internal.make @@ Value.show value)
end


module Stress = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-stress} Stress} *)

  type 'a t = [> Css_Property.stress ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `stress of float ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `stress stress ->
      Js.Float.toString stress
  end

  let make value: 'a t = `stress (Internal.make @@ Value.show value)
end


module TableLayout = struct
  (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-table-layout} Table layout} *)

  type 'a t = [> Css_Property.table_layout ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | `auto | `fixed ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | `auto -> "auto"
    | `fixed -> "fixed"
  end

  let make value: 'a t = `table_layout (Internal.make @@ Value.show value)
end


module TextAlign = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text-align } *)

  type 'a t = [> Css_Property.text_align ] as 'a

  module Value = struct
    type value =
      [ `left | `right | `center | `justify ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]
     
    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`left | `right | `center | `justify) as value ->
      valueToJs value
  end

  let make value: 'a t = `text_align (Internal.make @@ Value.show value)
end


module TextDecoration = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-decoration} Text decoration} *)

  type 'a t = [> Css_Property.text_decoration ] as 'a

  module Value = struct
    type value =
      [ `none | `underline | `overline | `line_through [@bs.as "line-through"]
      | `blink ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]
     
    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`none | `underline | `overline | `line_through | `blink) as value ->
      valueToJs value
  end

  let make value: 'a t = `text_decoration (Internal.make @@ Value.show value)
end


module TextIndent = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-indent} Text indent} *)

  type 'a t = [> Css_Property.text_indent ] as 'a

  let make value: 'a t =
    `text_indent (Internal.make @@ Css_Value.LengthPercent.show value)
end


module TextTransform = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-transform} Text transform} *)

  type 'a t = [> Css_Property.text_transform ] as 'a

  module Value = struct
    type value =
      [ `capitalize | `uppercase | `lowercase | `none ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`capitalize | `uppercase | `lowercase | `none) as value ->
      valueToJs value
  end

  let make value: 'a t = `text_transform (Internal.make @@ Value.show value)
end


(* TODO: hide *)
module Top = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-top} Top} *)

  type 'a t = [> Css_Property.top ] as 'a

  let make value: 'a t =
    `top (Internal.make @@ Css_Value.LengthPercent.show value)
end


module UnicodeBidi = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-unicode-bidi} Unicode bidi} *)

  type 'a t = [> Css_Property.unicode_bidi ] as 'a

  module Value = struct
    type value =
      [ `normal | `embed | `bidi_override [@bs.as "bidi-override"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`normal | `embed | `bidi_override) as value ->
      valueToJs value
  end

  let make value: 'a t = `unicode_bidi (Internal.make @@ Value.show value)
end


module VerticalAlign = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical-align} *)

  type 'a t = [> Css_Property.vertical_align ] as 'a

  module Value = struct
    (** {{: https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align#Values_for_inline_elements } Values} *)

    module ParentRelative = struct
      (** These values vertically align the element relative to its parent element *)

      type value =
        [
        | `baseline | `sub | `super | `text_top [@bs.as "text-top"]
        | `text_bottom [@bs.as "text-bottom"] | `middle
        ]
        [@@bs.deriving jsConverter]

      type t =
        [
        | `baseline | `sub | `super | `text_top | `text_bottom | `middle
        | Css_Value.Length.t | Css_Value.Percent.t
        ]

      let show: t -> string = function
      | ( `baseline | `sub | `super | `text_top | `text_bottom | `middle ) as t ->
        valueToJs t
      | ( `cm _ | `mm _  | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
        | `ex _ | `cap _ | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
        | `vh _ | `vi _  | `vb _ | `vmin _ | `vmax _
        ) as length ->
        Css_Value.Length.show length
      | `percent _ as percent ->
        Css_Value.Percent.show percent
    end

    module LineRelative = struct
      (** The following values vertically align the element relative to the entire line *)

      type t = [ `top | `bottom ] [@@bs.deriving jsConverter]

      let show = tToJs
    end
  end

  type value =
    [ Css_Value.Global.t | Value.ParentRelative.t | Value.LineRelative.t ]

  let show: value -> string = function
  | ( `baseline | `sub | `super | `text_top | `text_bottom | `middle
    | `cm _ | `mm _  | `Q _  | `in_ _  | `pt _   | `pc _ | `px _  | `em _
    | `ex _ | `cap _ | `ch _ | `ic _   | `rem _  | `ih _ | `rlh _ | `vw _
    | `vh _ | `vi _  | `vb _ | `vmin _ | `vmax _ | `percent _
    ) as parent_relative ->
    Value.ParentRelative.show parent_relative
  | ( `top | `bottom ) as line_relative ->
    Value.LineRelative.show line_relative
  | ( `inherit_ | `initial | `unset ) as global ->
    Css_Value.Global.show global

  let make value: 'a t = `vertical_align (Internal.make @@ show value)
end


module Visibility = struct
  (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-visibility} Visibility} *)

  type 'a t = [> Css_Property.visibility ] as 'a

  module Value = struct
    type value =
      [ `visible | `hidden | `collapse ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`visible | `hidden | `collapse) as value ->
      valueToJs value
  end

  let make value: 'a t = `visibility (Internal.make @@ Value.show value)
end


module VoiceFamily = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-voice-family} Voice family} *)

  type 'a t = [> Css_Property.voice_family ] as 'a

  module Value = struct
    type generic = [ `male | `female | `child ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | generic | `specific of string ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`male | `female | `child) as generic ->
      genericToJs generic
    | `specific value when value = "" ->
      "inherit"
    | `specific value ->
      Js.Json.stringifyAny value |> Js.Option.getExn
  end

  let make value: 'a t = `voice_family (Internal.make @@ Value.show value)
end


module Volume = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-volume} Volume} *)

  type 'a t = [> Css_Property.volume ] as 'a

  module Value = struct
    type value =
      [ `silent | `x_soft [@bs.as "x-soft"] | `soft
      | `medium | `loud | `x_loud [@bs.as "x-loud"] ]
      [@@bs.deriving jsConverter]

    type t =
      [ Css_Value.Global.t | Css_Value.Percent.t | `volume of float | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`silent | `x_soft | `soft | `medium | `loud | `x_loud) as value ->
      valueToJs value
    | `percent _ as percent ->
      Css_Value.Percent.show percent
    | `volume value ->
      Js.Float.toString value
  end

  let make value: 'a t = `volume (Internal.make @@ Value.show value)
end


module WhiteSpace = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-white-space} White space} *)

  type 'a t = [> Css_Property.white_space ] as 'a

  module Value = struct
    type value =
      [ `normal | `pre | `nowrap
      | `pre_wrap [@bs.as "pre-wrap"] | `pre_line [@bs.as "pre-line"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`normal | `pre | `nowrap | `pre_wrap | `pre_line) as value ->
      valueToJs value
  end

  let make value: 'a t = `white_space (Internal.make @@ Value.show value)
end


module Widows = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-widows } Widows} *)

  type 'a t = [> Css_Property.widows ] as 'a

  let make value: 'a t =
    `widows (Internal.make @@ Css_Value.BreakInside.show value)
end


module Width = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-width} Width} *)

  type 'a t = [> Css_Property.width ] as 'a

  let make value: 'a t =
    `width (Internal.make @@ Css_Value.LengthPercent.show value)
end


module WordSpacing = struct
  (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-word-spacing} Word-spacing} *)

  type 'a t = [> Css_Property.word_spacing ] as 'a

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | ( `cm _ | `mm _  | `Q _  | `in_ _  | `pt _  | `pc _ | `px _  | `em _
      | `ex _ | `cap _ | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _ | `vw _
      | `vh _ | `vi _  | `vb _ | `vmin _ | `vmax _
      ) as length ->
      Css_Value.Length.show length
    | `normal -> "normal"
  end

  let make value: 'a t = `word_spacing (Internal.make @@ Value.show value)
end


(* TODO: hide *)
module ZIndex = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-z-index} Z-index} *)

  type 'a t = [> Css_Property.z_index ] as 'a

  let make value: 'a t = `z_index (Internal.make @@ Js.Int.toString value)
end


module Position = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-position} Position}
   *
   * - Position is treated specially, the values it takes are rules that apply
   *   only to that position type.
   * - A few rules apply only to positions that aren't fixed (default)
   * - The position is independent of the display type
   *)

  type 'a t = [> Css_Property.position ] as 'a

  module Value = struct
    type value =
      [ `static | `absolute | `relative | `fixed ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`static | `absolute | `relative | `fixed) as value ->
      valueToJs value
  end

  (* TODO: hide *)
  let make value: 'a t = `position (Internal.make @@ Value.show value)

  module Convert = struct
    let display: Css_Property.Position.t -> Css_Property.display Js.Dict.t =
    function
    | `static static     -> Obj.magic static
    | `absolute absolute -> Obj.magic absolute
    | `relative relative -> Obj.magic relative
    | `fixed fixed       -> Obj.magic fixed

    let styles top right bottom left z_index: Css_Property.display Js.Dict.t =
      let styles' =
        [ ("top", Belt.Option.map top Top.make)
        ; ("right", Belt.Option.map right Right.make)
        ; ("bottom", Belt.Option.map bottom Bottom.make)
        ; ("left", Belt.Option.map left Left.make) ]
        |. Belt.List.keep (fun (_, v) -> Js.Option.isSome v)
        |. Belt.List.map (fun (k, v) -> (k, Js.Option.getExn v))
        |> Js.Dict.fromList
      in
      match z_index with
      | Some z_index ->
        Js.Dict.set styles' "z-index" (ZIndex.make z_index);
        styles'
      | _ -> styles'
  end

  module Static = struct
    type 'a t = [> Css_Property.Position.static ] as 'a

    let make (): 'a t =
      `static ([("position", make `static)] |> Js.Dict.fromList |> Internal.static)
  end

  module Absolute = struct
    type 'a t = [> Css_Property.Position.absolute ] as 'a

    let make
      ?(top: Css_Value.LengthPercent.t option)
      ?(right: Css_Value.LengthPercent.t option)
      ?(bottom: Css_Value.LengthPercent.t option)
      ?(left: Css_Value.LengthPercent.t option)
      ?(z_index: int option) (): 'a t =
      `absolute (
        Util.merge
          (Js.Dict.fromList [("position", make `absolute)])
          (Convert.styles top right bottom left z_index)
        |> Internal.absolute
      )
  end

  module Relative = struct
    type 'a t = [> Css_Property.Position.relative ] as 'a

    let make
      ?(top: Css_Value.LengthPercent.t option)
      ?(right: Css_Value.LengthPercent.t option)
      ?(bottom: Css_Value.LengthPercent.t option)
      ?(left: Css_Value.LengthPercent.t option)
      ?(z_index: int option) (): 'a t =
      `relative (
        Util.merge
          (Js.Dict.fromList [("position", make `relative)])
          (Convert.styles top right bottom left z_index)
        |> Internal.relative
      )
  end

  module Fixed = struct
    type 'a t = [> Css_Property.Position.fixed ] as 'a

    let make
      ?(top: Css_Value.LengthPercent.t option)
      ?(right: Css_Value.LengthPercent.t option)
      ?(bottom: Css_Value.LengthPercent.t option)
      ?(left: Css_Value.LengthPercent.t option)
      ?(z_index: int option) (): 'a t =
      `fixed (
        Util.merge
          (Js.Dict.fromList [("position", make `fixed)])
          (Convert.styles top right bottom left z_index)
        |> Internal.fixed
      )
  end
end

