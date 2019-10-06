module Internal = struct
  external make: string -> _ Css_Property.t = "%identity"
end


module AnimationName = struct
  type +'a t = ([> Css_Property.animation_name ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `none | `name of string ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `none -> "none"
    | `name name -> Js.Json.stringify (Js.Json.string name)
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AnimationDuration = struct
  type +'a t = ([> Css_Property.animation_duration ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Time.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Time.t as time ->
      Css_Value.Time.show time
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AnimationTimingFunction = struct
  type +'a t = ([> Css_Property.animation_timing_function ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.TimingFunction.show value
end


module AnimationIterationCount = struct
  type +'a t = ([> Css_Property.animation_iteration_count ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `infinity | `repeat of int ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `infinity -> "infinity"
    | `repeat count -> Js.Int.toString count
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AnimationDirection = struct
  type +'a t = ([> Css_Property.animation_direction ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `normal | `reverse | `alternate | `alternate_reverse [@bs.as "alternate-reverse"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AnimationPlayState = struct
  type +'a t = ([> Css_Property.animation_play_state ] as 'a) Css_Property.t

  module Value = struct
    type value = [ `running | `paused ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AnimationDelay = struct
  type +'a t = ([> Css_Property.animation_delay ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Time.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Time.t as time ->
      Css_Value.Time.show time
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AnimationFillMode = struct
  type +'a t = ([> Css_Property.animation_fill_mode ] as 'a) Css_Property.t

  module Value = struct
    type value = [ `none | `forwards | `backwards | `both ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Animation = struct
  type +'a t = ([> Css_Property.animation ] as 'a) Css_Property.t

  let make ?duration ?timing ?delay ?iterate ?direction ?fill_mode ?play_state (): 'a t =
    Util.combine_styles [|
      Belt.Option.map duration Css_Value.Time.show;
      Belt.Option.map timing Css_Value.TimingFunction.show;
      Belt.Option.map delay Css_Value.Time.show;
      Belt.Option.map iterate AnimationIterationCount.Value.show;
      Belt.Option.map direction AnimationDirection.Value.show;
      Belt.Option.map fill_mode AnimationFillMode.Value.show;
      Belt.Option.map play_state AnimationPlayState.Value.show;
    |]
    |> Internal.make
end


module AlignContent = struct
  type +'a t = ([> Css_Property.align_content ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `flex_start [@bs.as "flex-start"] | `flex_end [@bs.as "flex-end"]
      | `center | `space_between [@bs.as "space-between"]
      | `space_around [@bs.as "space-around"] | `stretch
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AlignItems = struct
  type +'a t = ([> Css_Property.align_items ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `flex_start [@bs.as "flex-start"] | `flex_end [@bs.as "flex-end"]
      | `center | `baseline | `stretch
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module AlignSelf = struct
  type +'a t = ([> Css_Property.align_self ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `auto | `flex_start [@bs.as "flex-start"]
      | `flex_end [@bs.as "flex-end"] | `center | `baseline | `stretch
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Azimuth = struct
  type +'a t = ([> Css_Property.azimuth ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `left_side [@bs.as "left-side"] | `far_left [@bs.as "far-left"]
      | `left | `center_left [@bs.as "center-left"] | `center
      | `center_right [@bs.as "center-right"] | `right
      | `far_right [@bs.as "far-right"] | `right_side [@bs.as "right-side"]
      | `leftwards | `rightwards ]
      [@@bs.deriving jsConverter]

    type t =
      [ Css_Value.Global.t | Css_Value.Angle.t | `behind' | `behind of value
      | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global -> Css_Value.Global.show global
    | #Css_Value.Angle.t as angle ->
      Css_Value.Angle.show angle
    | `behind' -> "behind"
    | `behind value ->
      "behind " ^ valueToJs value
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module BackgroundAttachment = struct
  type +'a t = ([> Css_Property.background_attachment ] as 'a) Css_Property.t

  let make value: 'a t =
    Internal.make @@ Css_Value.Background.Attachment.show value
end


module BackgroundColor = struct
  type +'a t = ([> Css_Property.background_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Background.Color.show value
end


module BackgroundImage = struct
  type +'a t = ([> Css_Property.background_image ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Background.Image.show value
end


module BackgroundPosition = struct
  type +'a t = ([> Css_Property.background_position ] as 'a) Css_Property.t

  let make value: 'a t =
    Internal.make @@ Css_Value.Background.Position.show value
end


module BackgroundRepeat = struct
  type +'a t = ([> Css_Property.background_repeat ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Background.Repeat.show value
end


