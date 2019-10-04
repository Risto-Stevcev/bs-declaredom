(**
 CSS Properties

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } full property table} for reference.
 Property values in the W3 spec are written in the 
 {{: https://www.w3.org/TR/css-values-4/#component-combinators } component combinators} format.
 *)

module AlignContent :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#align-content-property} Align Content} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.align_content ]
    module Value :
      sig
        type value =
            [ `center
            | `flex_end
            | `flex_start
            | `space_around
            | `space_between
            | `stretch ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.align_content ] t
  end
module AlignItems :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align Items} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.align_items ]
    module Value :
      sig
        type value =
            [ `baseline | `center | `flex_end | `flex_start | `stretch ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.align_items ] t
  end
module AlignSelf :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align Self} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.align_self ]
    module Value :
      sig
        type value =
            [ `auto
            | `baseline
            | `center
            | `flex_end
            | `flex_start
            | `stretch ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.align_self ] t
  end
module Azimuth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-azimuth } Azimuth} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.azimuth ]
    module Value :
      sig
        type value =
            [ `center
            | `center_left
            | `center_right
            | `far_left
            | `far_right
            | `left
            | `left_side
            | `leftwards
            | `right
            | `right_side
            | `rightwards ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
          [ Css_Value.Global.t | Css_Value.Angle.t | `behind' | `behind of value
          | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.azimuth ] t
  end
module BackgroundAttachment :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.background_attachment ]
    val make :
      Css_Value.Background.Attachment.t ->
      [> Css_Property.background_attachment ] t
  end
module BackgroundColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.background_color ]
    val make :
      Css_Value.Background.Color.t -> [> Css_Property.background_color ] t
  end
module BackgroundImage :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.background_image ]
    val make :
      Css_Value.Background.Image.t -> [> Css_Property.background_image ] t
  end
module BackgroundPosition :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.background_position ]
    val make :
      Css_Value.Background.Position.t ->
      [> Css_Property.background_position ] t
  end
module BackgroundRepeat :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.background_repeat ]
    val make :
      Css_Value.Background.Repeat.t -> [> Css_Property.background_repeat ] t
  end
module Background :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background } Background} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.background ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `background of
              Css_Value.Background.Color.t option *
              Css_Value.Background.Image.t option *
              Css_Value.Background.Repeat.t option *
              Css_Value.Background.Attachment.t option *
              Css_Value.Background.Position.t option ]
        val show : t -> string
      end
    val make :
      ?color:Css_Value.Background.Color.t ->
      ?image:Css_Value.Background.Image.t ->
      ?repeat:Css_Value.Background.Repeat.t ->
      ?attachment:Css_Value.Background.Attachment.t ->
      ?position:Css_Value.Background.Position.t ->
      unit -> [> Css_Property.background ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.background ] t
  end
module BorderCollapse :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_collapse ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `collapse | `separate ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.border_collapse ] t
  end
module BorderColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_color ]
    val make : Css_Value.Border.Color.t -> [> Css_Property.border_color ] t
  end
module BorderSpacing :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-spacing } Border Spacing} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_spacing ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | Css_Value.Length.t ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.border_spacing ] t
  end
module BorderWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_width ]
    val make : Css_Value.Border.Width.t -> [> Css_Property.border_width ] t
  end
module BorderStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_style ]
    val make : Css_Value.Border.Style.t -> [> Css_Property.border_style ] t
  end
module BorderTop :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top } Border Top} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_top ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `border_top of
              Css_Value.Border.Width.t option *
              Css_Value.Border.Style.t option *
              Css_Value.Border.Color.t option ]
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_top ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.border_top ] t
  end
module BorderRight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right } Border Right} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_right ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `border_right of
              Css_Value.Border.Width.t option *
              Css_Value.Border.Style.t option *
              Css_Value.Border.Color.t option ]
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_right ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.border_right ] t
  end
module BorderBottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom } Border Bottom} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_bottom ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `border_bottom of
              Css_Value.Border.Width.t option *
              Css_Value.Border.Style.t option *
              Css_Value.Border.Color.t option ]
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_bottom ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.border_bottom ] t
  end
