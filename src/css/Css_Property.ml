(**
 This module defines the CSS properties

 The types correspond to the {{: https://www.w3.org/TR/CSS2/about.html#applies-to } applies to} 
 description for styles for which display property is required for it to render

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } CSS 2.2 full property table} for reference, and the

 {{: https://www.w3.org/TR/CSS22/sample.html } Default styles}
 *)

type 'style t

module Type = struct
  type align_content and align_items and align_self and azimuth
   and background_attachment and background_color and background_image
   and background_position and background_repeat and background
   and border_collapse and border_color and border_spacing and border_style
   and border_top and border_right and border_bottom and border_left
   and border_top_color and border_right_color and border_bottom_color
   and border_left_color and border_top_style and border_right_style
   and border_bottom_style and border_left_style and border_top_width
   and border_right_width and border_bottom_width and border_left_width
   and border_width and border and bottom and caption_side and clear and clip
   and color (*and content and counter_increment and counter_reset*)
   and cue_after and cue_before and cue and cursor and direction and display 
   and elevation and empty_cells and flex' and flex_basis and flex_direction
   and flex_flow and flex_grow and flex_shrink and flex_wrap and float_
   and font_family and font_size and font_style and font_variant and font_weight
   and font and height and justify_content and left and letter_spacing
   and line_height and list_style_image and list_style_position
   and list_style_type and list_style and margin_top and margin_right
   and margin_bottom and margin_left and margin and max_height and max_width
   and min_height and min_width and order and orphans and outline_color
   and outline_style and outline_width and outline and overflow and padding_top
   and padding_right and padding_bottom and padding_left and padding
   and page_break_after and page_break_before and page_break_inside
   and pause_after and pause_before and pause and pitch_range and pitch
   and play_during and position (*and quotes*) and richness and right
   and speak_header and speak_numeral and speak_punctuation and speak
   and speech_rate and stress and table_layout and text_align
   and text_decoration and text_indent and text_transform and top
   and unicode_bidi and vertical_align and visibility and voice_family
   and volume and white_space and widows and width and word_spacing and z_index
end

module Style = struct
  type align_content = [ `align_content of Type.align_content t ]
   and align_items = [ `align_items of Type.align_items t ]
   and align_self = [ `align_self of Type.align_self t ]
   and azimuth = [ `azimuth of Type.azimuth t ]
   and background_attachment =
         [ `background_attachment of Type.background_attachment t ]
   and background_color = [ `background_color of Type.background_color t ]
   and background_image = [ `background_image of Type.background_image t ]
   and background_position =
         [ `background_position of Type.background_position t ]
   and background_repeat = [ `background_repeat of Type.background_repeat t ]
   and background = [ `background of Type.background t ]
   and border_collapse = [ `border_collapse of Type.border_collapse t ]
   and border_color = [ `border_color of Type.border_color t ]
   and border_spacing = [ `border_spacing of Type.border_spacing t ]
   and border_style = [ `border_style of Type.border_style t ]
   and border_top = [ `border_top of Type.border_top t ]
   and border_right = [ `border_right of Type.border_right t ]
   and border_bottom = [ `border_bottom of Type.border_bottom t ]
   and border_left = [ `border_left of Type.border_left t ]
   and border_top_color = [ `border_top_color of Type.border_top_color t ]
   and border_right_color = [ `border_right_color of Type.border_right_color t ]
   and border_bottom_color =
     [ `border_bottom_color of Type.border_bottom_color t ]
   and border_left_color = [ `border_left_color of Type.border_left_color t ]
   and border_top_style = [ `border_top_style of Type.border_top_style t ]
   and border_right_style = [ `border_right_style of Type.border_right_style t ]
   and border_bottom_style =
     [ `border_bottom_style of Type.border_bottom_style t ]
   and border_left_style = [ `border_left_style of Type.border_left_style t ]
   and border_top_width = [ `border_top_width of Type.border_top_width t ]
   and border_right_width = [ `border_right_width of Type.border_right_width t ]
   and border_bottom_width =
     [ `border_bottom_width of Type.border_bottom_width t ]
   and border_left_width = [ `border_left_width of Type.border_left_width t ]
   and border_width = [ `border_width of Type.border_width t ]
   and border = [ `border of Type.border t ]
   and bottom = [ `bottom of Type.bottom t ]
   and caption_side = [ `caption_side of Type.caption_side t ]
   and clear = [ `clear of Type.clear t ]
   and clip = [ `clip of Type.clip t ]
   and color = [ `color of Type.color t ]
   (*and content and counter_increment and counter_reset*)
   and cue_after = [ `cue_after of Type.cue_after t ]
   and cue_before = [ `cue_before of Type.cue_before t ]
   and cue = [ `cue of Type.cue t ]
   and cursor = [ `cursor of Type.cursor t ]
   and direction = [ `direction of Type.direction t ]
   and display' = [ `display of Type.display t ]
   and elevation = [ `elevation of Type.elevation t ]
   and empty_cells = [ `empty_cells of Type.empty_cells t ]
   and flex' = [ `flex of Type.flex' t ]
   and flex_basis = [ `flex_basis of Type.flex_basis t ]
   and flex_direction = [ `flex_direction of Type.flex_direction t ]
   and flex_flow = [ `flex_flow of Type.flex_flow t ]
   and flex_grow = [ `flex_grow of Type.flex_grow t ]
   and flex_shrink = [ `flex_shrink of Type.flex_shrink t ]
   and flex_wrap = [ `flex_wrap of Type.flex_wrap t ]
   and float_ = [ `float of Type.float_ t ]
   and font_family = [ `font_family of Type.font_family t ]
   and font_size = [ `font_size of Type.font_size t ]
   and font_style = [ `font_style of Type.font_style t ]
   and font_variant = [ `font_variant of Type.font_variant t ]
   and font_weight = [ `font_weight of Type.font_weight t ]
   and font = [ `font of Type.font t ]
   and height = [ `height of Type.height t ]
   and justify_content = [ `justify_content of Type.justify_content t ]
   and left = [ `left of Type.left t ]
   and letter_spacing = [ `letter_spacing of Type.letter_spacing t ]
   and line_height = [ `line_height of Type.line_height t ]
   and list_style_image = [ `list_style_image of Type.list_style_image t ]
   and list_style_position =
     [ `list_style_position of Type.list_style_position t ]
   and list_style_type = [ `list_style_type of Type.list_style_type t ]
   and list_style = [ `list_style of Type.list_style t ]
   and margin_top = [ `margin_top of Type.margin_top t ]
   and margin_right = [ `margin_right of Type.margin_right t ]
   and margin_bottom = [ `margin_bottom of Type.margin_bottom t ]
   and margin_left = [ `margin_left of Type.margin_left t ]
   and margin = [ `margin of Type.margin t ]
   and max_height = [ `max_height of Type.max_height t ]
   and max_width = [ `max_width of Type.max_width t ]
   and min_height = [ `min_height of Type.min_height t ]
   and min_width = [ `min_width of Type.min_width t ]
   and order = [ `order of Type.order t ]
   and orphans = [ `orphans of Type.orphans t ]
   and outline_color = [ `outline_color of Type.outline_color t ]
   and outline_style = [ `outline_style of Type.outline_style t ]
   and outline_width = [ `outline_width of Type.outline_width t ]
   and outline = [ `outline of Type.outline t ]
   and overflow = [ `overflow of Type.overflow t ]
   and padding_top = [ `padding_top of Type.padding_top t ]
   and padding_right = [ `padding_right of Type.padding_right t ]
   and padding_bottom = [ `padding_bottom of Type.padding_bottom t ]
   and padding_left = [ `padding_left of Type.padding_left t ]
   and padding = [ `padding of Type.padding t ]
   and page_break_after = [ `page_break_after of Type.page_break_after t ]
   and page_break_before = [ `page_break_before of Type.page_break_before t ]
   and page_break_inside = [ `page_break_inside of Type.page_break_inside t ]
   and pause_after = [ `pause_after of Type.pause_after t ]
   and pause_before = [ `pause_before of Type.pause_before t ]
   and pause = [ `pause of Type.pause t ]
   and pitch_range = [ `pitch_range of Type.pitch_range t ]
   and pitch = [ `pitch of Type.pitch t ]
   and play_during = [ `play_during of Type.play_during t ]
   and position = [ `position of Type.position t ]
   (*and quotes*)
   and richness = [ `richness of Type.richness t ]
   and right = [ `right of Type.right t ]
   and speak_header = [ `speak_header of Type.speak_header t ]
   and speak_numeral = [ `speak_numeral of Type.speak_numeral t ]
   and speak_punctuation = [ `speak_punctuation of Type.speak_punctuation t ]
   and speak = [ `speak of Type.speak t ]
   and speech_rate = [ `speech_rate of Type.speech_rate t ]
   and stress = [ `stress of Type.stress t ]
   and table_layout = [ `table_layout of Type.table_layout t ]
   and text_align = [ `text_align of Type.text_align t ]
   and text_decoration = [ `text_decoration of Type.text_decoration t ]
   and text_indent = [ `text_indent of Type.text_indent t ]
   and text_transform = [ `text_transform of Type.text_transform t ]
   and top = [ `top of Type.top t ]
   and unicode_bidi = [ `unicode_bidi of Type.unicode_bidi t ]
   and vertical_align = [ `vertical_align of Type.vertical_align t ]
   and visibility = [ `visibility of Type.visibility t ]
   and voice_family = [ `voice_family of Type.voice_family t ]
   and volume = [ `volume of Type.volume t ]
   and white_space = [ `white_space of Type.white_space t ]
   and widows = [ `widows of Type.widows t ]
   and width = [ `width of Type.width t ]
   and word_spacing = [ `word_spacing of Type.word_spacing t ]
   and z_index = [ `z_index of Type.z_index t ]


  type aligns =
    [ align_content | align_items | align_self ]

  type backgrounds =
    [ background_attachment | background_color | background_image
    | background_position | background_repeat | background ]

  type borders =
    [ border_top | border_right | border_bottom | border_left | border ]

  type border_colors =
    [ border_top_color  | border_right_color | border_bottom_color
    | border_left_color | border_color ]

  type border_styles =
    [ border_top_style | border_right_style | border_bottom_style
    | border_left_style | border_style ]

  type border_widths =
    [ border_top_width | border_right_width | border_bottom_width
    | border_left_width | border_width ]

  type heights =
    [ height | max_height | min_height ]

  type cues =
    [ cue_after | cue_before | cue ]

  type flexs =
    [ flex' | flex_basis | flex_direction | flex_flow | flex_grow
    | flex_shrink | flex_wrap ]

  type fonts =
    [ font_family | font_size | font_style | font_variant | font_weight | font ]

  type margins =
    [ margin | margin_top | margin_right | margin_bottom | margin_left ]

  type paddings =
    [ padding | padding_top | padding_right | padding_bottom | padding_left ]

  type list_styles =
    [ list_style_image | list_style_position | list_style_type | list_style ]

  type outlines =
    [ outline_color | outline_style | outline_width | outline ]

  type page_breaks =
    [ page_break_before | page_break_after | page_break_inside ]

  type page_breaks_inside =
    [ orphans | widows ]

  type pauses =
    [ pause_after | pause_before | pause ]

  type positions =
    [ top | right | bottom | left ]

  type speaks =
    [ speak_header | speak_numeral | speak_punctuation | speak ]

  type texts =
    [ text_decoration | text_transform | text_align | text_indent ]

  type widths =
    [ width | max_width | min_width ]
end

include Style


module AppliesTo = struct
  (** {{: https://www.w3.org/TR/CSS22/about.html#applies-to } Applies to} *)
  (** {{: https://www.w3.org/TR/CSS22/sample.html } Default styles} *)

  type any =
    [ azimuth | backgrounds | border_colors | border_styles | border_widths
    | borders | color | cues | cursor | direction | display' | elevation
    | float_ | fonts | letter_spacing | line_height | outlines | pauses
    | pitch_range | pitch | play_during | position | richness
    | speak_numeral | speak_punctuation | speak | speech_rate | stress
    | text_decoration | text_transform | unicode_bidi | visibility
    | voice_family | volume | white_space | word_spacing ]

  type block =
    [ clear | heights | margins | overflow | paddings | page_breaks
    | page_breaks_inside | text_align | text_indent | widths | any ]

  type flex =
    [ aligns | flexs | heights | justify_content | margins | order | paddings
    | widths | any ]

  type list_item =
    [ heights | list_styles | margins | paddings | widths | any ]

  type positioned =
    [ clip | heights | margins | paddings | positions | widths | z_index | any ]

  (**
   * {{: https://www.w3.org/TR/css-display-3/#replaced-element } Replaced inline elements}
   * ({{: https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element } see list})
   *)
  type replaced =
    [ heights | margins | paddings | vertical_align | widths | any ]

  (** Non-replaced inline elements *)
  type non_replaced =
    [ margins | paddings | vertical_align | any ]

  module Combined = struct
    type inline = [ replaced | non_replaced ]

    type inline_block = [ inline | block ]

    type inline_flex = [ inline | flex ]
  end

  include Combined

  type table_header_group =
    [ heights | speak_header | widths | any ]

  type table_footer_group =
    [ heights | widths | any ]

  type table_caption =
    [ caption_side | heights | margins | paddings | widths | any ]

  type table =
    [ border_collapse | border_spacing | heights | margins | paddings
    | speak_header | table_layout | widths | any ]

  type inline_table =
    [ border_collapse | border_spacing | heights | margins | paddings
    | table_layout | widths | any ]

  type table_cell =
    [ empty_cells | heights | paddings | speak_header | vertical_align
    | widths | any ]

  type table_column =
    [ widths | any ]

  type table_column_group =
    [ widths | any ]

  type table_row =
    [ heights | any ]

  type table_row_group =
    [ heights | any ]

  type display =
    [ block | flex | inline | table | inline_table | table_cell | list_item
    | table_caption | table_column | table_column_group | table_header_group
    | table_footer_group | positioned ]

  let to_block x = (x :> block)
  and to_replaced x = (x :> replaced)
  and to_non_replaced x = (x :> non_replaced)
  and to_inline x = (x :> inline)
  and to_table x = (x :> table)
  and to_inline_table x = (x :> inline_table)
  and to_table_cell x = (x :> table_cell)
  and to_list_item x = (x :> list_item)
  and to_display x = (x :> display)
end

include AppliesTo


module Position = struct
  module Type = struct
    type static and relative and absolute and fixed
  end

  type static = [ `static of Type.static ]
   and relative = [ `relative of Type.relative ]
   and absolute = [ `absolute of Type.absolute ]
   and fixed = [ `fixed of Type.fixed ]

  type t = [ static | relative | absolute | fixed ]
end


module MediaGroup = struct
  (** {{: https://www.w3.org/TR/CSS22/media.html#media-groups } Media groups} *)

  type any = display'

  type aural =
    [ azimuth | cues | elevation | pauses | pitch_range | pitch | play_during
    | richness | speak_header | speak_numeral | speak_punctuation | speak
    | speech_rate | stress | voice_family | volume | any ]

  type interactive =
    [ cursor | outlines | any ]

  type visual =
    [ aligns | backgrounds | border_collapse | border_colors | border_spacing
    | border_styles | border_widths | borders | caption_side | clear | clip
    | color | cursor | direction | empty_cells | flexs | float_ | fonts
    | heights | justify_content | letter_spacing | line_height | list_styles
    | margins | order | outlines | overflow | paddings | page_breaks
    | page_breaks_inside | positions | table_layout | texts | unicode_bidi
    | vertical_align | visibility | white_space | widths | word_spacing
    | z_index | any ]

  (**
   {{: https://www.w3.org/TR/CSS22/page.html#page-margins } Page margins}, 
   {{: https://www.w3.org/TR/CSS22/page.html#page-breaks } Page breaks}, and 
   {{: https://www.w3.org/TR/CSS22/page.html#break-inside } Breaks inside elements}
   *)
  type paged = [ margins | page_breaks | page_breaks_inside | any ]

  let to_aural x = (x :> aural)
  and to_interactive x = (x :> interactive)
  and to_visual x = (x :> visual)
end


module MediaType = struct
  (** {{: https://www.w3.org/TR/CSS22/media.html#media-groups } Media type table} *)

  type braille = MediaGroup.interactive
  type embossed = MediaGroup.paged
  type handheld =
    [ MediaGroup.aural | MediaGroup.paged | MediaGroup.interactive
    | MediaGroup.visual ]
  type print =
    [ MediaGroup.paged | MediaGroup.visual ]
  type projection =
    [ MediaGroup.paged | MediaGroup.interactive | MediaGroup.visual ]
  type screen =
    [ MediaGroup.aural | MediaGroup.interactive | MediaGroup.visual ]
  type speech =
    [ MediaGroup.aural | MediaGroup.interactive ]
  type tty =
    [ MediaGroup.visual | MediaGroup.interactive ]
  type tv =
    [ MediaGroup.aural | MediaGroup.paged | MediaGroup.visual
    | MediaGroup.interactive ]

  let to_handheld x = (x :> handheld)
  and to_print x = (x :> print)
  and to_projection x = (x :> projection)
  and to_screen x = (x :> screen)
  and to_speech x = (x :> speech)
  and to_tty x = (x :> tty)
  and to_tv x = (x :> tv)

  let print_to_display x =
    x |> Js.Dict.map (fun [@bs] p -> ((p :> screen) :> display))
  and screen_to_display x =
    x |> Js.Dict.map (fun [@bs] p -> ((p :> screen) :> display))
  and speech_to_display x =
    x |> Js.Dict.map (fun [@bs] p -> ((p :> speech) :> display))
end


module Convert = struct
  external show: 'a t -> string = "%identity"
end


let show: display -> string = function
| `align_content x         -> Convert.show x
| `align_items x           -> Convert.show x
| `align_self x            -> Convert.show x
| `azimuth x               -> Convert.show x
| `background_attachment x -> Convert.show x
| `background_color x      -> Convert.show x
| `background_image x      -> Convert.show x
| `background_position x   -> Convert.show x
| `background_repeat x     -> Convert.show x
| `background x            -> Convert.show x
| `border_collapse x       -> Convert.show x
| `border_color x          -> Convert.show x
| `border_spacing x        -> Convert.show x
| `border_width x          -> Convert.show x
| `border_style x          -> Convert.show x
| `border_top x            -> Convert.show x
| `border_bottom x         -> Convert.show x
| `border_left x           -> Convert.show x
| `border_right x          -> Convert.show x
| `border x                -> Convert.show x
| `border_top_color x      -> Convert.show x
| `border_right_color x    -> Convert.show x
| `border_bottom_color x   -> Convert.show x
| `border_left_color x     -> Convert.show x
| `border_top_style x      -> Convert.show x
| `border_right_style x    -> Convert.show x
| `border_bottom_style x   -> Convert.show x
| `border_left_style x     -> Convert.show x
| `border_top_width x      -> Convert.show x
| `border_right_width x    -> Convert.show x
| `border_bottom_width x   -> Convert.show x
| `border_left_width x     -> Convert.show x
| `bottom x                -> Convert.show x
| `caption_side x 				 -> Convert.show x
| `clear x                 -> Convert.show x
| `clip x                  -> Convert.show x
| `cue_after x             -> Convert.show x
| `cue_before x            -> Convert.show x
| `cue x                   -> Convert.show x
| `color x                 -> Convert.show x
| `cursor x                -> Convert.show x
| `direction x             -> Convert.show x
| `display x               -> Convert.show x
| `elevation x             -> Convert.show x
| `empty_cells x           -> Convert.show x
| `flex x                  -> Convert.show x
| `flex_basis x            -> Convert.show x
| `flex_direction x        -> Convert.show x
| `flex_flow x             -> Convert.show x
| `flex_grow x             -> Convert.show x
| `flex_shrink x           -> Convert.show x
| `flex_wrap x             -> Convert.show x
| `float x                 -> Convert.show x
| `font_family x           -> Convert.show x
| `font_size x             -> Convert.show x
| `font_style x            -> Convert.show x
| `font_variant x          -> Convert.show x
| `font_weight x           -> Convert.show x
| `font x                  -> Convert.show x
| `height x                -> Convert.show x
| `justify_content x       -> Convert.show x
| `left x                  -> Convert.show x
| `letter_spacing x        -> Convert.show x
| `line_height x           -> Convert.show x
| `list_style_image x      -> Convert.show x
| `list_style_position x   -> Convert.show x
| `list_style_type x       -> Convert.show x
| `list_style x            -> Convert.show x
| `margin x                -> Convert.show x
| `margin_top x            -> Convert.show x
| `margin_right x          -> Convert.show x
| `margin_bottom x         -> Convert.show x
| `margin_left x           -> Convert.show x
| `max_height x            -> Convert.show x
| `max_width x             -> Convert.show x
| `min_height x            -> Convert.show x
| `min_width x             -> Convert.show x
| `order x                 -> Convert.show x
| `orphans x               -> Convert.show x
| `outline_color x         -> Convert.show x
| `outline_style x         -> Convert.show x
| `outline_width x         -> Convert.show x
| `outline x               -> Convert.show x
| `overflow x              -> Convert.show x
| `padding_top x           -> Convert.show x
| `padding_right x         -> Convert.show x
| `padding_bottom x        -> Convert.show x
| `padding_left x          -> Convert.show x
| `padding x               -> Convert.show x
| `page_break_before x     -> Convert.show x
| `page_break_after x      -> Convert.show x
| `page_break_inside x     -> Convert.show x
| `pause_after x           -> Convert.show x
| `pause_before x          -> Convert.show x
| `pause x                 -> Convert.show x
| `pitch_range x           -> Convert.show x
| `pitch x                 -> Convert.show x
| `play_during x           -> Convert.show x
| `position x              -> Convert.show x
| `richness x              -> Convert.show x
| `right x                 -> Convert.show x
| `speak_header x          -> Convert.show x
| `speak_numeral x         -> Convert.show x
| `speak_punctuation x     -> Convert.show x
| `speak x                 -> Convert.show x
| `speech_rate x           -> Convert.show x
| `stress x                -> Convert.show x
| `table_layout x          -> Convert.show x
| `text_align x            -> Convert.show x
| `text_decoration x       -> Convert.show x
| `text_indent x           -> Convert.show x
| `text_transform x        -> Convert.show x
| `top x                   -> Convert.show x
| `unicode_bidi x          -> Convert.show x
| `vertical_align x        -> Convert.show x
| `visibility x            -> Convert.show x
| `voice_family x          -> Convert.show x
| `volume x                -> Convert.show x
| `white_space x           -> Convert.show x
| `widows x                -> Convert.show x
| `width x                 -> Convert.show x
| `word_spacing x          -> Convert.show x
| `z_index x               -> Convert.show x


let show_properties ?(indent=0) properties: string =
  let indent' = Js.String.repeat indent "  "
  in
  properties
  |> Js.Dict.map (fun [@bs] e -> (e :> display))
  |> Js.Dict.entries
  |. Belt.Array.map (fun (key, value) ->
       indent' ^ Util.camel_to_dash key ^": "^ show value ^";")
  |> Js.Array.joinWith "\n"