module Background = struct
  type +'a t = ([> Css_Property.background ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `background of
          Css_Value.Background.Color.t option *
          Css_Value.Background.Image.t option *
          Css_Value.Background.Repeat.t option *
          Css_Value.Background.Attachment.t option *
          Css_Value.Background.Position.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `background (color, image, repeat, attachment, position) ->
      Util.combine_styles [|
        Belt.Option.map color Css_Value.Background.Color.show;
        Belt.Option.map image Css_Value.Background.Image.show;
        Belt.Option.map repeat Css_Value.Background.Repeat.show;
        Belt.Option.map attachment Css_Value.Background.Attachment.show;
        Belt.Option.map position Css_Value.Background.Position.show
      |]
  end

  let make ?color ?image ?repeat ?attachment ?position (): 'a t =
    let value = (color, image, repeat, attachment, position) in
    Internal.make @@ Value.show (`background value)

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module BorderCollapse = struct
  type +'a t = ([> Css_Property.border_collapse ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `collapse | `separate ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `collapse -> "collapse"
    | `separate -> "separate"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module BorderColor = struct
  type +'a t = ([> Css_Property.border_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Color.show value
end


module BorderSpacing = struct
  type +'a t = ([> Css_Property.border_spacing ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Length.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | #Css_Value.Length.t as length ->
      Css_Value.Length.show length
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module BorderWidth = struct
  type +'a t = ([> Css_Property.border_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Width.show value
end


module BorderStyle = struct
  type +'a t = ([> Css_Property.border_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Style.show value
end


module BorderTop = struct
  type +'a t = ([> Css_Property.border_top ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `border_top of
          Css_Value.Border.Width.t option *
          Css_Value.Border.Style.t option *
          Css_Value.Border.Color.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `border_top (width, style, color) ->
      Util.combine_styles [|
        Belt.Option.map width Css_Value.Border.Width.show;
        Belt.Option.map style Css_Value.Border.Style.show;
        Belt.Option.map color Css_Value.Border.Color.show;
      |]
  end

  let make ?width ?style ?color (): 'a t =
    Internal.make @@ Value.show (`border_top (width, style, color))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module BorderRight = struct
  type +'a t = ([> Css_Property.border_right ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `border_right of
          Css_Value.Border.Width.t option *
          Css_Value.Border.Style.t option *
          Css_Value.Border.Color.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `border_right (width, style, color) ->
      Util.combine_styles [|
        Belt.Option.map width Css_Value.Border.Width.show;
        Belt.Option.map style Css_Value.Border.Style.show;
        Belt.Option.map color Css_Value.Border.Color.show;
      |]
  end

  let make ?width ?style ?color (): 'a t =
    Internal.make @@ Value.show (`border_right (width, style, color))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module BorderBottom = struct
  type +'a t = ([> Css_Property.border_bottom ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `border_bottom of
          Css_Value.Border.Width.t option *
          Css_Value.Border.Style.t option *
          Css_Value.Border.Color.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `border_bottom (width, style, color) ->
      Util.combine_styles [|
        Belt.Option.map width Css_Value.Border.Width.show;
        Belt.Option.map style Css_Value.Border.Style.show;
        Belt.Option.map color Css_Value.Border.Color.show;
      |]
  end

  let make ?width ?style ?color (): 'a t =
    Internal.make @@ Value.show (`border_bottom (width, style, color))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module BorderLeft = struct
  type +'a t = ([> Css_Property.border_left ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `border_left of
          Css_Value.Border.Width.t option *
          Css_Value.Border.Style.t option *
          Css_Value.Border.Color.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `border_left (width, style, color) ->
      Util.combine_styles [|
        Belt.Option.map width Css_Value.Border.Width.show;
        Belt.Option.map style Css_Value.Border.Style.show;
        Belt.Option.map color Css_Value.Border.Color.show;
      |]
  end

  let make ?width ?style ?color (): 'a t =
    Internal.make @@ Value.show (`border_left (width, style, color))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module Border = struct
  type +'a t = ([> Css_Property.border ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `border of
          Css_Value.Border.Width.t option *
          Css_Value.Border.Style.t option *
          Css_Value.Border.Color.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `border (width, style, color) ->
      Util.combine_styles [|
        Belt.Option.map width Css_Value.Border.Width.show;
        Belt.Option.map style Css_Value.Border.Style.show;
        Belt.Option.map color Css_Value.Border.Color.show;
      |]
  end

  let make ?width ?style ?color (): 'a t =
    Internal.make @@ Value.show (`border (width, style, color))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module BorderTopColor = struct
  type +'a t = ([> Css_Property.border_top_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Color.show value
end


module BorderRightColor = struct
  type +'a t = ([> Css_Property.border_right_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Color.show value
end


module BorderBottomColor = struct
  type +'a t = ([> Css_Property.border_bottom_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Color.show value
end


module BorderLeftColor = struct
  type +'a t = ([> Css_Property.border_left_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Color.show value
end


module BorderTopStyle = struct
  type +'a t = ([> Css_Property.border_top_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Style.show value
