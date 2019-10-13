(**
 This module defines the CSS properties

 The types correspond to the {{: https://www.w3.org/TR/CSS2/about.html#applies-to } applies to}
 description for styles for which display property is required for it to render.

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } CSS 2.2 full property table} for reference, and
 the {{: https://www.w3.org/TR/CSS22/sample.html } default styles}.
 *)

type +'style t

module Style = struct
  type align_content = [ `align_content ]
   and align_items = [ `align_items ]
   and align_self = [ `align_self ]
   and animation = [ `animation ]
   and animation_name = [ `animation_name ]
   and animation_duration = [ `animation_duration ]
   and animation_timing_function = [ `animation_timing_function ]
   and animation_iteration_count = [ `animation_iteration_count ]
   and animation_direction = [ `animation_direction ]
   and animation_play_state = [ `animation_play_state ]
   and animation_delay = [ `animation_delay ]
   and animation_fill_mode = [ `animation_fill_mode ]
   and azimuth = [ `azimuth ]
   and background_attachment = [ `background_attachment ]
   and background_color = [ `background_color ]
   and background_image = [ `background_image ]
   and background_position = [ `background_position ]
   and background_repeat = [ `background_repeat ]
   and background_size = [ `background_size ]
   and background = [ `background ]
   and border_collapse = [ `border_collapse ]
   and border_color = [ `border_color ]
   and border_spacing = [ `border_spacing ]
   and border_style = [ `border_style ]
   and border_top = [ `border_top ]
   and border_right = [ `border_right ]
   and border_bottom = [ `border_bottom ]
   and border_left = [ `border_left ]
   and border_top_color = [ `border_top_color ]
   and border_right_color = [ `border_right_color ]
   and border_bottom_color = [ `border_bottom_color ]
   and border_left_color = [ `border_left_color ]
   and border_top_style = [ `border_top_style ]
   and border_right_style = [ `border_right_style ]
   and border_bottom_style = [ `border_bottom_style ]
   and border_left_style = [ `border_left_style ]
   and border_top_width = [ `border_top_width ]
   and border_right_width = [ `border_right_width ]
   and border_bottom_width = [ `border_bottom_width ]
   and border_left_width = [ `border_left_width ]
   and border_width = [ `border_width ]
   and border = [ `border ]
   and bottom = [ `bottom ]
   and caption_side = [ `caption_side ]
   and clear = [ `clear ]
   and clip = [ `clip ]
   and color = [ `color ]
   (*and content and counter_increment and counter_reset*)
   and cue_after = [ `cue_after ]
   and cue_before = [ `cue_before ]
   and cue = [ `cue ]
   and cursor = [ `cursor ]
   and direction = [ `direction ]
   and display' = [ `display ]
   and elevation = [ `elevation ]
   and empty_cells = [ `empty_cells ]
   and flex = [ `flex ]
   and flex_basis = [ `flex_basis ]
   and flex_direction = [ `flex_direction ]
   and flex_flow = [ `flex_flow ]
   and flex_grow = [ `flex_grow ]
   and flex_shrink = [ `flex_shrink ]
   and flex_wrap = [ `flex_wrap ]
   and float_ = [ `float ]
   and font_family = [ `font_family ]
   and font_size = [ `font_size ]
   and font_style = [ `font_style ]
   and font_variant = [ `font_variant ]
   and font_weight = [ `font_weight ]
   and font = [ `font ]
   and height = [ `height ]
   and justify_content = [ `justify_content ]
   and left = [ `left ]
   and letter_spacing = [ `letter_spacing ]
   and line_height = [ `line_height ]
   and list_style_image = [ `list_style_image ]
   and list_style_position = [ `list_style_position ]
   and list_style_type = [ `list_style_type ]
   and list_style = [ `list_style ]
   and margin_top = [ `margin_top ]
   and margin_right = [ `margin_right ]
   and margin_bottom = [ `margin_bottom ]
   and margin_left = [ `margin_left ]
   and margin = [ `margin ]
   and max_height = [ `max_height ]
   and max_width = [ `max_width ]
   and min_height = [ `min_height ]
   and min_width = [ `min_width ]
   and order = [ `order ]
   and orphans = [ `orphans ]
   and opacity = [ `opacity ]
   and outline_color = [ `outline_color ]
   and outline_style = [ `outline_style ]
   and outline_width = [ `outline_width ]
   and outline = [ `outline ]
   and overflow = [ `overflow ]
   and padding_top = [ `padding_top ]
   and padding_right = [ `padding_right ]
   and padding_bottom = [ `padding_bottom ]
   and padding_left = [ `padding_left ]
   and padding = [ `padding ]
   and page_break_after = [ `page_break_after ]
   and page_break_before = [ `page_break_before ]
   and page_break_inside = [ `page_break_inside ]
   and pause_after = [ `pause_after ]
   and pause_before = [ `pause_before ]
   and pause = [ `pause ]
   and pitch_range = [ `pitch_range ]
   and pitch = [ `pitch ]
   and play_during = [ `play_during ]
   and position = [ `position ]
   (*and quotes*)
   and richness = [ `richness ]
   and right = [ `right ]
   and size = [ `size ]
   and speak_header = [ `speak_header ]
   and speak_numeral = [ `speak_numeral ]
   and speak_punctuation = [ `speak_punctuation ]
   and speak = [ `speak ]
   and speech_rate = [ `speech_rate ]
   and stress = [ `stress ]
   and table_layout = [ `table_layout ]
   and text_align = [ `text_align ]
   and text_decoration = [ `text_decoration ]
   and text_indent = [ `text_indent ]
   and text_transform = [ `text_transform ]
   and top = [ `top ]
   and transition = [ `transition ]
   and transition_delay = [ `transition_delay ]
   and transition_property = [ `transition_property ]
   and transition_duration = [ `transition_duration ]
   and transition_timing_function = [ `transition_timing_function ]
   and unicode_bidi = [ `unicode_bidi ]
   and vertical_align = [ `vertical_align ]
   and visibility = [ `visibility ]
   and voice_family = [ `voice_family ]
   and volume = [ `volume ]
   and white_space = [ `white_space ]
   and widows = [ `widows ]
   and width = [ `width ]
   and word_spacing = [ `word_spacing ]
   and z_index = [ `z_index ]

  (** {{: https://www.w3.org/TR/css-ruby-1/#ruby-props} Ruby Properties} *)
  type ruby_position = [ `ruby_position ]
   and ruby_merge = [ `ruby_merge ]
   and ruby_align = [ `ruby_align ]


  type aligns =
    [ align_content | align_items | align_self ]

  type backgrounds =
    [ background_attachment | background_color | background_image
    | background_position | background_repeat | background_size | background ]

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
    [ flex | flex_basis | flex_direction | flex_flow | flex_grow
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

  type animations =
    [ animation | animation_name | animation_duration | animation_timing_function
    | animation_iteration_count | animation_direction | animation_play_state | animation_delay
    | animation_fill_mode ]
end

include Style


module AppliesTo = struct
  (** {{: https://www.w3.org/TR/CSS22/about.html#applies-to } Applies to} *)
  (** {{: https://www.w3.org/TR/CSS22/sample.html } Default styles} *)

  module KeyframeBlock = struct
    type any =
      [ animation_timing_function | azimuth | backgrounds | border_colors | border_styles
      | border_widths | borders | color | cues | cursor | direction | display' | elevation
      | float_ | fonts | letter_spacing | line_height | opacity | outlines | pauses
      | pitch_range | pitch | play_during | position | richness
      | speak_numeral | speak_punctuation | speak | speech_rate | stress
      | text_decoration | text_transform | transition | transition_delay
      | transition_duration | transition_property | transition_timing_function
      | unicode_bidi | visibility | voice_family | volume | white_space | word_spacing ]

    type block =
      [ clear | heights | margins | overflow | paddings | page_breaks
      | page_breaks_inside | text_align | text_indent | widths | any ]

    type flexbox =
      [ align_content | align_items | flex_direction | flex_flow | flex_wrap
      | heights | justify_content | margins | order | paddings | widths | any ]

    type list_item = [ heights | list_styles | margins | paddings | widths | any ]

    type positioned = [ clip | heights | margins | paddings | positions | widths | z_index | any ]

    (**
     * {{: https://www.w3.org/TR/css-display-3/#replaced-element } Replaced inline elements}
     * ({{: https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element } see list})
     *)
    type replaced_inline = [ heights | margins | paddings | vertical_align | widths | any ]

    (** Non-replaced inline elements *)
    type non_replaced_inline = [ margins | paddings | vertical_align | any ]

    type inline = [ replaced_inline | non_replaced_inline ]

    type inline_block = [ inline | block ]

    type inline_flex = [ inline | flexbox ]

    type table_header_group = [ heights | speak_header | widths | any ]

    type table_footer_group = [ heights | widths | any ]

    type table_caption = [ caption_side | heights | margins | paddings | widths | any ]

    type table =
      [ border_collapse | border_spacing | heights | margins | paddings
      | speak_header | table_layout | widths | any ]

    type inline_table =
      [ border_collapse | border_spacing | heights | margins | paddings
      | table_layout | widths | any ]

    type table_cell =
      [ empty_cells | heights | paddings | speak_header | vertical_align | widths | any ]

    type table_column = [ widths | any ]

    type table_column_group = [ widths | any ]

    type table_row = [ heights | any ]

    type table_row_group = [ heights | any ]

    type displays =
      [ block | flexbox | list_item | positioned | inline
      | inline_block | inline_flex | table_header_group | table_footer_group
      | table_caption | table | inline_table | table_cell | table_column
      | table_column_group | table_row | table_row_group ]

    type flex_item = [ align_self | flex | flex_basis | flex_grow | flex_shrink | displays ]
  end

  module Display = struct
    type any = [ KeyframeBlock.any | animations ]

    type block = [ KeyframeBlock.block | animations ]

    type flexbox = [ KeyframeBlock.flexbox | animations ]

    type list_item = [ KeyframeBlock.list_item | animations ]

    type positioned = [ KeyframeBlock.positioned | animations ]

    (**
     * {{: https://www.w3.org/TR/css-display-3/#replaced-element } Replaced inline elements}
     * ({{: https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element } see list})
     *)
    type replaced_inline = [ KeyframeBlock.replaced_inline | animations ]

    (** Non-replaced inline elements *)
    type non_replaced_inline = [ KeyframeBlock.non_replaced_inline | animations ]

    type inline = [ KeyframeBlock.inline | animations ]

    type inline_block = [ KeyframeBlock.inline_block | animations ]

    type inline_flex = [ KeyframeBlock.inline_flex | animations ]

    type table_header_group = [ KeyframeBlock.table_header_group | animations ]

    type table_footer_group = [ KeyframeBlock.table_footer_group | animations ]

    type table_caption = [ KeyframeBlock.table_caption | animations ]

    type table = [ KeyframeBlock.table | animations ]

    type inline_table = [ KeyframeBlock.inline_table | animations ]

    type table_cell = [ KeyframeBlock.table_cell | animations ]

    type table_column = [ KeyframeBlock.table_column | animations ]

    type table_column_group = [ KeyframeBlock.table_column_group | animations ]

    type table_row = [ KeyframeBlock.table_row | animations ]

    type table_row_group = [ KeyframeBlock.table_row_group | animations ]

    (** {{: https://www.w3.org/TR/css-ruby-1/#ruby-display} Ruby Display} *)
    type ruby = ruby_align
     and ruby_base = ruby_align
     and ruby_text = ruby_align
     and ruby_base_container = ruby_align
     and ruby_text_container = [ ruby_position | ruby_merge ]

    type ruby_display = [ ruby | ruby_base | ruby_text | ruby_base_container | ruby_text_container ]

    type displays =
      [ block | flexbox | list_item | positioned | inline
      | inline_block | inline_flex | table_header_group | table_footer_group
      | table_caption | table | inline_table | table_cell | table_column
      | table_column_group | table_row | table_row_group | ruby_display ]

    (**
    A flex item is defined as a child of a flex container ([display: flex]), it
    can have any display type.
    *)
    type flex_item = [ align_self | flex | flex_basis | flex_grow | flex_shrink | displays ]
  end

  include Display

  module KeyframeOverride = struct
    type block = [ KeyframeBlock.block | KeyframeBlock.any ]
    type flex = [ KeyframeBlock.flexbox | KeyframeBlock.any ]
    type list_item = [ KeyframeBlock.list_item | KeyframeBlock.any ]
    type inline = [ KeyframeBlock.inline | KeyframeBlock.any ]
    type inline_block = [ KeyframeBlock.inline_block | KeyframeBlock.any ]
    type inline_flex = [ KeyframeBlock.inline_flex | KeyframeBlock.any ]
    type table_header_group = [ KeyframeBlock.table_header_group | KeyframeBlock.any ]
    type table_footer_group = [ KeyframeBlock.table_footer_group | KeyframeBlock.any ]
    type table_caption = [ KeyframeBlock.table_caption | KeyframeBlock.any ]
    type table = [ KeyframeBlock.table | KeyframeBlock.any ]
    type inline_table = [ KeyframeBlock.inline_table | KeyframeBlock.any ]
    type table_cell = [ KeyframeBlock.table_cell | KeyframeBlock.any ]
    type table_column = [ KeyframeBlock.table_column | KeyframeBlock.any ]
    type table_column_group = [ KeyframeBlock.table_column_group | KeyframeBlock.any ]
    type table_row = [ KeyframeBlock.table_row | KeyframeBlock.any ]
    type table_row_group = [ KeyframeBlock.table_row_group | KeyframeBlock.any ]

    type t =
      [ block | flex | list_item | inline | inline_block | inline_flex | table_header_group
      | table_footer_group | table_caption | table | inline_table | table_cell | table_column
      | table_column_group | table_row | table_row_group ]
  end

  module Override = struct
    (** Display overrides (for the [display] css property) *)

    type block = [ KeyframeOverride.block | any ]
    type flex = [ KeyframeOverride.flex | any ]
    type list_item = [ KeyframeOverride.list_item | any ]
    type inline = [ KeyframeOverride.inline | any ]
    type inline_block = [ KeyframeOverride.inline_block | any ]
    type inline_flex = [ KeyframeOverride.inline_flex | any ]
    type table_header_group = [ KeyframeOverride.table_header_group | any ]
    type table_footer_group = [ KeyframeOverride.table_footer_group | any ]
    type table_caption = [ KeyframeOverride.table_caption | any ]
    type table = [ KeyframeOverride.table | any ]
    type inline_table = [ KeyframeOverride.inline_table | any ]
    type table_cell = [ KeyframeOverride.table_cell | any ]
    type table_column = [ KeyframeOverride.table_column | any ]
    type table_column_group = [ KeyframeOverride.table_column_group | any ]
    type table_row = [ KeyframeOverride.table_row | any ]
    type table_row_group = [ KeyframeOverride.table_row_group | any ]

    type t =
      [ block | flex | list_item | inline | inline_block | inline_flex | table_header_group
      | table_footer_group | table_caption | table | inline_table | table_cell | table_column
      | table_column_group | table_row | table_row_group ]
  end

  type keyframe_block =
    [ KeyframeBlock.displays | KeyframeBlock.flex_item | KeyframeOverride.t ]

  type display = [ displays | flex_item | Override.t | size ]


  let to_block x = (x :> block t)
  and to_flex x = (x :> flexbox t)
  and to_list_item x = (x :> list_item t)
  and to_positioned x = (x :> positioned t)
  and to_replaced_inline x = (x :> replaced_inline t)
  and to_non_replaced_inline x = (x :> non_replaced_inline t)
  and to_inline x = (x :> inline t)
  and to_inline_block x = (x :> inline_block t)
  and to_inline_flex x = (x :> inline_flex t)
  and to_table_header_group x = (x :> table_header_group t)
  and to_table_footer_group x = (x :> table_footer_group t)
  and to_table_caption x = (x :> table_caption t)
  and to_table x = (x :> table t)
  and to_inline_table x = (x :> inline_table t)
  and to_table_cell x = (x :> table_cell t)
  and to_table_column x = (x :> table_column t)
  and to_table_column_group x = (x :> table_column_group t)
  and to_table_row x = (x :> table_row t)
  and to_table_row_group x = (x :> table_row_group t)
  and to_display x = (x :> display t)
end

include AppliesTo


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
  type paged = [ size | margins | page_breaks | page_breaks_inside | any ]

  let to_aural x = (x :> aural t)
  and to_interactive x = (x :> interactive t)
  and to_visual x = (x :> visual t)
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

  let to_handheld x = (x :> handheld t)
  and to_print x = (x :> print t)
  and to_projection x = (x :> projection t)
  and to_screen x = (x :> screen t)
  and to_speech x = (x :> speech t)
  and to_tty x = (x :> tty t)
  and to_tv x = (x :> tv t)

  let print_to_display x =
    x |> Js.Dict.map (fun [@bs] p -> ((p :> screen t) :> display t))
  and screen_to_display x =
    x |> Js.Dict.map (fun [@bs] p -> ((p :> screen t) :> display t))
  and speech_to_display x =
    x |> Js.Dict.map (fun [@bs] p -> ((p :> speech t) :> display t))
end


external show: [< display] t -> string = "%identity"


let show_properties ?(indent=0) properties: string =
  let indent' = Js.String.repeat indent "  "
  in
  properties
  |> Js.Dict.map (fun [@bs] e -> (e :> display t))
  |> Js.Dict.entries
  |. Belt.Array.map (fun (key, value) ->
       indent' ^ Util.underscore_to_dash key ^": "^ show value ^";")
  |> Js.Array.joinWith "\n"


let show_dict (styles: 'a t Js.Dict.t): string Js.Dict.t =
  styles
  |> Js.Dict.map (fun [@bs] e -> show e)