module BorderLeft :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left } Border Left} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_left ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `border_left of
              Css_Value.Border.Width.t option *
              Css_Value.Border.Style.t option *
              Css_Value.Border.Color.t option ]
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_left ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.border_left ] t
  end
module Border :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border } Border} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `border of
              Css_Value.Border.Width.t option *
              Css_Value.Border.Style.t option *
              Css_Value.Border.Color.t option ]
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t -> unit -> [> Css_Property.border ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.border ] t
  end
module BorderTopColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-color } Border Top Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_top_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_top_color ] t
  end
module BorderRightColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-color } Border Right Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_right_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_right_color ] t
  end
module BorderBottomColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-color } Border Bottom Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_bottom_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_bottom_color ] t
  end
module BorderLeftColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-color } Border Left Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_left_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_left_color ] t
  end
module BorderTopStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-style } Border Top Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_top_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_top_style ] t
  end
module BorderRightStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-style } Border Right Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_right_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_right_style ] t
  end
module BorderBottomStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-style } Border Bottom Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_bottom_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_bottom_style ] t
  end
module BorderLeftStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-style } Border Left Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_left_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_left_style ] t
  end
module BorderTopWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-width } Border Top Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_top_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_top_width ] t
  end
module BorderRightWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-width } Border Right Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_right_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_right_width ] t
  end
module BorderBottomWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-width } Border Bottom Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_bottom_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_bottom_width ] t
  end
module BorderLeftWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-width } Border Left Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.border_left_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_left_width ] t
  end
module Bottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-bottom } Bottom} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.bottom ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.bottom ] t
  end
module CaptionSide :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-caption-side } Caption Side} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.caption_side ]
    module Value :
      sig
        type t = [ `bottom | `inherit_ | `initial | `top | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.caption_side ] t
  end
module Clear :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#flow-control } Clear} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.clear ]
    module Value :
      sig
        type value = [ `both | `left | `none | `right ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.clear ] t
  end
module Clip :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-clip } Clip} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.clip ]
    module Value :
      sig
        type value = [ Css_Value.Length.t | `auto ]
        val show_value : value -> string
        type t = [ Css_Value.Global.t | `rect of value * value * value * value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.clip ] t
  end
module Color :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-color } Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.color ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | Css_Value.Color.t ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.color ] t
  end
module CueAfter :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-after } Cue After} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.cue_after ]
    val make : Css_Value.UriOrNone.t -> [> Css_Property.cue_after ] t
  end
module CueBefore :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-before } Cue Before} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.cue_before ]
    val make : Css_Value.UriOrNone.t -> [> Css_Property.cue_before ] t
  end