end


module BorderRightStyle = struct
  type +'a t = ([> Css_Property.border_right_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Style.show value
end


module BorderBottomStyle = struct
  type +'a t = ([> Css_Property.border_bottom_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Style.show value
end


module BorderLeftStyle = struct
  type +'a t = ([> Css_Property.border_left_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Style.show value
end


module BorderTopWidth = struct
  type +'a t = ([> Css_Property.border_top_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Width.show value
end


module BorderRightWidth = struct
  type +'a t = ([> Css_Property.border_right_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Width.show value
end


module BorderBottomWidth = struct
  type +'a t = ([> Css_Property.border_bottom_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Width.show value
end


module BorderLeftWidth = struct
  type +'a t = ([> Css_Property.border_left_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Border.Width.show value
end


module Bottom = struct
  type +'a t = ([> Css_Property.bottom ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module CaptionSide = struct
  type +'a t = ([> Css_Property.caption_side ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `top | `bottom ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | `top -> "top"
    | `bottom -> "bottom"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Clear = struct
  type +'a t = ([> Css_Property.clear ] as 'a) Css_Property.t

  module Value = struct
    type value = [ `left | `right | `both | `none ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Clip = struct
  type +'a t = ([> Css_Property.clip ] as 'a) Css_Property.t

  module Value = struct
    type value = [ Css_Value.Length.t | `auto ]

    let show_value: value -> string = function
    | #Css_Value.Length.t as length ->
      Css_Value.Length.show length
    | `auto -> "auto"

    type t = [ Css_Value.Global.t | `rect of value * value * value * value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `rect (top, right, bottom, left) ->
      "rect("^
        show_value top    ^", "^
        show_value right  ^", "^
        show_value bottom ^", "^
        show_value left   ^
      ")"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Color = struct
  type +'a t = ([> Css_Property.color ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Color.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Color.t as color ->
      Css_Value.Color.show color
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module CueAfter = struct
  type +'a t = ([> Css_Property.cue_after ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.UriOrNone.show value
end


module CueBefore = struct
  type +'a t = ([> Css_Property.cue_before ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.UriOrNone.show value
end


module Cue = struct
  type +'a t = ([> Css_Property.cue ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `cue of Css_Value.UriOrNone.t * Css_Value.UriOrNone.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `cue (cue_before, cue_after) ->
      Css_Value.UriOrNone.show cue_before ^" "^
      Css_Value.UriOrNone.show cue_after
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Cursor = struct
  type +'a t = ([> Css_Property.cursor ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `auto | `crosshair | `default | `pointer | `move
      | `e_resize [@bs.as "e-resize"] | `ne_resize [@bs.as "ne-resize"]
      | `nw_resize [@bs.as "nw-resize"] | `n_resize [@bs.as "n-resize"]
      | `se_resize [@bs.as "se-resize"] | `sw_resize [@bs.as "sw-resize"]
      | `s_resize [@bs.as "s-resize"] | `w_resize [@bs.as "w-resize"]
      | `text | `wait | `help | `progress ] [@@bs.deriving jsConverter]

    type t =
      [ Css_Value.Global.t
      | `cursor_uri of Css_Value.Uri.t list * value | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | `cursor_uri (uris, value) ->
      let uris' =
        uris
        |. Belt.List.map (fun e -> Css_Value.Uri.show e ^", ")
        |> Js.List.toVector
        |> Js.Array.joinWith ""
      in
      uris' ^ valueToJs value |> Js.String.trim
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Direction = struct
  type +'a t = ([> Css_Property.direction ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `rtl | `ltr ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `rtl -> "rtl"
    | `ltr -> "ltr"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Display = struct
  type +'a t = ([> Css_Property.display' ] as 'a) Css_Property.t

  module Internal = struct
    (* You shouldn't be able to create a display property directly *)

    module Value = struct
      type value =
        [ `none | `block | `flex | `list_item [@bs.as "list-item"]
        | `inline
        | `inline_block [@bs.as "inline-block"]
        | `inline_flex [@bs.as "inline-flex"]
        | `table_header_group [@bs.as "table-header-group"]
        | `table_footer_group [@bs.as "table-footer-group"]
        | `table_caption [@bs.as "table-caption"]
        | `table | `inline_table [@bs.as "inline-table"]
        | `table_cell [@bs.as "table-cell"]
        | `table_column [@bs.as "table-column"]
        | `table_column_group [@bs.as "table-column-group"]
        | `table_row [@bs.as "table-row"]
        | `table_row_group [@bs.as "table-row-group"]
        ] [@@bs.deriving jsConverter]

      type t = [ Css_Value.Global.t | value ]

      let show: t -> string = function
      | #Css_Value.Global.t as global ->
        Css_Value.Global.show global
      | #value as value ->
        valueToJs value
    end

    let make value: 'a t = Internal.make @@ Value.show value
  end

  let none (): [> Css_Property.display'] Css_Property.t = Internal.make `none

  let flex (value: Css_Property.flexbox Css_Property.t Js.Dict.t):
    Css_Property.Override.flex Css_Property.t Js.Dict.t =
    Js.Dict.fromList [("display", Internal.make `flex)] |> Util.merge value

  let inline_block (value: Css_Property.inline_block Css_Property.t Js.Dict.t):
    Css_Property.Override.inline_block Css_Property.t Js.Dict.t =
    Js.Dict.fromList [("display", Internal.make `inline_block)]
    |> Util.merge value

  let inline_flex (value: Css_Property.inline_flex Css_Property.t Js.Dict.t):
    Css_Property.Override.inline_flex Css_Property.t Js.Dict.t =
    Js.Dict.fromList [("display", Internal.make `inline_flex)]
    |> Util.merge value
end


module Elevation = struct
  type +'a t = ([> Css_Property.elevation ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `below | `level | `above | `higher | `lower ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | Css_Value.Angle.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Angle.t as angle ->
      Css_Value.Angle.show angle
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module EmptyCells = struct
  type +'a t = ([> Css_Property.empty_cells ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `show | `hide ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `show -> "show"
    | `hide -> "hide"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Flex = struct
  type +'a t = ([> Css_Property.flex ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `none
      | `flex of float option * float option * Css_Value.LengthPercent.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `none -> "none"
    | `flex (grow, shrink, basis) ->
      let flex = Util.combine_styles [|
        Belt.Option.map grow Js.Float.toString;
        Belt.Option.map shrink Js.Float.toString;
        Belt.Option.map basis Css_Value.LengthPercent.show;
      |]
      in
      if flex = "" then Css_Value.Global.show `initial else flex
  end

  let make ?grow ?shrink ?basis (): 'a t =
    Internal.make @@ Value.show (`flex (grow, shrink, basis))

  let make_value (value: [ Css_Value.Global.t | `none ]): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module FlexBasis = struct
  type +'a t = ([> Css_Property.flex_basis ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module FlexDirection = struct
  type +'a t = ([> Css_Property.flex_direction ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Flex.Direction.show value
end


module FlexFlow = struct
  type +'a t = ([> Css_Property.flex_flow ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `flow of Css_Value.Flex.Direction.t * Css_Value.Flex.Wrap.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `flow (direction, wrap) ->
      Css_Value.Flex.Direction.show direction ^" "^
      Css_Value.Flex.Wrap.show wrap
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module FlexGrow = struct
  type +'a t = ([> Css_Property.flex_grow ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Js.Float.toString value
end


module FlexShrink = struct
  type +'a t = ([> Css_Property.flex_shrink ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Js.Float.toString value
end


module FlexWrap = struct
  type +'a t = ([> Css_Property.flex_wrap ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Flex.Wrap.show value
end


module Float = struct
  type +'a t = ([> Css_Property.float_ ] as 'a) Css_Property.t

  module Value = struct
    type value = [ `left | `right | `none ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module FontFamily = struct
  type +'a t = ([> Css_Property.font_family ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Font.Family.show value
end


module FontSize = struct
  type +'a t = ([> Css_Property.font_size ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Font.Size.show value
end


module FontStyle = struct
  type +'a t = ([> Css_Property.font_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Font.Style.show value
end


module FontVariant = struct
  type +'a t = ([> Css_Property.font_variant ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Font.Variant.show value
end


module FontWeight = struct
  type +'a t = ([> Css_Property.font_weight ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Font.Weight.show value
end


module Font = struct
  type +'a t = ([> Css_Property.font ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [
      | `caption | `icon | `menu | `message_box [@bs.as "message-box"]
      | `small_caption [@bs.as "small-caption"]
      | `status_bar [@bs.as "status-bar"]
      ]
      [@@bs.deriving jsConverter]

    type font =
      Css_Value.Font.Style.t option *
      Css_Value.Font.Variant.t option *
      Css_Value.Font.Weight.t option *
      Css_Value.Font.Size.t *
      Css_Value.LineHeight.t option *
      Css_Value.Font.Family.t

    type t = [ Css_Value.Global.t | `font of font | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | `font (style, variant, weight, size, line_height, family) ->
      let font = Util.combine_styles [|
        Belt.Option.map style Css_Value.Font.Style.show;
        Belt.Option.map variant Css_Value.Font.Variant.show;
        Belt.Option.map weight Css_Value.Font.Weight.show;
        Css_Value.Font.Size.show size |. Some;
        Belt.Option.map line_height (fun l -> "/"^ Css_Value.LineHeight.show l);
        Css_Value.Font.Family.show family |. Some;
      |]
      in
      if font = "" then Css_Value.Global.show `initial else font
    | #value as value ->
      valueToJs value
  end

  let make ?style ?variant ?weight ?line_height size family: 'a t =
    Internal.make @@ Value.show @@
      `font (style, variant, weight, size, line_height, family)

  let make_value (value: [ Css_Value.Global.t | Value.value ]): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module Height = struct
  type +'a t = ([> Css_Property.height ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module JustifyContent = struct
  type +'a t = ([> Css_Property.justify_content ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `flex_start [@bs.as "flex-start"] | `flex_end [@bs.as "flex-end"]
      | `center | `space_between [@bs.as "space-between"]
      | `space_around [@bs.as "space-around"]
      ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Left = struct
  type +'a t = ([> Css_Property.left ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module LetterSpacing = struct
  type +'a t = ([> Css_Property.letter_spacing ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]

    let show: t -> string = function
    | #Css_Value.Global.t as value ->
      Css_Value.Global.show value
    | #Css_Value.Length.t as length ->
      Css_Value.Length.show length
    | `normal -> "normal"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module LineHeight = struct
  type +'a t = ([> Css_Property.line_height ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LineHeight.show value
end


module ListStyleImage = struct
  type +'a t = ([> Css_Property.list_style_image ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.ListStyle.Image.show value
end


module ListStylePosition = struct
  type +'a t = ([> Css_Property.list_style_position ] as 'a) Css_Property.t

  let make value: 'a t =
    Internal.make @@ Css_Value.ListStyle.Position.show value
end


module ListStyleType = struct
  type +'a t = ([> Css_Property.list_style_type ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.ListStyle.Type.show value
end


module ListStyle = struct
  type +'a t = ([> Css_Property.list_style ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `list_style of
          Css_Value.ListStyle.Type.t option *
          Css_Value.ListStyle.Position.t option *
          Css_Value.ListStyle.Image.t option ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `list_style (type_, position, image) ->
      let list_style = Util.combine_styles [|
        Belt.Option.map type_ Css_Value.ListStyle.Type.show;
        Belt.Option.map position Css_Value.ListStyle.Position.show;
        Belt.Option.map image Css_Value.ListStyle.Image.show;
      |]
      in
      if list_style = "" then Css_Value.Global.show `initial else list_style
  end

  let make ?type_ ?position ?image (): 'a t =
    Internal.make @@ Value.show (`list_style (type_, position, image))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module Margin = struct
  type +'a t = ([> Css_Property.margin ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `margin of
          Css_Value.LengthPercent.t *
          Css_Value.LengthPercent.t *
          Css_Value.LengthPercent.t *
          Css_Value.LengthPercent.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.LengthPercent.t as length ->
      Css_Value.LengthPercent.show length
    | `margin (top, right, bottom, left) ->
      Css_Value.LengthPercent.show top ^" "^
      Css_Value.LengthPercent.show right ^" "^
      Css_Value.LengthPercent.show bottom ^" "^
      Css_Value.LengthPercent.show left
  end

  let make ~top ~right ~bottom ~left : 'a t =
    Internal.make @@ Value.show (`margin (top, right, bottom, left))

  let make_value (value: [ Css_Value.Global.t | Css_Value.LengthPercent.t ]):
    'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module MarginTop = struct
  type +'a t = ([> Css_Property.margin_top ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MarginRight = struct
  type +'a t = ([> Css_Property.margin_right ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MarginBottom = struct
  type +'a t = ([> Css_Property.margin_bottom ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MarginLeft = struct
  type +'a t = ([> Css_Property.margin_left ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MaxHeight = struct
  type +'a t = ([> Css_Property.max_height ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MaxWidth = struct
  type +'a t = ([> Css_Property.max_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MinHeight = struct
  type +'a t = ([> Css_Property.min_height ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module MinWidth = struct
  type +'a t = ([> Css_Property.min_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module Order = struct
  type +'a t = ([> Css_Property.order ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Js.Int.toString value
end


module Orphans = struct
  type +'a t = ([> Css_Property.orphans ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.BreakInside.show value
end


module OutlineColor = struct
  type +'a t = ([> Css_Property.outline_color ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Outline.Color.show value
end


module OutlineStyle = struct
  type +'a t = ([> Css_Property.outline_style ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Outline.Style.show value
end


module OutlineWidth = struct
  type +'a t = ([> Css_Property.outline_width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Outline.Width.show value
end


module Outline = struct
  type +'a t = ([> Css_Property.outline ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `outline of Css_Value.Outline.Color.t option *
                    Css_Value.Outline.Style.t option *
                    Css_Value.Outline.Width.t option
      ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `outline (color, style, width) ->
      Util.combine_styles [|
        Belt.Option.map color Css_Value.Outline.Color.show;
        Belt.Option.map style Css_Value.Outline.Style.show;
        Belt.Option.map width Css_Value.Outline.Width.show
      |]
  end

  let make ?color ?style ?width (): 'a t =
    Internal.make @@ Value.show (`outline (color, style, width))

  let make_value (value: Css_Value.Global.t): 'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module Overflow = struct
  type +'a t = ([> Css_Property.overflow ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `visible | `hidden | `scroll | `auto ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module PaddingTop = struct
  type +'a t = ([> Css_Property.padding_top ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module PaddingRight = struct
  type +'a t = ([> Css_Property.padding_right ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module PaddingBottom = struct
  type +'a t = ([> Css_Property.padding_bottom ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module PaddingLeft = struct
  type +'a t = ([> Css_Property.padding_left ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module Padding = struct
  type +'a t = ([> Css_Property.padding ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `padding of
          Css_Value.LengthPercent.t *
          Css_Value.LengthPercent.t *
          Css_Value.LengthPercent.t *
          Css_Value.LengthPercent.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.LengthPercent.t as length ->
      Css_Value.LengthPercent.show length
    | `padding (top, right, bottom, left) ->
      Css_Value.LengthPercent.show top ^" "^
      Css_Value.LengthPercent.show right ^" "^
      Css_Value.LengthPercent.show bottom ^" "^
      Css_Value.LengthPercent.show left
  end

  let make ~top ~right ~bottom ~left : 'a t =
    Internal.make @@ Value.show (`padding (top, right, bottom, left))

  let make_value (value: [ Css_Value.Global.t | Css_Value.LengthPercent.t ]):
    'a t =
    Internal.make @@ Value.show (value :> Value.t)
