open Css_Properties

type 'a t = 'a Css_Property.t Js.Dict.t

let to_display styles: Css_Property.display t =
  styles
  |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display Css_Property.t))

let merge (style_a: [< Css_Property.display] t) style_b =
  Util.merge_all [|Js.Dict.empty (); style_a; style_b|]


module Internal = struct
  module Group = struct
    external aligns:
      ?align_content:Css_Property.align_content Css_Property.t ->
      ?align_items:Css_Property.align_items Css_Property.t ->
      ?align_self:Css_Property.align_self Css_Property.t ->
      unit ->
      Css_Property.aligns t = "" [@@bs.obj]

    external backgrounds:
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      unit ->
      Css_Property.backgrounds t = "" [@@bs.obj]

    external borders:
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      unit ->
      Css_Property.borders t = "" [@@bs.obj]

    external border_colors:
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      unit ->
      Css_Property.border_colors t = "" [@@bs.obj]

    external border_styles:
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      unit ->
      Css_Property.border_styles t = "" [@@bs.obj]

    external border_widths:
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      unit ->
      Css_Property.border_widths t = "" [@@bs.obj]

    external cues:
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      unit ->
      Css_Property.cues t = "" [@@bs.obj]

    external flexs:
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_basis:Css_Property.flex_basis Css_Property.t ->
      ?flex_direction:Css_Property.flex_direction Css_Property.t ->
      ?flex_flow:Css_Property.flex_flow Css_Property.t ->
      ?flex_grow:Css_Property.flex_grow Css_Property.t ->
      ?flex_shrink:Css_Property.flex_shrink Css_Property.t ->
      ?flex_wrap:Css_Property.flex_wrap Css_Property.t ->
      unit ->
      Css_Property.flexs t = "" [@@bs.obj]

    external fonts:
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      unit ->
      Css_Property.fonts t = "" [@@bs.obj]

    external heights:
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      unit ->
      Css_Property.heights t = "" [@@bs.obj]

    external margins:
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      unit ->
      Css_Property.margins t = "" [@@bs.obj]

    external paddings:
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      unit ->
      Css_Property.paddings t = "" [@@bs.obj]

    external list_styles:
      ?list_style_image:Css_Property.list_style_image Css_Property.t ->
      ?list_style_position:Css_Property.list_style_position Css_Property.t ->
      ?list_style_type:Css_Property.list_style_type Css_Property.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      unit ->
      Css_Property.list_styles t = "" [@@bs.obj]

    external outlines:
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      unit ->
      Css_Property.outlines t = "" [@@bs.obj]

    external page_breaks:
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      unit ->
      Css_Property.page_breaks t = "" [@@bs.obj]

    external page_breaks_inside:
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      unit ->
      Css_Property.page_break_inside t = "" [@@bs.obj]

    external pauses:
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      unit ->
      Css_Property.pauses t = "" [@@bs.obj]

    external positions:
      ?top:Css_Property.top Css_Property.t ->
      ?right:Css_Property.right Css_Property.t ->
      ?bottom:Css_Property.bottom Css_Property.t ->
      ?left:Css_Property.left Css_Property.t ->
      unit ->
      Css_Property.positions t = "" [@@bs.obj]

    external speaks:
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      unit ->
      Css_Property.speaks t = "" [@@bs.obj]

    external texts:
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      unit ->
      Css_Property.texts t = "" [@@bs.obj]

    external widths:
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      unit ->
      Css_Property.widths t = "" [@@bs.obj]
  end


  module MediaGroup = struct
    external aural:
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      unit ->
      Css_Property.MediaGroup.aural t = "" [@@bs.obj]

    external interactive:
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      unit ->
      Css_Property.MediaGroup.interactive t = "" [@@bs.obj]

    external visual:
      ?align_content:Css_Property.align_content Css_Property.t ->
      ?align_items:Css_Property.align_items Css_Property.t ->
      ?align_self:Css_Property.align_self Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_collapse:Css_Property.border_collapse Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_spacing:Css_Property.border_spacing Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?caption_side:Css_Property.caption_side Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?clip:Css_Property.clip Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?empty_cells:Css_Property.empty_cells Css_Property.t ->
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_basis:Css_Property.flex_basis Css_Property.t ->
      ?flex_direction:Css_Property.flex_direction Css_Property.t ->
      ?flex_flow:Css_Property.flex_flow Css_Property.t ->
      ?flex_grow:Css_Property.flex_grow Css_Property.t ->
      ?flex_shrink:Css_Property.flex_shrink Css_Property.t ->
      ?flex_wrap:Css_Property.flex_wrap Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?justify_content:Css_Property.justify_content Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?list_style_image:Css_Property.list_style_image Css_Property.t ->
      ?list_style_position:Css_Property.list_style_position Css_Property.t ->
      ?list_style_type:Css_Property.list_style_type Css_Property.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?order:Css_Property.order Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?top:Css_Property.top Css_Property.t ->
      ?right:Css_Property.right Css_Property.t ->
      ?bottom:Css_Property.bottom Css_Property.t ->
      ?left:Css_Property.left Css_Property.t ->
      ?table_layout:Css_Property.table_layout Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      ?z_index:Css_Property.z_index Css_Property.t ->
      unit ->
      Css_Property.MediaGroup.visual t = "" [@@bs.obj]

    external paged:
      ?size:Css_Property.size Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      unit ->
      Css_Property.MediaGroup.paged t = "" [@@bs.obj]
  end


  module AppliesTo = struct
    external any:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?transition_delay:Css_Property.transition_delay Css_Property.t ->
      ?transition_duration:Css_Property.transition_duration Css_Property.t ->
      ?transition_property:Css_Property.transition_property Css_Property.t ->
      ?transition_timing_function: Css_Property.transition_timing_function Css_Property.t ->
      ?transition:Css_Property.transition Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.any t = "" [@@bs.obj]


    external block:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.block t = "" [@@bs.obj]


    external flex:
      ?align_content:Css_Property.align_content Css_Property.t ->
      ?align_items:Css_Property.align_items Css_Property.t ->
      ?flex_direction:Css_Property.flex_direction Css_Property.t ->
      ?flex_flow:Css_Property.flex_flow Css_Property.t ->
      ?flex_wrap:Css_Property.flex_wrap Css_Property.t ->
      ?justify_content:Css_Property.justify_content Css_Property.t ->
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.flex t = "" [@@bs.obj]


    (* https://www.w3.org/TR/css-flexbox-1/#property-index *)
    external flex_item:
      ?align_self:Css_Property.align_self Css_Property.t ->
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_basis:Css_Property.flex_basis Css_Property.t ->
      ?flex_grow:Css_Property.flex_grow Css_Property.t ->
      ?flex_shrink:Css_Property.flex_shrink Css_Property.t ->
      ?order:Css_Property.order Css_Property.t ->
      unit ->
      Css_Property.flex_item t = "" [@@bs.obj]


    external list_item:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?list_style_image:Css_Property.list_style_image Css_Property.t ->
      ?list_style_position:Css_Property.list_style_position Css_Property.t ->
      ?list_style_type:Css_Property.list_style_type Css_Property.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.list_item t = "" [@@bs.obj]


    external positioned:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?clip:Css_Property.clip Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?top:Css_Property.top Css_Property.t ->
      ?right:Css_Property.right Css_Property.t ->
      ?bottom:Css_Property.bottom Css_Property.t ->
      ?left:Css_Property.left Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?z_index:Css_Property.z_index Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.positioned t = "" [@@bs.obj]


    external replaced_inline:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.replaced_inline t = "" [@@bs.obj]


    external non_replaced_inline:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.non_replaced_inline t = "" [@@bs.obj]


    external inline:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.inline t = "" [@@bs.obj]


    external inline_flex:
      ?align_content:Css_Property.align_content Css_Property.t ->
      ?align_items:Css_Property.align_items Css_Property.t ->
      ?flex_direction:Css_Property.flex_direction Css_Property.t ->
      ?flex_flow:Css_Property.flex_flow Css_Property.t ->
      ?flex_wrap:Css_Property.flex_wrap Css_Property.t ->
      ?justify_content:Css_Property.justify_content Css_Property.t ->
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.inline_flex t = "" [@@bs.obj]


    external inline_block:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.inline_block t = "" [@@bs.obj]


    external table_header_group:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_header_group t = "" [@@bs.obj]


    external table_footer_group:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_footer_group t = "" [@@bs.obj]


    external table_caption:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?caption_side:Css_Property.caption_side Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_caption t = "" [@@bs.obj]


    external table:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?border_collapse:Css_Property.border_collapse Css_Property.t ->
      ?border_spacing:Css_Property.border_spacing Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?table_layout:Css_Property.table_layout Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table t = "" [@@bs.obj]


    external inline_table:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?border_collapse:Css_Property.border_collapse Css_Property.t ->
      ?border_spacing:Css_Property.border_spacing Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?table_layout:Css_Property.table_layout Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.inline_table t = "" [@@bs.obj]


    external table_cell:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?empty_cells:Css_Property.empty_cells Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_cell t = "" [@@bs.obj]


    external table_column:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_column t = "" [@@bs.obj]


    external table_column_group:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_column_group t = "" [@@bs.obj]


    external table_row:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_row t = "" [@@bs.obj]


    external table_row_group:
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      unit ->
      Css_Property.table_row_group t = "" [@@bs.obj]


    external display:
      ?align_content:Css_Property.align_content Css_Property.t ->
      ?align_items:Css_Property.align_items Css_Property.t ->
      ?align_self:Css_Property.align_self Css_Property.t ->
      ?animation:Css_Property.animation Css_Property.t ->
      ?animation_delay:Css_Property.animation_delay Css_Property.t ->
      ?animation_direction:Css_Property.animation_direction Css_Property.t ->
      ?animation_duration:Css_Property.animation_duration Css_Property.t ->
      ?animation_fill_mode:Css_Property.animation_fill_mode Css_Property.t ->
      ?animation_iteration_count:Css_Property.animation_iteration_count Css_Property.t ->
      ?animation_name:Css_Property.animation_name Css_Property.t ->
      ?animation_play_state:Css_Property.animation_play_state Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_collapse:Css_Property.border_collapse Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_spacing:Css_Property.border_spacing Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?bottom:Css_Property.bottom Css_Property.t ->
      ?caption_side:Css_Property.caption_side Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?clip:Css_Property.clip Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?empty_cells:Css_Property.empty_cells Css_Property.t ->
      ?flex_basis:Css_Property.flex_basis Css_Property.t ->
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_direction:Css_Property.flex_direction Css_Property.t ->
      ?flex_flow:Css_Property.flex_flow Css_Property.t ->
      ?flex_grow:Css_Property.flex_grow Css_Property.t ->
      ?flex_shrink:Css_Property.flex_shrink Css_Property.t ->
      ?flex_wrap:Css_Property.flex_wrap Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?justify_content:Css_Property.justify_content Css_Property.t ->
      ?left:Css_Property.left Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      ?list_style_image:Css_Property.list_style_image Css_Property.t ->
      ?list_style_position:Css_Property.list_style_position Css_Property.t ->
      ?list_style_type:Css_Property.list_style_type Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?order:Css_Property.order Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?right:Css_Property.right Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?table_layout:Css_Property.table_layout Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?top:Css_Property.top Css_Property.t ->
      ?transition:Css_Property.transition Css_Property.t ->
      ?transition_delay:Css_Property.transition_delay Css_Property.t ->
      ?transition_duration:Css_Property.transition_duration Css_Property.t ->
      ?transition_property:Css_Property.transition_property Css_Property.t ->
      ?transition_timing_function: Css_Property.transition_timing_function Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      ?z_index:Css_Property.z_index Css_Property.t ->
      unit ->
      Css_Property.display t = "" [@@bs.obj]


    external keyframe_block:
      ?align_content:Css_Property.align_content Css_Property.t ->
      ?align_items:Css_Property.align_items Css_Property.t ->
      ?align_self:Css_Property.align_self Css_Property.t ->
      ?animation_timing_function:Css_Property.animation_timing_function Css_Property.t ->
      ?azimuth:Css_Property.azimuth Css_Property.t ->
      ?background_attachment:Css_Property.background_attachment Css_Property.t ->
      ?background_color:Css_Property.background_color Css_Property.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?background_image:Css_Property.background_image Css_Property.t ->
      ?background_position:Css_Property.background_position Css_Property.t ->
      ?background_repeat:Css_Property.background_repeat Css_Property.t ->
      ?background_size:Css_Property.background_size Css_Property.t ->
      ?border_bottom_color:Css_Property.border_bottom_color Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_bottom_style:Css_Property.border_bottom_style Css_Property.t ->
      ?border_bottom_width:Css_Property.border_bottom_width Css_Property.t ->
      ?border_collapse:Css_Property.border_collapse Css_Property.t ->
      ?border_color:Css_Property.border_color Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?border_left_color:Css_Property.border_left_color Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border_left_style:Css_Property.border_left_style Css_Property.t ->
      ?border_left_width:Css_Property.border_left_width Css_Property.t ->
      ?border_right_color:Css_Property.border_right_color Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_right_style:Css_Property.border_right_style Css_Property.t ->
      ?border_right_width:Css_Property.border_right_width Css_Property.t ->
      ?border_spacing:Css_Property.border_spacing Css_Property.t ->
      ?border_style:Css_Property.border_style Css_Property.t ->
      ?border_top_color:Css_Property.border_top_color Css_Property.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_top_style:Css_Property.border_top_style Css_Property.t ->
      ?border_top_width:Css_Property.border_top_width Css_Property.t ->
      ?border_width:Css_Property.border_width Css_Property.t ->
      ?bottom:Css_Property.bottom Css_Property.t ->
      ?caption_side:Css_Property.caption_side Css_Property.t ->
      ?clear:Css_Property.clear Css_Property.t ->
      ?clip:Css_Property.clip Css_Property.t ->
      ?color:Css_Property.color Css_Property.t ->
      ?cue_after:Css_Property.cue_after Css_Property.t ->
      ?cue_before:Css_Property.cue_before Css_Property.t ->
      ?cue:Css_Property.cue Css_Property.t ->
      ?cursor:Css_Property.cursor Css_Property.t ->
      ?direction:Css_Property.direction Css_Property.t ->
      ?elevation:Css_Property.elevation Css_Property.t ->
      ?empty_cells:Css_Property.empty_cells Css_Property.t ->
      ?flex_basis:Css_Property.flex_basis Css_Property.t ->
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_direction:Css_Property.flex_direction Css_Property.t ->
      ?flex_flow:Css_Property.flex_flow Css_Property.t ->
      ?flex_grow:Css_Property.flex_grow Css_Property.t ->
      ?flex_shrink:Css_Property.flex_shrink Css_Property.t ->
      ?flex_wrap:Css_Property.flex_wrap Css_Property.t ->
      ?float:Css_Property.float_ Css_Property.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?font_family:Css_Property.font_family Css_Property.t ->
      ?font_size:Css_Property.font_size Css_Property.t ->
      ?font_style:Css_Property.font_style Css_Property.t ->
      ?font_variant:Css_Property.font_variant Css_Property.t ->
      ?font_weight:Css_Property.font_weight Css_Property.t ->
      ?height:Css_Property.height Css_Property.t ->
      ?justify_content:Css_Property.justify_content Css_Property.t ->
      ?left:Css_Property.left Css_Property.t ->
      ?letter_spacing:Css_Property.letter_spacing Css_Property.t ->
      ?line_height:Css_Property.line_height Css_Property.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      ?list_style_image:Css_Property.list_style_image Css_Property.t ->
      ?list_style_position:Css_Property.list_style_position Css_Property.t ->
      ?list_style_type:Css_Property.list_style_type Css_Property.t ->
      ?margin_bottom:Css_Property.margin_bottom Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_left:Css_Property.margin_left Css_Property.t ->
      ?margin_right:Css_Property.margin_right Css_Property.t ->
      ?margin_top:Css_Property.margin_top Css_Property.t ->
      ?max_height:Css_Property.max_height Css_Property.t ->
      ?max_width:Css_Property.max_width Css_Property.t ->
      ?min_height:Css_Property.min_height Css_Property.t ->
      ?min_width:Css_Property.min_width Css_Property.t ->
      ?order:Css_Property.order Css_Property.t ->
      ?orphans:Css_Property.orphans Css_Property.t ->
      ?opacity:Css_Property.opacity Css_Property.t ->
      ?outline_color:Css_Property.outline_color Css_Property.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?outline_style:Css_Property.outline_style Css_Property.t ->
      ?outline_width:Css_Property.outline_width Css_Property.t ->
      ?overflow:Css_Property.overflow Css_Property.t ->
      ?padding_bottom:Css_Property.padding_bottom Css_Property.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_left:Css_Property.padding_left Css_Property.t ->
      ?padding_right:Css_Property.padding_right Css_Property.t ->
      ?padding_top:Css_Property.padding_top Css_Property.t ->
      ?page_break_after:Css_Property.page_break_after Css_Property.t ->
      ?page_break_before:Css_Property.page_break_before Css_Property.t ->
      ?page_break_inside:Css_Property.page_break_inside Css_Property.t ->
      ?pause_after:Css_Property.pause_after Css_Property.t ->
      ?pause_before:Css_Property.pause_before Css_Property.t ->
      ?pause:Css_Property.pause Css_Property.t ->
      ?pitch:Css_Property.pitch Css_Property.t ->
      ?pitch_range:Css_Property.pitch_range Css_Property.t ->
      ?play_during:Css_Property.play_during Css_Property.t ->
      ?richness:Css_Property.richness Css_Property.t ->
      ?right:Css_Property.right Css_Property.t ->
      ?speak:Css_Property.speak Css_Property.t ->
      ?speak_header:Css_Property.speak_header Css_Property.t ->
      ?speak_numeral:Css_Property.speak_numeral Css_Property.t ->
      ?speak_punctuation:Css_Property.speak_punctuation Css_Property.t ->
      ?speech_rate:Css_Property.speech_rate Css_Property.t ->
      ?stress:Css_Property.stress Css_Property.t ->
      ?table_layout:Css_Property.table_layout Css_Property.t ->
      ?text_align:Css_Property.text_align Css_Property.t ->
      ?text_decoration:Css_Property.text_decoration Css_Property.t ->
      ?text_indent:Css_Property.text_indent Css_Property.t ->
      ?text_transform:Css_Property.text_transform Css_Property.t ->
      ?top:Css_Property.top Css_Property.t ->
      ?transition:Css_Property.transition Css_Property.t ->
      ?transition_delay:Css_Property.transition_delay Css_Property.t ->
      ?transition_duration:Css_Property.transition_duration Css_Property.t ->
      ?transition_property:Css_Property.transition_property Css_Property.t ->
      ?transition_timing_function: Css_Property.transition_timing_function Css_Property.t ->
      ?unicode_bidi:Css_Property.unicode_bidi Css_Property.t ->
      ?vertical_align:Css_Property.vertical_align Css_Property.t ->
      ?visibility:Css_Property.visibility Css_Property.t ->
      ?voice_family:Css_Property.voice_family Css_Property.t ->
      ?volume:Css_Property.volume Css_Property.t ->
      ?white_space:Css_Property.white_space Css_Property.t ->
      ?widows:Css_Property.widows Css_Property.t ->
      ?width:Css_Property.width Css_Property.t ->
      ?word_spacing:Css_Property.word_spacing Css_Property.t ->
      ?z_index:Css_Property.z_index Css_Property.t ->
      unit ->
      Css_Property.keyframe_block t = "" [@@bs.obj]
  end
end


module Shorthand = struct
  let animation = Css_Properties.Animation.make
  let background = Css_Properties.Background.make
  let border_top = Css_Properties.BorderTop.make
  let border_right = Css_Properties.BorderRight.make
  let border_bottom = Css_Properties.BorderBottom.make
  let border_left = Css_Properties.BorderLeft.make
  let border = Css_Properties.Border.make
  let font = Css_Properties.Font.make
  let flex' = Css_Properties.Flex.make
  let list_style = Css_Properties.ListStyle.make
  let margin = Css_Properties.Margin.make
  let outline = Css_Properties.Outline.make
  let padding = Css_Properties.Padding.make
  let transition = Css_Properties.Transition.make
end

include Shorthand


module Group = struct
  let aligns ?align_content ?align_items ?align_self () =
    Internal.Group.aligns
      ?align_content:(Belt.Option.map align_content AlignContent.make)
      ?align_items:(Belt.Option.map align_items AlignItems.make)
      ?align_self:(Belt.Option.map align_self AlignSelf.make)
      ()

  let backgrounds ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background () =
    Internal.Group.backgrounds
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:(Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ()

  let borders ?border_top ?border_right ?border_bottom ?border_left ?border () =
    Internal.Group.borders
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ()

  let border_colors ?border_top_color ?border_right_color ?border_bottom_color
    ?border_left_color ?border_color () =
    Internal.Group.border_colors
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:(Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ()

  let border_styles ?border_top_style ?border_right_style ?border_bottom_style
    ?border_left_style ?border_style () =
    Internal.Group.border_styles
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:(Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ()

  let border_widths ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width () =
    Internal.Group.border_widths
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:(Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ()


  let heights ?height ?min_height ?max_height () =
    Internal.Group.heights
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ()

  let cues ?cue_after ?cue_before ?cue () =
    Internal.Group.cues
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ()

  let flexs ?flex ?flex_basis ?flex_direction ?flex_flow ?flex_grow ?flex_shrink
    ?flex_wrap () =
    Internal.Group.flexs
      ?flex
      ?flex_basis:(Belt.Option.map flex_basis FlexBasis.make)
      ?flex_direction:(Belt.Option.map flex_direction FlexDirection.make)
      ?flex_flow:(Belt.Option.map flex_flow FlexFlow.make)
      ?flex_grow:(Belt.Option.map flex_grow FlexGrow.make)
      ?flex_shrink:(Belt.Option.map flex_shrink FlexShrink.make)
      ?flex_wrap:(Belt.Option.map flex_wrap FlexWrap.make)
      ()

  let fonts ?font_family ?font_size ?font_style ?font_variant ?font_weight ?font
    () =
    Internal.Group.fonts
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ()

  let margins ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left () =
    Internal.Group.margins
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ()

  let paddings ?padding ?padding_top ?padding_right ?padding_bottom ?padding_left
    () =
    Internal.Group.paddings
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ()

  let list_styles ?list_style_image ?list_style_position ?list_style_type ?list_style
    () =
    Internal.Group.list_styles
      ?list_style_image:(Belt.Option.map list_style_image ListStyleImage.make)
      ?list_style_position:
        (Belt.Option.map list_style_position ListStylePosition.make)
      ?list_style_type:(Belt.Option.map list_style_type ListStyleType.make)
      ?list_style
      ()

  let outlines ?outline_color ?outline_style ?outline_width ?outline () =
    Internal.Group.outlines
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ()

  let page_breaks ?page_break_before ?page_break_after ?page_break_inside () =
    Internal.Group.page_breaks
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ()

  let page_breaks_inside ?orphans ?widows () =
    Internal.Group.page_breaks_inside
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ()

  let pauses ?pause_after ?pause_before ?pause () =
    Internal.Group.pauses
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ()

  let positions ?top ?right ?bottom ?left () =
    Internal.Group.positions
      ?top:(Belt.Option.map top Top.make)
      ?right:(Belt.Option.map right Right.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?left:(Belt.Option.map left Left.make)
      ()

  let speaks ?speak_header ?speak_numeral ?speak_punctuation ?speak () =
    Internal.Group.speaks
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:(Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ()

  let texts ?text_decoration ?text_transform ?text_align ?text_indent () =
    Internal.Group.texts
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ()

  let widths ?width ?min_width ?max_width () =
    Internal.Group.widths
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ()
end


module MediaGroup = struct
  let aural ?azimuth ?cue_after ?cue_before ?cue ?elevation ?pause_after
    ?pause_before ?pause ?pitch_range ?pitch ?play_during ?richness ?speak_header
    ?speak_numeral ?speak_punctuation ?speak ?speech_rate ?stress ?voice_family
    ?volume () =
    Internal.MediaGroup.aural
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:(Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ()

  let interactive ?cursor ?outline_color ?outline_style ?outline_width ?outline
    () =
    Internal.MediaGroup.interactive
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ()

  let visual ?align_content ?align_items ?align_self ?background_attachment
    ?background_color ?background_image ?background_position ?background_repeat
    ?background_size ?background ?border_collapse ?border_top_color ?border_right_color
    ?border_bottom_color ?border_left_color ?border_color ?border_spacing
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?caption_side ?clear ?clip ?color ?cursor ?direction
    ?empty_cells ?flex ?flex_basis ?flex_direction ?flex_flow ?flex_grow
    ?flex_shrink ?flex_wrap ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?height ?min_height ?max_height ?justify_content
    ?letter_spacing ?line_height ?list_style_image ?list_style_position
    ?list_style_type ?list_style ?margin ?margin_top ?margin_right ?margin_bottom
    ?margin_left ?order ?outline_color ?outline_style ?outline_width ?outline
    ?overflow ?padding ?padding_top ?padding_right ?padding_bottom ?padding_left
    ?page_break_before ?page_break_after ?page_break_inside ?orphans ?widows ?top
    ?right ?bottom ?left ?table_layout ?text_decoration ?text_transform ?text_align
    ?text_indent ?unicode_bidi ?vertical_align ?visibility ?white_space ?width
    ?min_width ?max_width ?word_spacing ?z_index () =
    Internal.MediaGroup.visual
      ?align_content:(Belt.Option.map align_content AlignContent.make)
      ?align_items:(Belt.Option.map align_items AlignItems.make)
      ?align_self:(Belt.Option.map align_self AlignSelf.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:(Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_collapse:(Belt.Option.map border_collapse BorderCollapse.make)
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:(Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_spacing:(Belt.Option.map border_spacing BorderSpacing.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:(Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:(Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?caption_side:(Belt.Option.map caption_side CaptionSide.make)
      ?clear:(Belt.Option.map clear Clear.make)
      ?clip:(Belt.Option.map clip Clip.make)
      ?color:(Belt.Option.map color Color.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?empty_cells:(Belt.Option.map empty_cells EmptyCells.make)
      ?flex
      ?flex_basis:(Belt.Option.map flex_basis FlexBasis.make)
      ?flex_direction:(Belt.Option.map flex_direction FlexDirection.make)
      ?flex_flow:(Belt.Option.map flex_flow FlexFlow.make)
      ?flex_grow:(Belt.Option.map flex_grow FlexGrow.make)
      ?flex_shrink:(Belt.Option.map flex_shrink FlexShrink.make)
      ?flex_wrap:(Belt.Option.map flex_wrap FlexWrap.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?justify_content:(Belt.Option.map justify_content JustifyContent.make)
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?list_style_image:(Belt.Option.map list_style_image ListStyleImage.make)
      ?list_style_position:
        (Belt.Option.map list_style_position ListStylePosition.make)
      ?list_style_type:(Belt.Option.map list_style_type ListStyleType.make)
      ?list_style
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?order:(Belt.Option.map order Order.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?top:(Belt.Option.map top Top.make)
      ?right:(Belt.Option.map right Right.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?left:(Belt.Option.map left Left.make)
      ?table_layout:(Belt.Option.map table_layout TableLayout.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ?z_index:(Belt.Option.map z_index ZIndex.make)
      ()

  let paged ?size ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left
    ?page_break_before ?page_break_after ?page_break_inside ?orphans ?widows () =
    Internal.MediaGroup.paged
      ?size
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ()
end


module AppliesTo = struct
  let any
    ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant ?font_weight
    ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style ?outline_width
    ?outline ?pause_after ?pause_before ?pause ?pitch_range ?pitch ?play_during
    ?richness ?speak_numeral ?speak_punctuation ?speak ?speech_rate ?stress
    ?text_decoration ?text_transform ?transition_delay ?transition_duration
    ?transition_property ?transition_timing_function ?transition ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.any
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:(Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:(Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:(Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:(Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:(Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:(Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:(Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:(Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:(Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:(Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?transition_delay:(Belt.Option.map transition_delay TransitionDelay.make)
      ?transition_duration:(Belt.Option.map transition_duration TransitionDuration.make)
      ?transition_property:(Belt.Option.map transition_property TransitionProperty.make)
      ?transition_timing_function:
        (Belt.Option.map transition_timing_function TransitionTimingFunction.make)
      ?transition
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()

  let block ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?clear ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?overflow ?padding ?padding_top
    ?padding_right ?padding_bottom ?padding_left ?page_break_before
    ?page_break_after ?page_break_inside ?orphans ?widows ?text_align ?text_indent
    ?width ?min_width ?max_width ?azimuth ?background_attachment
    ?background_color ?background_image ?background_position ?background_repeat
    ?background_size ?background ?border_top_color ?border_right_color ?border_bottom_color
    ?border_left_color ?border_color ?border_top_style ?border_right_style
    ?border_bottom_style ?border_left_style ?border_style ?border_top_width
    ?border_right_width ?border_bottom_width ?border_left_width ?border_width
    ?border_top ?border_right ?border_bottom ?border_left ?border ?color
    ?cue_after ?cue_before ?cue ?cursor ?direction ?elevation ?float
    ?font_family ?font_size ?font_style ?font_variant ?font_weight ?font
    ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style ?outline_width
    ?outline ?pause_after ?pause_before ?pause ?pitch_range ?pitch ?play_during
    ?richness ?speak_numeral ?speak_punctuation ?speak ?speech_rate ?stress
    ?text_decoration ?text_transform ?unicode_bidi ?visibility ?voice_family
    ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.block
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?clear:(Belt.Option.map clear Clear.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let flex ?align_content ?align_items ?flex_direction ?flex_flow ?flex_wrap ?justify_content
    ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?overflow ?padding ?padding_top
    ?padding_right ?padding_bottom ?padding_left ?page_break_before
    ?page_break_after ?page_break_inside ?orphans ?widows ?text_align ?text_indent
    ?width ?min_width ?max_width ?azimuth ?background_attachment
    ?background_color ?background_image ?background_position ?background_repeat
    ?background_size ?background ?border_top_color ?border_right_color ?border_bottom_color
    ?border_left_color ?border_color ?border_top_style ?border_right_style
    ?border_bottom_style ?border_left_style ?border_style ?border_top_width
    ?border_right_width ?border_bottom_width ?border_left_width ?border_width
    ?border_top ?border_right ?border_bottom ?border_left ?border ?color
    ?cue_after ?cue_before ?cue ?cursor ?direction ?elevation
    ?font_family ?font_size ?font_style ?font_variant ?font_weight ?font
    ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style ?outline_width
    ?outline ?pause_after ?pause_before ?pause ?pitch_range ?pitch ?play_during
    ?richness ?speak_numeral ?speak_punctuation ?speak ?speech_rate ?stress
    ?text_decoration ?text_transform ?unicode_bidi ?visibility ?voice_family
    ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.flex
      ?align_content:(Belt.Option.map align_content AlignContent.make)
      ?align_items:(Belt.Option.map align_items AlignItems.make)
      ?flex_direction:(Belt.Option.map flex_direction FlexDirection.make)
      ?flex_flow:(Belt.Option.map flex_flow FlexFlow.make)
      ?flex_wrap:(Belt.Option.map flex_wrap FlexWrap.make)
      ?justify_content:(Belt.Option.map justify_content JustifyContent.make)
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()
    |> Css_Properties.Display.flex


  let flex_item ?align_self ?flex ?flex_basis ?flex_grow ?flex_shrink ?order () =
    Internal.AppliesTo.flex_item
      ?align_self:(Belt.Option.map align_self AlignSelf.make)
      ?flex
      ?flex_basis:(Belt.Option.map flex_basis FlexBasis.make)
      ?flex_grow:(Belt.Option.map flex_grow FlexGrow.make)
      ?flex_shrink:(Belt.Option.map flex_shrink FlexShrink.make)
      ?order:(Belt.Option.map order Order.make)
      ()


  let positioned ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?clip ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?padding ?padding_top ?padding_right
    ?padding_bottom ?padding_left ?top ?right ?bottom ?left ?width ?min_width
    ?max_width ?z_index ?azimuth ?background_attachment ?background_color
    ?background_image ?background_position ?background_repeat ?background_size ?background
    ?border_top_color ?border_right_color ?border_bottom_color ?border_left_color
    ?border_color ?border_top_style ?border_right_style ?border_bottom_style
    ?border_left_style ?border_style ?border_top_width ?border_right_width
    ?border_bottom_width ?border_left_width ?border_width ?border_top
    ?border_right ?border_bottom ?border_left ?border ?color ?cue_after
    ?cue_before ?cue ?cursor ?direction ?elevation ?float ?font_family ?font_size
    ?font_style ?font_variant ?font_weight ?font ?letter_spacing ?line_height
    ?opacity ?outline_color ?outline_style ?outline_width ?outline ?pause_after ?pause_before
    ?pause ?pitch_range ?pitch ?play_during ?richness ?speak_numeral
    ?speak_punctuation ?speak ?speech_rate ?stress ?text_decoration ?text_transform
    ?unicode_bidi ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.positioned
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?clip:(Belt.Option.map clip Clip.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?top:(Belt.Option.map top Top.make)
      ?right:(Belt.Option.map right Right.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?left:(Belt.Option.map left Left.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?z_index:(Belt.Option.map z_index ZIndex.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:(Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:(Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:(Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:(Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:(Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:(Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:(Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:(Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:(Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:(Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let list_item ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height
    ?list_style_image ?list_style_position ?list_style_type ?list_style ?margin ?margin_top
    ?margin_right ?margin_bottom ?margin_left ?padding ?padding_top ?padding_right
    ?padding_bottom ?padding_left ?width ?min_width ?max_width ?azimuth
    ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range ?pitch
    ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak ?speech_rate
    ?stress ?text_decoration ?text_transform ?unicode_bidi ?visibility
    ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.list_item
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?list_style_image:(Belt.Option.map list_style_image ListStyleImage.make)
      ?list_style_position:
        (Belt.Option.map list_style_position ListStylePosition.make)
      ?list_style_type:(Belt.Option.map list_style_type ListStyleType.make)
      ?list_style
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let replaced_inline ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?padding ?padding_top ?padding_right
    ?padding_bottom ?padding_left ?vertical_align ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.replaced_inline
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let non_replaced_inline ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?margin ?margin_top ?margin_right
    ?margin_bottom ?margin_left ?padding ?padding_top ?padding_right ?padding_bottom
    ?padding_left ?vertical_align
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.non_replaced_inline
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let inline ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?padding ?padding_top ?padding_right
    ?padding_bottom ?padding_left ?vertical_align ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.inline
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let inline_flex ?align_content ?align_items ?flex_direction ?flex_flow ?flex_wrap ?justify_content
    ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?overflow ?padding ?padding_top
    ?padding_right ?padding_bottom ?padding_left ?page_break_before
    ?page_break_after ?page_break_inside ?orphans ?widows ?text_align ?text_indent
    ?width ?min_width ?max_width ?azimuth ?background_attachment
    ?background_color ?background_image ?background_position ?background_repeat
    ?background_size ?background ?border_top_color ?border_right_color ?border_bottom_color
    ?border_left_color ?border_color ?border_top_style ?border_right_style
    ?border_bottom_style ?border_left_style ?border_style ?border_top_width
    ?border_right_width ?border_bottom_width ?border_left_width ?border_width
    ?border_top ?border_right ?border_bottom ?border_left ?border ?color
    ?cue_after ?cue_before ?cue ?cursor ?direction ?elevation
    ?font_family ?font_size ?font_style ?font_variant ?font_weight ?font
    ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style ?outline_width
    ?outline ?pause_after ?pause_before ?pause ?pitch_range ?pitch ?play_during
    ?richness ?speak_numeral ?speak_punctuation ?speak ?speech_rate ?stress
    ?text_decoration ?text_transform ?unicode_bidi ?visibility ?voice_family
    ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.inline_flex
      ?align_content:(Belt.Option.map align_content AlignContent.make)
      ?align_items:(Belt.Option.map align_items AlignItems.make)
      ?flex_direction:(Belt.Option.map flex_direction FlexDirection.make)
      ?flex_flow:(Belt.Option.map flex_flow FlexFlow.make)
      ?flex_wrap:(Belt.Option.map flex_wrap FlexWrap.make)
      ?justify_content:(Belt.Option.map justify_content JustifyContent.make)
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()
    |> Css_Properties.Display.inline_flex


  let inline_block ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?clear ?height ?min_height ?max_height ?margin
    ?margin_top ?margin_right ?margin_bottom ?margin_left ?overflow ?padding ?padding_top
    ?padding_right ?padding_bottom ?padding_left ?page_break_before
    ?page_break_after ?page_break_inside ?orphans ?widows ?text_align ?text_indent
    ?width ?min_width ?max_width ?vertical_align
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction ?display
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    let style = Internal.AppliesTo.inline_block
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?clear:(Belt.Option.map clear Clear.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()
    in
    match display with
    | Some () -> Css_Properties.Display.inline_block style
    | None -> style


  let table_header_group ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height ?speak_header ?width
    ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_header_group
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_footer_group ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height ?width ?min_width
    ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_footer_group
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_caption ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?caption_side ?height ?min_height ?max_height
    ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left ?padding ?padding_top
    ?padding_right ?padding_bottom ?padding_left ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_caption
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?caption_side:(Belt.Option.map caption_side CaptionSide.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?border_collapse ?border_spacing ?height
    ?min_height ?max_height ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left ?padding
    ?padding_top ?padding_right ?padding_bottom ?padding_left ?speak_header
    ?table_layout ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?border_collapse:(Belt.Option.map border_collapse BorderCollapse.make)
      ?border_spacing:(Belt.Option.map border_spacing BorderSpacing.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?table_layout:(Belt.Option.map table_layout TableLayout.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let inline_table ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?border_collapse ?border_spacing ?height
    ?min_height ?max_height ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left
    ?padding ?padding_top ?padding_right ?padding_bottom ?padding_left
    ?table_layout ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.inline_table
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?border_collapse:(Belt.Option.map border_collapse BorderCollapse.make)
      ?border_spacing:(Belt.Option.map border_spacing BorderSpacing.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?margin
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?table_layout:(Belt.Option.map table_layout TableLayout.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_cell ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?empty_cells ?height ?min_height ?max_height
    ?padding ?padding_top ?padding_right ?padding_bottom ?padding_left ?speak_header
    ?vertical_align ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_cell
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?empty_cells:(Belt.Option.map empty_cells EmptyCells.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?padding
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_column ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_column
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_column_group ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?width ?min_width ?max_width
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_column_group
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?width:(Belt.Option.map width Width.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_row ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_row
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()


  let table_row_group ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?height ?min_height ?max_height
    ?azimuth ?background_attachment ?background_color ?background_image
    ?background_position ?background_repeat ?background_size ?background ?border_top_color
    ?border_right_color ?border_bottom_color ?border_left_color ?border_color
    ?border_top_style ?border_right_style ?border_bottom_style ?border_left_style
    ?border_style ?border_top_width ?border_right_width ?border_bottom_width
    ?border_left_width ?border_width ?border_top ?border_right ?border_bottom
    ?border_left ?border ?color ?cue_after ?cue_before ?cue ?cursor ?direction
    ?elevation ?float ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?font ?letter_spacing ?line_height ?opacity ?outline_color ?outline_style
    ?outline_width ?outline ?pause_after ?pause_before ?pause ?pitch_range
    ?pitch ?play_during ?richness ?speak_numeral ?speak_punctuation ?speak
    ?speech_rate ?stress ?text_decoration ?text_transform ?unicode_bidi
    ?visibility ?voice_family ?volume ?white_space ?word_spacing () =
    Internal.AppliesTo.table_row_group
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?height:(Belt.Option.map height Height.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:
        (Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:
        (Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:
        (Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?background
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_right_color:
        (Belt.Option.map border_right_color BorderRightColor.make)
      ?border_bottom_color:
        (Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_right_style:
        (Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_bottom_style:
        (Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_right_width:
        (Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_bottom_width:
        (Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?border_top
      ?border_right
      ?border_bottom
      ?border_left
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?font
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?outline
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:
        (Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ()

  let display
    ?align_content ?align_items ?align_self ?animation ?animation_delay ?animation_direction
    ?animation_duration ?animation_fill_mode ?animation_iteration_count ?animation_name
    ?animation_play_state ?animation_timing_function ?azimuth ?background_attachment
    ?background_color ?background ?background_image ?background_position ?background_repeat
    ?background_size ?border_bottom_color ?border_bottom ?border_bottom_style ?border_bottom_width
    ?border_collapse ?border_color ?border ?border_left_color ?border_left ?border_left_style
    ?border_left_width ?border_right_color ?border_right ?border_right_style ?border_right_width
    ?border_spacing ?border_style ?border_top_color ?border_top ?border_top_style ?border_top_width
    ?border_width ?bottom ?caption_side ?clear ?clip ?color ?cue_after ?cue_before ?cue ?cursor
    ?direction ?elevation ?empty_cells ?flex_basis ?flex ?flex_direction ?flex_flow ?flex_grow
    ?flex_shrink ?flex_wrap ?float ?font ?font_family ?font_size ?font_style ?font_variant
    ?font_weight ?height ?justify_content ?left ?letter_spacing ?line_height ?list_style
    ?list_style_image ?list_style_position ?list_style_type ?margin_bottom ?margin ?margin_left
    ?margin_right ?margin_top ?max_height ?max_width ?min_height ?min_width ?opacity ?order ?orphans
    ?outline_color ?outline ?outline_style ?outline_width ?overflow ?padding_bottom ?padding
    ?padding_left ?padding_right ?padding_top ?page_break_after ?page_break_before
    ?page_break_inside ?pause_after ?pause_before ?pause ?pitch ?pitch_range ?play_during ?richness
    ?right ?speak ?speak_header ?speak_numeral ?speak_punctuation ?speech_rate ?stress ?table_layout
    ?text_align ?text_decoration ?text_indent ?text_transform ?top ?transition ?transition_delay
    ?transition_duration ?transition_property ?transition_timing_function ?unicode_bidi
    ?vertical_align ?visibility ?voice_family ?volume ?white_space ?widows ?width ?word_spacing
    ?z_index () =
    Internal.AppliesTo.display
      ?align_content:(Belt.Option.map align_content AlignContent.make)
      ?align_items:(Belt.Option.map align_items AlignItems.make)
      ?align_self:(Belt.Option.map align_self AlignSelf.make)
      ?animation
      ?animation_delay:(Belt.Option.map animation_delay AnimationDelay.make)
      ?animation_direction:(Belt.Option.map animation_direction AnimationDirection.make)
      ?animation_duration:(Belt.Option.map animation_duration AnimationDuration.make)
      ?animation_fill_mode:(Belt.Option.map animation_fill_mode AnimationFillMode.make)
      ?animation_iteration_count:
        (Belt.Option.map animation_iteration_count AnimationIterationCount.make)
      ?animation_name:(Belt.Option.map animation_name AnimationName.make)
      ?animation_play_state:(Belt.Option.map animation_play_state AnimationPlayState.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:(Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:(Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:(Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?border_bottom_color:(Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_bottom
      ?border_bottom_style:(Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_bottom_width:(Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_collapse:(Belt.Option.map border_collapse BorderCollapse.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_left
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_right_color:(Belt.Option.map border_right_color BorderRightColor.make)
      ?border_right
      ?border_right_style:(Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_right_width:(Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_spacing:(Belt.Option.map border_spacing BorderSpacing.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_top
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?caption_side:(Belt.Option.map caption_side CaptionSide.make)
      ?clear:(Belt.Option.map clear Clear.make)
      ?clip:(Belt.Option.map clip Clip.make)
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?empty_cells:(Belt.Option.map empty_cells EmptyCells.make)
      ?flex_basis:(Belt.Option.map flex_basis FlexBasis.make)
      ?flex
      ?flex_direction:(Belt.Option.map flex_direction FlexDirection.make)
      ?flex_flow:(Belt.Option.map flex_flow FlexFlow.make)
      ?flex_grow:(Belt.Option.map flex_grow FlexGrow.make)
      ?flex_shrink:(Belt.Option.map flex_shrink FlexShrink.make)
      ?flex_wrap:(Belt.Option.map flex_wrap FlexWrap.make)
      ?float:(Belt.Option.map float Float.make)
      ?font
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?height:(Belt.Option.map height Height.make)
      ?justify_content:(Belt.Option.map justify_content JustifyContent.make)
      ?left:(Belt.Option.map left Left.make)
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?list_style
      ?list_style_image:(Belt.Option.map list_style_image ListStyleImage.make)
      ?list_style_position:(Belt.Option.map list_style_position ListStylePosition.make)
      ?list_style_type:(Belt.Option.map list_style_type ListStyleType.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?order:(Belt.Option.map order Order.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?right:(Belt.Option.map right Right.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:(Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?table_layout:(Belt.Option.map table_layout TableLayout.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?top:(Belt.Option.map top Top.make)
      ?transition
      ?transition_delay:(Belt.Option.map transition_delay TransitionDelay.make)
      ?transition_duration:(Belt.Option.map transition_duration TransitionDuration.make)
      ?transition_property:(Belt.Option.map transition_property TransitionProperty.make)
      ?transition_timing_function:(Belt.Option.map transition_timing_function TransitionTimingFunction.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?width:(Belt.Option.map width Width.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ?z_index:(Belt.Option.map z_index ZIndex.make)
      ()

  let keyframe_block
    ?align_content ?align_items ?align_self ?animation_timing_function ?azimuth
    ?background_attachment ?background_color ?background ?background_image ?background_position
    ?background_repeat ?background_size ?border_bottom_color ?border_bottom ?border_bottom_style
    ?border_bottom_width ?border_collapse ?border_color ?border ?border_left_color ?border_left
    ?border_left_style ?border_left_width ?border_right_color ?border_right ?border_right_style
    ?border_right_width ?border_spacing ?border_style ?border_top_color ?border_top
    ?border_top_style ?border_top_width ?border_width ?bottom ?caption_side ?clear ?clip ?color
    ?cue_after ?cue_before ?cue ?cursor ?direction ?elevation ?empty_cells ?flex_basis ?flex
    ?flex_direction ?flex_flow ?flex_grow ?flex_shrink ?flex_wrap ?float ?font ?font_family
    ?font_size ?font_style ?font_variant ?font_weight ?height ?justify_content ?left ?letter_spacing
    ?line_height ?list_style ?list_style_image ?list_style_position ?list_style_type ?margin_bottom
    ?margin ?margin_left ?margin_right ?margin_top ?max_height ?max_width ?min_height ?min_width
    ?opacity ?order ?orphans ?outline_color ?outline ?outline_style ?outline_width ?overflow
    ?padding_bottom ?padding ?padding_left ?padding_right ?padding_top ?page_break_after
    ?page_break_before ?page_break_inside ?pause_after ?pause_before ?pause ?pitch ?pitch_range
    ?play_during ?richness ?right ?speak ?speak_header ?speak_numeral ?speak_punctuation
    ?speech_rate ?stress ?table_layout ?text_align ?text_decoration ?text_indent ?text_transform
    ?top ?transition ?transition_delay ?transition_duration ?transition_property
    ?transition_timing_function ?unicode_bidi ?vertical_align ?visibility ?voice_family ?volume
    ?white_space ?widows ?width ?word_spacing ?z_index () =
    Internal.AppliesTo.keyframe_block
      ?align_content:(Belt.Option.map align_content AlignContent.make)
      ?align_items:(Belt.Option.map align_items AlignItems.make)
      ?align_self:(Belt.Option.map align_self AlignSelf.make)
      ?animation_timing_function:
        (Belt.Option.map animation_timing_function AnimationTimingFunction.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?background_attachment:(Belt.Option.map background_attachment BackgroundAttachment.make)
      ?background_color:(Belt.Option.map background_color BackgroundColor.make)
      ?background
      ?background_image:(Belt.Option.map background_image BackgroundImage.make)
      ?background_position:(Belt.Option.map background_position BackgroundPosition.make)
      ?background_repeat:(Belt.Option.map background_repeat BackgroundRepeat.make)
      ?background_size:(Belt.Option.map background_size BackgroundSize.make)
      ?border_bottom_color:(Belt.Option.map border_bottom_color BorderBottomColor.make)
      ?border_bottom
      ?border_bottom_style:(Belt.Option.map border_bottom_style BorderBottomStyle.make)
      ?border_bottom_width:(Belt.Option.map border_bottom_width BorderBottomWidth.make)
      ?border_collapse:(Belt.Option.map border_collapse BorderCollapse.make)
      ?border_color:(Belt.Option.map border_color BorderColor.make)
      ?border
      ?border_left_color:(Belt.Option.map border_left_color BorderLeftColor.make)
      ?border_left
      ?border_left_style:(Belt.Option.map border_left_style BorderLeftStyle.make)
      ?border_left_width:(Belt.Option.map border_left_width BorderLeftWidth.make)
      ?border_right_color:(Belt.Option.map border_right_color BorderRightColor.make)
      ?border_right
      ?border_right_style:(Belt.Option.map border_right_style BorderRightStyle.make)
      ?border_right_width:(Belt.Option.map border_right_width BorderRightWidth.make)
      ?border_spacing:(Belt.Option.map border_spacing BorderSpacing.make)
      ?border_style:(Belt.Option.map border_style BorderStyle.make)
      ?border_top_color:(Belt.Option.map border_top_color BorderTopColor.make)
      ?border_top
      ?border_top_style:(Belt.Option.map border_top_style BorderTopStyle.make)
      ?border_top_width:(Belt.Option.map border_top_width BorderTopWidth.make)
      ?border_width:(Belt.Option.map border_width BorderWidth.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?caption_side:(Belt.Option.map caption_side CaptionSide.make)
      ?clear:(Belt.Option.map clear Clear.make)
      ?clip:(Belt.Option.map clip Clip.make)
      ?color:(Belt.Option.map color Color.make)
      ?cue_after:(Belt.Option.map cue_after CueAfter.make)
      ?cue_before:(Belt.Option.map cue_before CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?empty_cells:(Belt.Option.map empty_cells EmptyCells.make)
      ?flex_basis:(Belt.Option.map flex_basis FlexBasis.make)
      ?flex
      ?flex_direction:(Belt.Option.map flex_direction FlexDirection.make)
      ?flex_flow:(Belt.Option.map flex_flow FlexFlow.make)
      ?flex_grow:(Belt.Option.map flex_grow FlexGrow.make)
      ?flex_shrink:(Belt.Option.map flex_shrink FlexShrink.make)
      ?flex_wrap:(Belt.Option.map flex_wrap FlexWrap.make)
      ?float:(Belt.Option.map float Float.make)
      ?font
      ?font_family:(Belt.Option.map font_family FontFamily.make)
      ?font_size:(Belt.Option.map font_size FontSize.make)
      ?font_style:(Belt.Option.map font_style FontStyle.make)
      ?font_variant:(Belt.Option.map font_variant FontVariant.make)
      ?font_weight:(Belt.Option.map font_weight FontWeight.make)
      ?height:(Belt.Option.map height Height.make)
      ?justify_content:(Belt.Option.map justify_content JustifyContent.make)
      ?left:(Belt.Option.map left Left.make)
      ?letter_spacing:(Belt.Option.map letter_spacing LetterSpacing.make)
      ?line_height:(Belt.Option.map line_height LineHeight.make)
      ?list_style
      ?list_style_image:(Belt.Option.map list_style_image ListStyleImage.make)
      ?list_style_position:(Belt.Option.map list_style_position ListStylePosition.make)
      ?list_style_type:(Belt.Option.map list_style_type ListStyleType.make)
      ?margin_bottom:(Belt.Option.map margin_bottom MarginBottom.make)
      ?margin
      ?margin_left:(Belt.Option.map margin_left MarginLeft.make)
      ?margin_right:(Belt.Option.map margin_right MarginRight.make)
      ?margin_top:(Belt.Option.map margin_top MarginTop.make)
      ?max_height:(Belt.Option.map max_height MaxHeight.make)
      ?max_width:(Belt.Option.map max_width MaxWidth.make)
      ?min_height:(Belt.Option.map min_height MinHeight.make)
      ?min_width:(Belt.Option.map min_width MinWidth.make)
      ?opacity:(Belt.Option.map opacity Opacity.make)
      ?order:(Belt.Option.map order Order.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?outline_color:(Belt.Option.map outline_color OutlineColor.make)
      ?outline
      ?outline_style:(Belt.Option.map outline_style OutlineStyle.make)
      ?outline_width:(Belt.Option.map outline_width OutlineWidth.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding_bottom:(Belt.Option.map padding_bottom PaddingBottom.make)
      ?padding
      ?padding_left:(Belt.Option.map padding_left PaddingLeft.make)
      ?padding_right:(Belt.Option.map padding_right PaddingRight.make)
      ?padding_top:(Belt.Option.map padding_top PaddingTop.make)
      ?page_break_after:(Belt.Option.map page_break_after PageBreakAfter.make)
      ?page_break_before:(Belt.Option.map page_break_before PageBreakBefore.make)
      ?page_break_inside:(Belt.Option.map page_break_inside PageBreakInside.make)
      ?pause_after:(Belt.Option.map pause_after PauseAfter.make)
      ?pause_before:(Belt.Option.map pause_before PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?pitch_range:(Belt.Option.map pitch_range PitchRange.make)
      ?play_during:(Belt.Option.map play_during PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?right:(Belt.Option.map right Right.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speak_header:(Belt.Option.map speak_header SpeakHeader.make)
      ?speak_numeral:(Belt.Option.map speak_numeral SpeakNumeral.make)
      ?speak_punctuation:(Belt.Option.map speak_punctuation SpeakPunctuation.make)
      ?speech_rate:(Belt.Option.map speech_rate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?table_layout:(Belt.Option.map table_layout TableLayout.make)
      ?text_align:(Belt.Option.map text_align TextAlign.make)
      ?text_decoration:(Belt.Option.map text_decoration TextDecoration.make)
      ?text_indent:(Belt.Option.map text_indent TextIndent.make)
      ?text_transform:(Belt.Option.map text_transform TextTransform.make)
      ?top:(Belt.Option.map top Top.make)
      ?transition
      ?transition_delay:(Belt.Option.map transition_delay TransitionDelay.make)
      ?transition_duration:(Belt.Option.map transition_duration TransitionDuration.make)
      ?transition_property:(Belt.Option.map transition_property TransitionProperty.make)
      ?transition_timing_function:(Belt.Option.map transition_timing_function TransitionTimingFunction.make)
      ?unicode_bidi:(Belt.Option.map unicode_bidi UnicodeBidi.make)
      ?vertical_align:(Belt.Option.map vertical_align VerticalAlign.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voice_family:(Belt.Option.map voice_family VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?white_space:(Belt.Option.map white_space WhiteSpace.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?width:(Belt.Option.map width Width.make)
      ?word_spacing:(Belt.Option.map word_spacing WordSpacing.make)
      ?z_index:(Belt.Option.map z_index ZIndex.make)
      ()
end

include AppliesTo


let show ?(indent=0) selector properties =
  let indent' = Js.String.repeat indent "  "
  in
  indent' ^ Css_Selector.show selector ^" {\n"^
    Css_Property.show_properties ~indent:(indent + 1) properties ^"\n"^
  indent' ^"}"