module Cue :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue } Cue} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.cue ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `cue of Css_Value.UriOrNone.t * Css_Value.UriOrNone.t ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.cue ] t
  end
module Cursor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-cursor} Cursor} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.cursor ]
    module Value :
      sig
        type value =
            [ `auto
            | `crosshair
            | `default
            | `e_resize
            | `help
            | `move
            | `n_resize
            | `ne_resize
            | `nw_resize
            | `pointer
            | `progress
            | `s_resize
            | `se_resize
            | `sw_resize
            | `text
            | `w_resize
            | `wait ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
          [ Css_Value.Global.t
          | `cursor_uri of Css_Value.Uri.t list * value | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.cursor ] t
  end
module Direction :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-direction} Direction} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.direction ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `rtl | `ltr ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.direction ] t
  end
module Display :
  sig
    (**
     {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-display} Display}

     The display property is special: it overrides the default display style of 
     an element. It's treated differently in order to keep things type safe.

     Instead of providing a [make] function, this module provides a function for
     each display style that takes a ruleset and creates an overrided ruleset.

     For example, {!val:block} returns {!type:Css_Property.override_block} 
     [Js.Dict.t]. 
     These types are used by {!module:Html_Nodes}  to provide override versions 
     of each constructor.

     {!val:none} is the only function that's analogous to [make], and creates
     a [display: none] property for general purpose use.
     *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.display' ]

    val none : unit -> [> Css_Property.display' ] t
    val flex :
      Css_Property.flexbox Css_Property.t Js.Dict.t ->
      Css_Property.Override.flex Css_Property.t Js.Dict.t
    val inline_block :
      Css_Property.inline_block Css_Property.t Js.Dict.t ->
      Css_Property.Override.inline_block Css_Property.t Js.Dict.t
    val inline_flex :
      Css_Property.inline_flex Css_Property.t Js.Dict.t ->
      Css_Property.Override.inline_flex Css_Property.t Js.Dict.t
  end
module Elevation :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-elevation} Elevation} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.elevation ]
    module Value :
      sig
        type value = [ `above | `below | `higher | `level | `lower ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | Css_Value.Angle.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.elevation ] t
  end
module EmptyCells :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-empty-cells} Empty Cells} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.empty_cells ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `show | `hide ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.empty_cells ] t
  end

module Flex :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-property} Flex} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `none
          | `flex of
              float option * float option * Css_Value.LengthPercent.t option ]
        val show : t -> string
      end
    val make :
      ?grow:float ->
      ?shrink:float ->
      ?basis:Css_Value.LengthPercent.t -> unit -> [> Css_Property.flex ] t
    val make_value :
      [ Css_Value.Global.t | `none ] -> [> Css_Property.flex ] t
  end
module FlexBasis :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-basis-property} Flex Basis} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex_basis ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.flex_basis ] t
  end
module FlexDirection :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-direction-property} Flex Direction} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex_direction ]
    val make :
      Css_Value.Flex.Direction.t -> [> Css_Property.flex_direction ] t
  end
module FlexFlow :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-flow-property} Flex Flow} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex_flow ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `flow of Css_Value.Flex.Direction.t * Css_Value.Flex.Wrap.t ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.flex_flow ] t
  end
module FlexGrow :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-grow-property} Flex Grow} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex_grow ]
    val make : float -> [> Css_Property.flex_grow ] t
  end
module FlexShrink :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-shrink-property} Flex Shrink} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex_shrink ]
    val make : float -> [> Css_Property.flex_shrink ] t
  end
module FlexWrap :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-wrap-property} Flex Wrap} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.flex_wrap ]
    val make : Css_Value.Flex.Wrap.t -> [> Css_Property.flex_wrap ] t
  end
module Float :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-float} Float} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.float_ ]
    module Value :
      sig
        type value = [ `left | `none | `right ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.float_ ] t
  end
module FontFamily :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font Family} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.font_family ]
    val make : Css_Value.Font.Family.t -> [> Css_Property.font_family ] t
  end
module FontSize :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font Size} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.font_size ]
    val make : Css_Value.Font.Size.t -> [> Css_Property.font_size ] t
  end
module FontStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.font_style ]
    val make : Css_Value.Font.Style.t -> [> Css_Property.font_style ] t
  end
module FontVariant :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font Variant} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.font_variant ]
    val make : Css_Value.Font.Variant.t -> [> Css_Property.font_variant ] t
  end
module FontWeight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.font_weight ]
    val make : Css_Value.Font.Weight.t -> [> Css_Property.font_weight ] t
  end
module Font :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-shorthand } Font} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.font ]
    module Value :
      sig
        type value =
            [ `caption
            | `icon
            | `menu
            | `message_box
            | `small_caption
            | `status_bar ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type font =
            Css_Value.Font.Style.t option * Css_Value.Font.Variant.t option *
            Css_Value.Font.Weight.t option * Css_Value.Font.Size.t *
            Css_Value.LineHeight.t option * Css_Value.Font.Family.t
        type t = [ Css_Value.Global.t | `font of font | value ]
        val show : t -> string
      end
    val make :
      ?style:Css_Value.Font.Style.t ->
      ?variant:Css_Value.Font.Variant.t ->
      ?weight:Css_Value.Font.Weight.t ->
      ?line_height:Css_Value.LineHeight.t ->
      Css_Value.Font.Size.t ->
      Css_Value.Font.Family.t -> [> Css_Property.font ] t
    val make_value :
      [ Css_Value.Global.t | Value.value ] -> [> Css_Property.font ] t
  end