end


module PageBreakAfter = struct
  type +'a t = ([> Css_Property.page_break_after ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.PageBreak.show value
end


module PageBreakBefore = struct
  type +'a t = ([> Css_Property.page_break_before ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.PageBreak.show value
end


module PageBreakInside = struct
  type +'a t = ([> Css_Property.page_break_inside ] as 'a) Css_Property.t

  let make (value: Css_Value.PageBreak.inside): 'a t =
    Internal.make @@ Css_Value.PageBreak.show (value :> Css_Value.PageBreak.t)
end


module PauseAfter = struct
  type +'a t = ([> Css_Property.pause_after ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.TimePercent.show value
end


module PauseBefore = struct
  type +'a t = ([> Css_Property.pause_before ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.TimePercent.show value
end


module Pause = struct
  type +'a t = ([> Css_Property.pause ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `pause of Css_Value.TimePercent.t * Css_Value.TimePercent.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `pause (pause_before, pause_after) ->
      Css_Value.TimePercent.show pause_before ^" "^
      Css_Value.TimePercent.show pause_after
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module PitchRange = struct
  type +'a t = ([> Css_Property.pitch_range ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `range of float ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `range range ->
      Js.Float.toString range
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Pitch = struct
  type +'a t = ([> Css_Property.pitch ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `x_low [@bs.as "x-low"] | `low | `medium
      | `high | `x_high [@bs.as "x-high"] ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | Css_Value.Frequency.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Frequency.t as frequency ->
      Css_Value.Frequency.show frequency
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module PlayDuring = struct
  type +'a t = ([> Css_Property.play_during ] as 'a) Css_Property.t

  module Value = struct
    type value = [ `mix | `repeat ] [@@bs.deriving jsConverter]

    type t =
      [ Css_Value.Global.t | Css_Value.Uri.t | `sound of Css_Value.Uri.t * value
      | `auto | `none ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Uri.t as uri ->
      Css_Value.Uri.show uri
    | `sound (uri, value) ->
      Css_Value.Uri.show uri ^" "^ valueToJs value
    | `auto -> "auto"
    | `none -> "none"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Position = struct
  type 'a t = ([< Css_Property.display ] as 'a) Css_Property.t Js.Dict.t

  module Internal = struct
    type +'a t = ([> Css_Property.position ] as 'a) Css_Property.t

    module Value = struct
      type value =
        [ `static | `absolute | `relative | `fixed ] [@@bs.deriving jsConverter]

      type t = [ Css_Value.Global.t | value ]

      let show: t -> string = function
      | #Css_Value.Global.t as global ->
        Css_Value.Global.show global
      | #value as value ->
        valueToJs value
    end

    external to_display:
      Css_Property.positioned Css_Property.t Js.Dict.t ->
      [< Css_Property.display] Css_Property.t Js.Dict.t = "%identity"

    let make value: 'a t = Internal.make @@ Value.show value
  end

  module Value = struct
    type t =
      [ `static
      | `absolute of Css_Property.positioned Css_Property.t Js.Dict.t
      | `relative of Css_Property.positioned Css_Property.t Js.Dict.t
      | `fixed    of Css_Property.positioned Css_Property.t Js.Dict.t
      ]

    let make: t -> 'a Internal.t = function
    | `static     -> Internal.make `static
    | `absolute _ -> Internal.make `absolute
    | `relative _ -> Internal.make `relative
    | `fixed _    -> Internal.make `fixed
  end

  let make: Value.t -> 'a t = function
  | `static as static -> Js.Dict.fromList [("position", Value.make static)]
    |> Internal.to_display
  | `absolute styles | `relative styles | `fixed styles as position ->
    Js.Dict.fromList [("position", Value.make position)]
    |> Util.merge styles
    |> Internal.to_display