module Height :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.height ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.height ] t
  end
module JustifyContent :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#justify-content-property} Justify Content} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.justify_content ]
    module Value :
      sig
        type value =
            [ `center
            | `flex_end
            | `flex_start
            | `space_around
            | `space_between ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.justify_content ] t
  end
module Left :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-left} Left} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.left ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.left ] t
  end
module LetterSpacing :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter Spacing} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.letter_spacing ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.letter_spacing ] t
  end
module LineHeight :
  sig
    (** 
     {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-line-height} Line Height}
     (see {{: https://www.w3.org/TR/CSS22/visudet.html#leading } leading})
     *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.line_height ]
    val make : Css_Value.LineHeight.t -> [> Css_Property.line_height ] t
  end
module ListStyleImage :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Image} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.list_style_image ]
    val make :
      Css_Value.ListStyle.Image.t -> [> Css_Property.list_style_image ] t
  end
module ListStylePosition :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Position} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.list_style_position ]
    val make :
      Css_Value.ListStyle.Position.t -> [> Css_Property.list_style_position ] t
  end
module ListStyleType :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Type} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.list_style_type ]
    val make :
      Css_Value.ListStyle.Type.t -> [> Css_Property.list_style_type ] t
  end
module ListStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list_style } List Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.list_style ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `list_style of
              Css_Value.ListStyle.Type.t option *
              Css_Value.ListStyle.Position.t option *
              Css_Value.ListStyle.Image.t option ]
        val show : t -> string
      end
    val make :
      ?type_:Css_Value.ListStyle.Type.t ->
      ?position:Css_Value.ListStyle.Position.t ->
      ?image:Css_Value.ListStyle.Image.t ->
      unit -> [> Css_Property.list_style ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.list_style] t
  end
module Margin :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin } Margin} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.margin ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | Css_Value.LengthPercent.t
          | `margin of
              Css_Value.LengthPercent.t *
              Css_Value.LengthPercent.t *
              Css_Value.LengthPercent.t *
              Css_Value.LengthPercent.t ]
        val show : t -> string
      end

    val make :
      top:Css_Value.LengthPercent.t ->
      right:Css_Value.LengthPercent.t ->
      bottom:Css_Value.LengthPercent.t ->
      left:Css_Value.LengthPercent.t -> [> Css_Property.margin ] t
    val make_value : [ Css_Value.Global.t | Css_Value.LengthPercent.t ] ->
      [> Css_Property.margin ] t
  end
module MarginTop :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-top } Margin Top} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.margin_top ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_top ] t
  end
module MarginRight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-right } Margin Right} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.margin_right ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_right ] t
  end
module MarginBottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-bottom } Margin Bottom} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.margin_bottom ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_bottom ] t
  end
module MarginLeft :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-left } Margin Left} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.margin_left ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_left ] t
  end
module MaxHeight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-height} Max Height} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.max_height ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.max_height ] t
  end
module MaxWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-width} Max Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.max_width ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.max_width ] t
  end
module MinHeight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-height} Min Height} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.min_height ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.min_height ] t
  end
module MinWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-width} Min Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.min_width ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.min_width ] t
  end
module Order :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-order } Order} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.order ]
    val make : int -> [> Css_Property.order ] t
  end
module Orphans :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-orphans } Orphans} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.orphans ]
    val make : Css_Value.BreakInside.t -> [> Css_Property.orphans ] t
  end
module OutlineColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-color} Outline Color} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.outline_color ]
    val make : Css_Value.Outline.Color.t -> [> Css_Property.outline_color ] t
  end
module OutlineStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-style} Outline Style} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.outline_style ]
    val make : Css_Value.Outline.Style.t -> [> Css_Property.outline_style ] t
  end
module OutlineWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-width} Outline Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.outline_width ]
    val make : Css_Value.Outline.Width.t -> [> Css_Property.outline_width ] t
  end

module Outline :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline} Outline} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.outline ]
    module Value :
      sig
        type t =
            [ Css_Value.Global.t
            | `outline of
                Css_Value.Outline.Color.t option *
                Css_Value.Outline.Style.t option *
                Css_Value.Outline.Width.t option ]
        val show : t -> string
      end
    val make :
      ?color:Css_Value.Outline.Color.t ->
      ?style:Css_Value.Outline.Style.t ->
      ?width:Css_Value.Outline.Width.t -> unit -> [> Css_Property.outline ] t
    val make_value : Css_Value.Global.t -> [> Css_Property.outline ] t
  end
module Overflow :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-overflow} Overflow} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.overflow ]
    module Value :
      sig
        type value = [ `auto | `hidden | `scroll | `visible ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.overflow ] t
  end
module PaddingTop :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-top} Padding Top} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.padding_top ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_top ] t
  end
module PaddingRight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-right} Padding Right} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.padding_right ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_right ] t
  end
module PaddingBottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-bottom} Padding Bottom} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.padding_bottom ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_bottom ] t
  end
module PaddingLeft :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-left} Padding Left} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.padding_left ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_left ] t
  end
module Padding :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding } Padding} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.padding ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | Css_Value.LengthPercent.t
          | `padding of
              Css_Value.LengthPercent.t *
              Css_Value.LengthPercent.t *
              Css_Value.LengthPercent.t *
              Css_Value.LengthPercent.t ]
        val show : t -> string
      end

    val make :
      top:Css_Value.LengthPercent.t ->
      right:Css_Value.LengthPercent.t ->
      bottom:Css_Value.LengthPercent.t ->
      left:Css_Value.LengthPercent.t -> [> Css_Property.padding ] t
    val make_value : [ Css_Value.Global.t | Css_Value.LengthPercent.t ] ->
      [> Css_Property.padding ] t
  end
module PageBreakAfter :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-after } Page Break After} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.page_break_after ]
    val make : Css_Value.PageBreak.t -> [> Css_Property.page_break_after ] t
  end
module PageBreakBefore :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-before } Page Break Before} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.page_break_before ]
    val make : Css_Value.PageBreak.t -> [> Css_Property.page_break_before ] t
  end
module PageBreakInside :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-inside } Page Break Inside} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.page_break_inside ]
    val make : Css_Value.PageBreak.inside -> [> Css_Property.page_break_inside ] t
  end
module PauseAfter :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-after} Pause After} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.pause_after ]
    val make : Css_Value.TimePercent.t -> [> Css_Property.pause_after ] t
  end
module PauseBefore :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-before} Pause Before} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.pause_before ]
    val make : Css_Value.TimePercent.t -> [> Css_Property.pause_before ] t
  end
module Pause :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause} Pause} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.pause ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `pause of Css_Value.TimePercent.t * Css_Value.TimePercent.t ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.pause ] t
  end
module PitchRange :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch-range} Pitch Range} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.pitch_range ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `range of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.pitch_range ] t
  end
module Pitch :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch} Pitch} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.pitch ]
    module Value :
      sig
        type value = [ `high | `low | `medium | `x_high | `x_low ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | Css_Value.Frequency.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.pitch ] t
  end