end


module Richness = struct
  type +'a t = ([> Css_Property.richness ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `richness of float ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `richness value ->
      Js.Float.toString value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Right = struct
  type +'a t = ([> Css_Property.right ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end

module Size = struct
  type +'a t = ([> Css_Property.size ] as 'a) Css_Property.t

  module Value = struct
    type t =
      [ Css_Value.Global.t
      | `length of Css_Value.LengthPercent.t * Css_Value.LengthPercent.t
      | `auto ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `length (top_bottom, left_right) ->
      Css_Value.LengthPercent.show top_bottom ^" "^
      Css_Value.LengthPercent.show left_right
    | `auto -> "auto"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module SpeakHeader = struct
  type +'a t = ([> Css_Property.speak_header ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `once | `always ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `once -> "once"
    | `always -> "always"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module SpeakNumeral = struct
  type +'a t = ([> Css_Property.speak_numeral ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `digits | `continuous ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `digits -> "digits"
    | `continuous -> "continuous"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module SpeakPunctuation = struct
  type +'a t = ([> Css_Property.speak_punctuation ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `code | `none ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `code -> "code"
    | `none -> "none"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Speak = struct
  type +'a t = ([> Css_Property.speak ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `normal | `none | `spell_out [@bs.as "spell-out"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module SpeechRate = struct
  type +'a t = ([> Css_Property.speech_rate ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `x_slow [@bs.as "x-slow"] | `slow | `medium
      | `fast | `x_fast [@bs.as "x-fast"] | `faster | `slower ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value | `rate of float ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
    | `rate rate ->
      Js.Float.toString rate
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Stress = struct
  type +'a t = ([> Css_Property.stress ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `stress of float ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `stress stress ->
      Js.Float.toString stress
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module TableLayout = struct
  type +'a t = ([> Css_Property.table_layout ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | `auto | `fixed ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | `auto -> "auto"
    | `fixed -> "fixed"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module TextAlign = struct
  type +'a t = ([> Css_Property.text_align ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `left | `right | `center | `justify ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module TextDecoration = struct
  type +'a t = ([> Css_Property.text_decoration ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `none | `underline | `overline | `line_through [@bs.as "line-through"]
      | `blink ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module TextIndent = struct
  type +'a t = ([> Css_Property.text_indent ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module TextTransform = struct
  type +'a t = ([> Css_Property.text_transform ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `capitalize | `uppercase | `lowercase | `none ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Top = struct
  type +'a t = ([> Css_Property.top ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module TransitionDelay = struct
  type +'a t = ([> Css_Property.transition_delay ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Time.show value
end


module TransitionDuration = struct
  type +'a t = ([> Css_Property.transition_duration ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.Time.show value
end


module TransitionProperty = struct
  type +'a t = ([> Css_Property.transition_property ] as 'a) Css_Property.t

  module Value = struct
    type value = [ `all | `none ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module TransitionTimingFunction = struct
  type +'a t = ([> Css_Property.transition_timing_function ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.TimingFunction.show value
end


module Transition = struct
  type +'a t = ([> Css_Property.transition ] as 'a) Css_Property.t

  let make ?property ?duration ?timing ?delay (): 'a t =
    Util.combine_styles [|
      Belt.Option.map property TransitionProperty.Value.show;
      Belt.Option.map duration Css_Value.Time.show;
      Belt.Option.map timing Css_Value.TimingFunction.show;
      Belt.Option.map delay Css_Value.Time.show;
    |]
    |> Internal.make
end


module UnicodeBidi = struct
  type +'a t = ([> Css_Property.unicode_bidi ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `normal | `embed | `bidi_override [@bs.as "bidi-override"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module VerticalAlign = struct
  type +'a t = ([> Css_Property.vertical_align ] as 'a) Css_Property.t

  module Value = struct
    module ParentRelative = struct
      type value =
        [
        | `baseline | `sub | `super | `text_top [@bs.as "text-top"]
        | `text_bottom [@bs.as "text-bottom"] | `middle
        ]
        [@@bs.deriving jsConverter]

      type t =
        [ Css_Value.Length.t | Css_Value.Percent.t | value ]

      let show: t -> string = function
      | #Css_Value.Length.t as length ->
        Css_Value.Length.show length
      | #Css_Value.Percent.t as percent ->
        Css_Value.Percent.show percent
      | #value as value ->
        valueToJs value
    end

    module LineRelative = struct
      type t = [ `top | `bottom ] [@@bs.deriving jsConverter]

      let show = tToJs
    end

    type t =
      [ Css_Value.Global.t | ParentRelative.t | LineRelative.t ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #ParentRelative.t as parent_relative ->
      ParentRelative.show parent_relative
    | #LineRelative.t as line_relative ->
      LineRelative.show line_relative
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Visibility = struct
  type +'a t = ([> Css_Property.visibility ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `visible | `hidden | `collapse ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module VoiceFamily = struct
  type +'a t = ([> Css_Property.voice_family ] as 'a) Css_Property.t

  module Value = struct
    type generic = [ `male | `female | `child ] [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | generic | `specific of string ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #generic as generic ->
      genericToJs generic
    | `specific value when value = "" ->
      "initial"
    | `specific value ->
      Js.Json.stringifyAny value |> Js.Option.getExn
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Volume = struct
  type +'a t = ([> Css_Property.volume ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `silent | `x_soft [@bs.as "x-soft"] | `soft
      | `medium | `loud | `x_loud [@bs.as "x-loud"] ]
      [@@bs.deriving jsConverter]

    type t =
      [ Css_Value.Global.t | Css_Value.Percent.t | `volume of float | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Percent.t as percent ->
      Css_Value.Percent.show percent
    | #value as value ->
      valueToJs value
    | `volume value ->
      Js.Float.toString value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module WhiteSpace = struct
  type +'a t = ([> Css_Property.white_space ] as 'a) Css_Property.t

  module Value = struct
    type value =
      [ `normal | `pre | `nowrap
      | `pre_wrap [@bs.as "pre-wrap"] | `pre_line [@bs.as "pre-line"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #value as value ->
      valueToJs value
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module Widows = struct
  type +'a t = ([> Css_Property.widows ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.BreakInside.show value
end


module Width = struct
  type +'a t = ([> Css_Property.width ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Css_Value.LengthPercent.show value
end


module WordSpacing = struct
  type +'a t = ([> Css_Property.word_spacing ] as 'a) Css_Property.t

  module Value = struct
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]

    let show: t -> string = function
    | #Css_Value.Global.t as global ->
      Css_Value.Global.show global
    | #Css_Value.Length.t as length ->
      Css_Value.Length.show length
    | `normal -> "normal"
  end

  let make value: 'a t = Internal.make @@ Value.show value
end


module ZIndex = struct
  type +'a t = ([> Css_Property.z_index ] as 'a) Css_Property.t

  let make value: 'a t = Internal.make @@ Js.Int.toString value
end


module Ruby = struct
  (** {{: https://www.w3.org/TR/css-ruby-1/#ruby-props} Ruby Properties} *)

  module RubyPosition = struct
    type +'a t = ([> Css_Property.ruby_position ] as 'a) Css_Property.t

    module Value = struct
      type vertical =
        [ `over | `under | `inter_character [@bs.as "inter-character"] ]
        [@@bs.deriving jsConverter]

      type horizontal = [ `right | `left ] [@@bs.deriving jsConverter]

      type t = [ Css_Value.Global.t | `position of vertical * horizontal ]

      let show: t -> string = function
      | #Css_Value.Global.t as global ->
        Css_Value.Global.show global
      | `position (vertical, horizontal) ->
        verticalToJs vertical ^" "^ horizontalToJs horizontal
    end

    let make value: 'a t = Internal.make @@ Value.show value
  end


  module RubyMerge = struct
    type +'a t = ([> Css_Property.ruby_merge ] as 'a) Css_Property.t

    module Value = struct
      type value = [ `separate | `collapse | `auto ] [@@bs.deriving jsConverter]

      type t = [ Css_Value.Global.t | value ]

      let show: t -> string = function
      | #Css_Value.Global.t as global ->
        Css_Value.Global.show global
      | #value as value ->
        valueToJs value
    end

    let make value: 'a t = Internal.make @@ Value.show value
  end


  module RubyAlign = struct
    type +'a t = ([> Css_Property.ruby_align ] as 'a) Css_Property.t

    module Value = struct
      type value =
        [ `start | `center | `space_between [@bs.as "space-between"]
        | `space_around [@bs.as "space-around"]
        ] [@@bs.deriving jsConverter]

      type t = [ Css_Value.Global.t | value ]

      let show: t -> string = function
      | #Css_Value.Global.t as global ->
        Css_Value.Global.show global
      | #value as value ->
        valueToJs value
    end

    let make value: 'a t = Internal.make @@ Value.show value
  end
end