module PlayDuring :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-play-during} Play During} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.play_during ]
    module Value :
      sig
        type value = [ `mix | `repeat ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
          [ Css_Value.Global.t | Css_Value.Uri.t | `sound of Css_Value.Uri.t * value
          | `auto | `none ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.play_during ] t
  end
module Position :
  sig
    (**
     {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-position} Position}

     [Css_Property.positioned] properties only makes sense in the context of 
     elements that are not statically positioned. For example, in CSS if you 
     applied  the [top] style to a statically positioned element nothing would 
     happen, it would silently fail. We can avoid that with Ocaml's type system.

     Due to this, in order to provide some type safety [Position.make] takes a 
     [Css_Property.positioned] ruleset for non-statically positioned values 
     and returns a [\[< Css_Property.display\]] ruleset.
     *)

    type 'a t = 'a Css_Property.t Js.Dict.t constraint 'a = [< Css_Property.display ]
    module Value :
      sig
        type t =
            [ `absolute of Css_Property.positioned Css_Property.t Js.Dict.t
            | `fixed of Css_Property.positioned Css_Property.t Js.Dict.t
            | `relative of Css_Property.positioned Css_Property.t Js.Dict.t
            | `static ]
        val make : t -> [> Css_Property.position ] Css_Property.t
      end
    val make : Value.t -> [< Css_Property.display ] t
  end
module Richness :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-richness} Richness} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.richness ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `richness of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.richness ] t
  end
module Right :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-right} Right} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.right ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.right ] t
  end
module Size :
  sig
    (** {{: https://drafts.csswg.org/css-page-3/#page-size-prop } Size} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.size ]
    module Value :
      sig
        type t =
          [ Css_Value.Global.t
          | `length of Css_Value.LengthPercent.t * Css_Value.LengthPercent.t
          | `auto ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.size ] t
  end
module SpeakHeader :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-header} Speak Header} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.speak_header ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `once | `always ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak_header ] t
  end
module SpeakNumeral :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-numeral} Speak Numeral} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.speak_numeral ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `digits | `continuous ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak_numeral ] t
  end
module SpeakPunctuation :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-punctuation} Speak Punctuation} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.speak_punctuation ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `code | `none ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak_punctuation ] t
  end
module Speak :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak} Speak} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.speak ]
    module Value :
      sig
        type value = [ `none | `normal | `spell_out ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak ] t
  end
module SpeechRate :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speech-rate} Speech Rate} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.speech_rate ]
    module Value :
      sig
        type value =
            [ `fast | `faster | `medium | `slow | `slower | `x_fast | `x_slow ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value | `rate of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speech_rate ] t
  end
module Stress :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-stress} Stress} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.stress ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `stress of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.stress ] t
  end
module TableLayout :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-table-layout} Table Layout} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.table_layout ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | `auto | `fixed ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.table_layout ] t
  end
module TextAlign :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text Align } *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.text_align ]
    module Value :
      sig
        type value = [ `center | `justify | `left | `right ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.text_align ] t
  end
module TextDecoration :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-decoration} Text Decoration} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.text_decoration ]
    module Value :
      sig
        type value =
            [ `blink | `line_through | `none | `overline | `underline ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.text_decoration ] t
  end
module TextIndent :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-indent} Text Indent} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.text_indent ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.text_indent ] t
  end
module TextTransform :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-transform} Text Transform} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.text_transform ]
    module Value :
      sig
        type value = [ `capitalize | `lowercase | `none | `uppercase ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.text_transform ] t
  end
module Top :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-top} Top} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.top ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.top ] t
  end
module UnicodeBidi :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-unicode-bidi} Unicode Bidi} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.unicode_bidi ]
    module Value :
      sig
        type value = [ `bidi_override | `embed | `normal ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.unicode_bidi ] t
  end

module VerticalAlign :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical Align} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.vertical_align ]

    module Value :
      sig
        module ParentRelative :
          sig
            type value =
                [ `baseline
                | `middle
                | `sub
                | `super
                | `text_bottom
                | `text_top ]
            val valueToJs : value -> string
            val valueFromJs : string -> value option
            type t =
              [ Css_Value.Length.t | Css_Value.Percent.t | value ]
            val show : t -> string
          end
        module LineRelative :
          sig
            type t = [ `bottom | `top ]
            val tToJs : t -> string
            val tFromJs : string -> t option
            val show : t -> string
          end
        type t =
          [ Css_Value.Global.t | ParentRelative.t | LineRelative.t ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.vertical_align ] t
  end
module Visibility :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-visibility} Visibility} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.visibility ]
    module Value :
      sig
        type value = [ `collapse | `hidden | `visible ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.visibility ] t
  end
module VoiceFamily :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-voice-family} Voice Family} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.voice_family ]
    module Value :
      sig
        type generic = [ `child | `female | `male ]
        val genericToJs : generic -> string
        val genericFromJs : string -> generic option
        type t = [ Css_Value.Global.t | generic | `specific of string ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.voice_family ] t
  end
module Volume :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-volume} Volume} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.volume ]
    module Value :
      sig
        type value =
            [ `loud | `medium | `silent | `soft | `x_loud | `x_soft ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
          [ Css_Value.Global.t | Css_Value.Percent.t | `volume of float
          | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.volume ] t
  end
module WhiteSpace :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-white-space} White Space} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.white_space ]
    module Value :
      sig
        type value = [ `normal | `nowrap | `pre | `pre_line | `pre_wrap ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ Css_Value.Global.t | value ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.white_space ] t
  end
module Widows :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-widows } Widows} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.widows ]
    val make : Css_Value.BreakInside.t -> [> Css_Property.widows ] t
  end
module Width :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-width} Width} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.width ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.width ] t
  end
module WordSpacing :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-word-spacing} Word Spacing} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.word_spacing ]
    module Value :
      sig
        type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.word_spacing ] t
  end
module ZIndex :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-z-index} Z-Index} *)

    type +'a t = 'a Css_Property.t constraint 'a = [> Css_Property.z_index ]
    val make : int -> [> Css_Property.z_index ] t
  end
module Ruby :
  sig
    module RubyPosition :
      sig
        type +'a t = 'a Css_Property.t
          constraint 'a = [> Css_Property.ruby_position ]
        module Value :
          sig
            type vertical = [ `inter_character | `over | `under ]
            val verticalToJs : vertical -> string
            val verticalFromJs : string -> vertical option
            type horizontal = [ `left | `right ]
            val horizontalToJs : horizontal -> string
            val horizontalFromJs : string -> horizontal option
            type t =
                [ `inherit_
                | `initial
                | `position of vertical * horizontal
                | `unset ]
            val show : t -> string
          end
        val make : Value.t -> [> Css_Property.ruby_position ] t
      end
    module RubyMerge :
      sig
        type +'a t = 'a Css_Property.t
          constraint 'a = [> Css_Property.ruby_merge ]
        module Value :
          sig
            type value = [ `auto | `collapse | `separate ]
            val valueToJs : value -> string
            val valueFromJs : string -> value option
            type t =
                [ `auto
                | `collapse
                | `inherit_
                | `initial
                | `separate
                | `unset ]
            val show : t -> string
          end
        val make : Value.t -> [> Css_Property.ruby_merge ] t
      end
    module RubyAlign :
      sig
        type +'a t = 'a Css_Property.t
          constraint 'a = [> Css_Property.ruby_align ]
        module Value :
          sig
            type value =
                [ `center | `space_around | `space_between | `start ]
            val valueToJs : value -> string
            val valueFromJs : string -> value option
            type t =
                [ `center
                | `inherit_
                | `initial
                | `space_around
                | `space_between
                | `start
                | `unset ]
            val show : t -> string
          end
        val make : Value.t -> [> Css_Property.ruby_align ] t
      end
  end
