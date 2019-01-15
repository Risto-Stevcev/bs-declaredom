open Css_Properties

type 'a t = 'a Js.Dict.t

let show_dict (styles: 'a t): string t =
  styles
  |> Js.Dict.map (fun [@bs] e -> Css_Property.show (e :> Css_Property.display))

let to_display styles: Css_Property.display t =
  styles |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display))

let merge (style_a: [< Css_Property.display] t) style_b =
  Util.merge_all [|Js.Dict.empty (); style_a; style_b|]


module Internal = struct
  module Group = struct
    external aligns:
      ?alignContent:Css_Property.align_content ->
      ?alignItems:Css_Property.align_items ->
      ?alignSelf:Css_Property.align_self ->
      unit ->
      Css_Property.aligns t = "" [@@bs.obj]

    external backgrounds:
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      unit ->
      Css_Property.backgrounds t = "" [@@bs.obj]

    external borders:
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      unit ->
      Css_Property.borders t = "" [@@bs.obj]

    external border_colors:
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      unit ->
      Css_Property.border_colors t = "" [@@bs.obj]

    external border_styles:
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      unit ->
      Css_Property.border_styles t = "" [@@bs.obj]

    external border_widths:
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      unit ->
      Css_Property.border_widths t = "" [@@bs.obj]

    external cues:
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      unit ->
      Css_Property.cues t = "" [@@bs.obj]

    external flexs:
      ?flex:Css_Property.flex ->
      ?flexBasis:Css_Property.flex_basis ->
      ?flexDirection:Css_Property.flex_direction ->
      ?flexFlow:Css_Property.flex_flow ->
      ?flexGrow:Css_Property.flex_grow ->
      ?flexShrink:Css_Property.flex_shrink ->
      ?flexWrap:Css_Property.flex_wrap ->
      unit ->
      Css_Property.flexs t = "" [@@bs.obj]

    external fonts:
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      unit ->
      Css_Property.fonts t = "" [@@bs.obj]

    external heights:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      unit ->
      Css_Property.heights t = "" [@@bs.obj]

    external margins:
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      unit ->
      Css_Property.margins t = "" [@@bs.obj]

    external paddings:
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      unit ->
      Css_Property.paddings t = "" [@@bs.obj]

    external list_styles:
      ?listStyleImage:Css_Property.list_style_image ->
      ?listStylePosition:Css_Property.list_style_position ->
      ?listStyleType:Css_Property.list_style_type ->
      ?listStyle:Css_Property.list_style ->
      unit ->
      Css_Property.list_styles t = "" [@@bs.obj]

    external outlines:
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      unit ->
      Css_Property.outlines t = "" [@@bs.obj]

    external page_breaks:
      ?pageBreakBefore:Css_Property.page_break_before ->
      ?pageBreakAfter:Css_Property.page_break_after ->
      ?pageBreakInside:Css_Property.page_break_inside ->
      unit ->
      Css_Property.page_breaks t = "" [@@bs.obj]

    external page_breaks_inside:
      ?orphans:Css_Property.orphans ->
      ?widows:Css_Property.widows ->
      unit ->
      Css_Property.page_break_inside t = "" [@@bs.obj]

    external pauses:
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      unit ->
      Css_Property.pauses t = "" [@@bs.obj]

    external positions:
      ?top:Css_Property.top ->
      ?right:Css_Property.right ->
      ?bottom:Css_Property.bottom ->
      ?left:Css_Property.left ->
      unit ->
      Css_Property.positions t = "" [@@bs.obj]

    external speaks:
      ?speakHeader:Css_Property.speak_header ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      unit ->
      Css_Property.speaks t = "" [@@bs.obj]

    external texts:
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?textAlign:Css_Property.text_align ->
      ?textIndent:Css_Property.text_indent ->
      unit ->
      Css_Property.texts t = "" [@@bs.obj]

    external widths:
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      unit ->
      Css_Property.widths t = "" [@@bs.obj]
  end


  module MediaGroup = struct
    external aural:
      ?azimuth:Css_Property.azimuth ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?elevation:Css_Property.elevation ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakHeader:Css_Property.speak_header ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      unit ->
      Css_Property.MediaGroup.aural t = "" [@@bs.obj]

    external interactive:
      ?cursor:Css_Property.cursor ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      unit ->
      Css_Property.MediaGroup.interactive t = "" [@@bs.obj]

    external visual:
      ?alignContent:Css_Property.align_content ->
      ?alignItems:Css_Property.align_items ->
      ?alignSelf:Css_Property.align_self ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderCollapse:Css_Property.border_collapse ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderSpacing:Css_Property.border_spacing ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?captionSide:Css_Property.caption_side ->
      ?clear:Css_Property.clear ->
      ?clip:Css_Property.clip ->
      ?color:Css_Property.color ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?emptyCells:Css_Property.empty_cells ->
      ?flex:Css_Property.flex ->
      ?flexBasis:Css_Property.flex_basis ->
      ?flexDirection:Css_Property.flex_direction ->
      ?flexFlow:Css_Property.flex_flow ->
      ?flexGrow:Css_Property.flex_grow ->
      ?flexShrink:Css_Property.flex_shrink ->
      ?flexWrap:Css_Property.flex_wrap ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?justifyContent:Css_Property.justify_content ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?listStyleImage:Css_Property.list_style_image ->
      ?listStylePosition:Css_Property.list_style_position ->
      ?listStyleType:Css_Property.list_style_type ->
      ?listStyle:Css_Property.list_style ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?order:Css_Property.order ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?overflow:Css_Property.overflow ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?pageBreakBefore:Css_Property.page_break_before ->
      ?pageBreakAfter:Css_Property.page_break_after ->
      ?pageBreakInside:Css_Property.page_break_inside ->
      ?orphans:Css_Property.orphans ->
      ?widows:Css_Property.widows ->
      ?top:Css_Property.top ->
      ?right:Css_Property.right ->
      ?bottom:Css_Property.bottom ->
      ?left:Css_Property.left ->
      ?tableLayout:Css_Property.table_layout ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?textAlign:Css_Property.text_align ->
      ?textIndent:Css_Property.text_indent ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?visibility:Css_Property.visibility ->
      ?whiteSpace:Css_Property.white_space ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?wordSpacing:Css_Property.word_spacing ->
      ?zIndex:Css_Property.z_index ->
      unit ->
      Css_Property.MediaGroup.visual t = "" [@@bs.obj]

    external paged:
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?pageBreakBefore:Css_Property.page_break_before ->
      ?pageBreakAfter:Css_Property.page_break_after ->
      ?pageBreakInside:Css_Property.page_break_inside ->
      ?orphans:Css_Property.orphans ->
      ?widows:Css_Property.widows ->
      unit ->
      Css_Property.MediaGroup.paged t = "" [@@bs.obj]
  end


  module AppliesTo = struct
    external any:
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing ->
      unit ->
      Css_Property.any t = "" [@@bs.obj]


    external block:
      ?clear:Css_Property.clear ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?overflow:Css_Property.overflow ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?pageBreakBefore:Css_Property.page_break_before ->
      ?pageBreakAfter:Css_Property.page_break_after ->
      ?pageBreakInside:Css_Property.page_break_inside ->
      ?orphans:Css_Property.orphans ->
      ?widows:Css_Property.widows ->
      ?textAlign:Css_Property.text_align ->
      ?textIndent:Css_Property.text_indent ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.block t = "" [@@bs.obj]


    external flexbox:
      ?alignContent:Css_Property.align_content ->
      ?alignItems:Css_Property.align_items ->
      ?flexDirection:Css_Property.flex_direction ->
      ?flexFlow:Css_Property.flex_flow ->
      ?flexWrap:Css_Property.flex_wrap ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?justifyContent:Css_Property.justify_content ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?order:Css_Property.order ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.flexbox t = "" [@@bs.obj]


    external flex_item:
      ?alignSelf:Css_Property.align_self ->
      ?flex:Css_Property.flex ->
      ?flexBasis:Css_Property.flex_basis ->
      ?flexGrow:Css_Property.flex_grow ->
      ?flexShrink:Css_Property.flex_shrink ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.flex_item t = "" [@@bs.obj]


    external list_item:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?listStyleImage:Css_Property.list_style_image ->
      ?listStylePosition:Css_Property.list_style_position ->
      ?listStyleType:Css_Property.list_style_type ->
      ?listStyle:Css_Property.list_style ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.list_item t = "" [@@bs.obj]


    external positioned:
      ?clip:Css_Property.clip ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?top:Css_Property.top ->
      ?right:Css_Property.right ->
      ?bottom:Css_Property.bottom ->
      ?left:Css_Property.left ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?zIndex:Css_Property.z_index ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.positioned t = "" [@@bs.obj]


    external replaced_inline:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.replaced_inline t = "" [@@bs.obj]


    external non_replaced_inline:
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.non_replaced_inline t = "" [@@bs.obj]


    external inline:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.inline t = "" [@@bs.obj]


    external inline_flex:
      ?alignContent:Css_Property.align_content ->
      ?alignItems:Css_Property.align_items ->
      ?flex:Css_Property.flex ->
      ?flexBasis:Css_Property.flex_basis ->
      ?flexDirection:Css_Property.flex_direction ->
      ?flexFlow:Css_Property.flex_flow ->
      ?flexGrow:Css_Property.flex_grow ->
      ?flexShrink:Css_Property.flex_shrink ->
      ?flexWrap:Css_Property.flex_wrap ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?justifyContent:Css_Property.justify_content ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?order:Css_Property.order ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.inline_flex t = "" [@@bs.obj]


    external inline_block:
      ?clear:Css_Property.clear ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?overflow:Css_Property.overflow ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?pageBreakBefore:Css_Property.page_break_before ->
      ?pageBreakAfter:Css_Property.page_break_after ->
      ?pageBreakInside:Css_Property.page_break_inside ->
      ?orphans:Css_Property.orphans ->
      ?widows:Css_Property.widows ->
      ?textAlign:Css_Property.text_align ->
      ?textIndent:Css_Property.text_indent ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.inline_block t = "" [@@bs.obj]


    external table_header_group:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?speakHeader:Css_Property.speak_header ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_header_group t = "" [@@bs.obj]


    external table_footer_group:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_footer_group t = "" [@@bs.obj]


    external table_caption:
      ?captionSide:Css_Property.caption_side ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_caption t = "" [@@bs.obj]
 

    external table:
      ?borderCollapse:Css_Property.border_collapse ->
      ?borderSpacing:Css_Property.border_spacing ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?speakHeader:Css_Property.speak_header ->
      ?tableLayout:Css_Property.table_layout ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table t = "" [@@bs.obj]


    external inline_table:
      ?borderCollapse:Css_Property.border_collapse ->
      ?borderSpacing:Css_Property.border_spacing ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?margin:Css_Property.margin ->
      ?marginTop:Css_Property.margin_top ->
      ?marginRight:Css_Property.margin_right ->
      ?marginBottom:Css_Property.margin_bottom ->
      ?marginLeft:Css_Property.margin_left ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?tableLayout:Css_Property.table_layout ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.inline_table t = "" [@@bs.obj]


    external table_cell:
      ?emptyCells:Css_Property.empty_cells ->
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?padding:Css_Property.padding ->
      ?paddingTop:Css_Property.padding_top ->
      ?paddingRight:Css_Property.padding_right ->
      ?paddingBottom:Css_Property.padding_bottom ->
      ?paddingLeft:Css_Property.padding_left ->
      ?speakHeader:Css_Property.speak_header ->
      ?verticalAlign:Css_Property.vertical_align ->
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_cell t = "" [@@bs.obj]


    external table_column:
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_column t = "" [@@bs.obj]


    external table_column_group:
      ?width:Css_Property.width ->
      ?minWidth:Css_Property.min_width ->
      ?maxWidth:Css_Property.max_width ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_column_group t = "" [@@bs.obj]


    external table_row:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_row t = "" [@@bs.obj]


    external table_row_group:
      ?height:Css_Property.height ->
      ?minHeight:Css_Property.min_height ->
      ?maxHeight:Css_Property.max_height ->
      ?azimuth:Css_Property.azimuth ->
      ?backgroundAttachment:Css_Property.background_attachment ->
      ?backgroundColor:Css_Property.background_color ->
      ?backgroundImage:Css_Property.background_image ->
      ?backgroundPosition:Css_Property.background_position ->
      ?backgroundRepeat:Css_Property.background_repeat ->
      ?background:Css_Property.background ->
      ?borderTopColor:Css_Property.border_top_color ->
      ?borderRightColor:Css_Property.border_right_color ->
      ?borderBottomColor:Css_Property.border_bottom_color ->
      ?borderLeftColor:Css_Property.border_left_color ->
      ?borderColor:Css_Property.border_color ->
      ?borderTopStyle:Css_Property.border_top_style ->
      ?borderRightStyle:Css_Property.border_right_style ->
      ?borderBottomStyle:Css_Property.border_bottom_style ->
      ?borderLeftStyle:Css_Property.border_left_style ->
      ?borderStyle:Css_Property.border_style ->
      ?borderTopWidth:Css_Property.border_top_width ->
      ?borderRightWidth:Css_Property.border_right_width ->
      ?borderBottomWidth:Css_Property.border_bottom_width ->
      ?borderLeftWidth:Css_Property.border_left_width ->
      ?borderWidth:Css_Property.border_width ->
      ?borderTop:Css_Property.border_top ->
      ?borderRight:Css_Property.border_right ->
      ?borderBottom:Css_Property.border_bottom ->
      ?borderLeft:Css_Property.border_left ->
      ?border:Css_Property.border ->
      ?color:Css_Property.color ->
      ?cueAfter:Css_Property.cue_after ->
      ?cueBefore:Css_Property.cue_before ->
      ?cue:Css_Property.cue ->
      ?cursor:Css_Property.cursor ->
      ?direction:Css_Property.direction ->
      ?elevation:Css_Property.elevation ->
      ?float:Css_Property.float_ ->
      ?fontFamily:Css_Property.font_family ->
      ?fontSize:Css_Property.font_size ->
      ?fontStyle:Css_Property.font_style ->
      ?fontVariant:Css_Property.font_variant ->
      ?fontWeight:Css_Property.font_weight ->
      ?font:Css_Property.font ->
      ?letterSpacing:Css_Property.letter_spacing ->
      ?lineHeight:Css_Property.line_height ->
      ?outlineColor:Css_Property.outline_color ->
      ?outlineStyle:Css_Property.outline_style ->
      ?outlineWidth:Css_Property.outline_width ->
      ?outline:Css_Property.outline ->
      ?pauseAfter:Css_Property.pause_after ->
      ?pauseBefore:Css_Property.pause_before ->
      ?pause:Css_Property.pause ->
      ?pitchRange:Css_Property.pitch_range ->
      ?pitch:Css_Property.pitch ->
      ?playDuring:Css_Property.play_during ->
      ?richness:Css_Property.richness ->
      ?speakNumeral:Css_Property.speak_numeral ->
      ?speakPunctuation:Css_Property.speak_punctuation ->
      ?speak:Css_Property.speak ->
      ?speechRate:Css_Property.speech_rate ->
      ?stress:Css_Property.stress ->
      ?textDecoration:Css_Property.text_decoration ->
      ?textTransform:Css_Property.text_transform ->
      ?unicodeBidi:Css_Property.unicode_bidi ->
      ?visibility:Css_Property.visibility ->
      ?voiceFamily:Css_Property.voice_family ->
      ?volume:Css_Property.volume ->
      ?whiteSpace:Css_Property.white_space ->
      ?wordSpacing:Css_Property.word_spacing -> 
      unit ->
      Css_Property.table_row_group t = "" [@@bs.obj]
  end
end


module Shorthand = struct
  let background = Css_Properties.Background.make
  let borderTop = Css_Properties.BorderTop.make
  let borderRight = Css_Properties.BorderRight.make
  let borderBottom = Css_Properties.BorderBottom.make
  let borderLeft = Css_Properties.BorderLeft.make
  let border = Css_Properties.Border.make
  let font = Css_Properties.Font.make
  let flex = Css_Properties.Flex.make
  let listStyle = Css_Properties.ListStyle.make
  let margin = Css_Properties.Margin.make
  let outline = Css_Properties.Outline.make
  let padding = Css_Properties.Padding.make
end

include Shorthand


module Group = struct
  let aligns ?alignContent ?alignItems ?alignSelf () =
    Internal.Group.aligns
      ?alignContent:(Belt.Option.map alignContent AlignContent.make)
      ?alignItems:(Belt.Option.map alignItems AlignItems.make)
      ?alignSelf:(Belt.Option.map alignSelf AlignSelf.make)
      ()

  let backgrounds ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background () =
    Internal.Group.backgrounds
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:(Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ()

  let borders ?borderTop ?borderRight ?borderBottom ?borderLeft ?border () =
    Internal.Group.borders
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ()

  let border_colors ?borderTopColor ?borderRightColor ?borderBottomColor
    ?borderLeftColor ?borderColor () =
    Internal.Group.border_colors
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:(Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ()

  let border_styles ?borderTopStyle ?borderRightStyle ?borderBottomStyle
    ?borderLeftStyle ?borderStyle () =
    Internal.Group.border_styles
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:(Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ()

  let border_widths ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth () =
    Internal.Group.border_widths
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:(Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ()


  let heights ?height ?minHeight ?maxHeight () =
    Internal.Group.heights
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ()

  let cues ?cueAfter ?cueBefore ?cue () =
    Internal.Group.cues
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ()

  let flexs ?flex ?flexBasis ?flexDirection ?flexFlow ?flexGrow ?flexShrink
    ?flexWrap () =
    Internal.Group.flexs
      ?flex
      ?flexBasis:(Belt.Option.map flexBasis FlexBasis.make)
      ?flexDirection:(Belt.Option.map flexDirection FlexDirection.make)
      ?flexFlow:(Belt.Option.map flexFlow FlexFlow.make)
      ?flexGrow:(Belt.Option.map flexGrow FlexGrow.make)
      ?flexShrink:(Belt.Option.map flexShrink FlexShrink.make)
      ?flexWrap:(Belt.Option.map flexWrap FlexWrap.make)
      ()

  let fonts ?fontFamily ?fontSize ?fontStyle ?fontVariant ?fontWeight ?font
    () =
    Internal.Group.fonts
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ()

  let margins ?margin ?marginTop ?marginRight ?marginBottom ?marginLeft () =
    Internal.Group.margins
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ()

  let paddings ?padding ?paddingTop ?paddingRight ?paddingBottom ?paddingLeft 
    () =
    Internal.Group.paddings
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ()

  let list_styles ?listStyleImage ?listStylePosition ?listStyleType ?listStyle 
    () =
    Internal.Group.list_styles
      ?listStyleImage:(Belt.Option.map listStyleImage ListStyleImage.make)
      ?listStylePosition:
        (Belt.Option.map listStylePosition ListStylePosition.make)
      ?listStyleType:(Belt.Option.map listStyleType ListStyleType.make)
      ?listStyle
      ()

  let outlines ?outlineColor ?outlineStyle ?outlineWidth ?outline () =
    Internal.Group.outlines
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ()

  let page_breaks ?pageBreakBefore ?pageBreakAfter ?pageBreakInside () =
    Internal.Group.page_breaks
      ?pageBreakBefore:(Belt.Option.map pageBreakBefore PageBreakBefore.make)
      ?pageBreakAfter:(Belt.Option.map pageBreakAfter PageBreakAfter.make)
      ?pageBreakInside:(Belt.Option.map pageBreakInside PageBreakInside.make)
      ()

  let page_breaks_inside ?orphans ?widows () =
    Internal.Group.page_breaks_inside
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ()

  let pauses ?pauseAfter ?pauseBefore ?pause () =
    Internal.Group.pauses
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ()

  let positions ?top ?right ?bottom ?left () =
    Internal.Group.positions
      ?top:(Belt.Option.map top Top.make)
      ?right:(Belt.Option.map right Right.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?left:(Belt.Option.map left Left.make)
      ()

  let speaks ?speakHeader ?speakNumeral ?speakPunctuation ?speak () =
    Internal.Group.speaks
      ?speakHeader:(Belt.Option.map speakHeader SpeakHeader.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:(Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ()

  let texts ?textDecoration ?textTransform ?textAlign ?textIndent () =
    Internal.Group.texts
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?textAlign:(Belt.Option.map textAlign TextAlign.make)
      ?textIndent:(Belt.Option.map textIndent TextIndent.make)
      ()

  let widths ?width ?minWidth ?maxWidth () =
    Internal.Group.widths
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ()
end


module MediaGroup = struct
  let aural ?azimuth ?cueAfter ?cueBefore ?cue ?elevation ?pauseAfter
    ?pauseBefore ?pause ?pitchRange ?pitch ?playDuring ?richness ?speakHeader
    ?speakNumeral ?speakPunctuation ?speak ?speechRate ?stress ?voiceFamily
    ?volume () =
    Internal.MediaGroup.aural
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakHeader:(Belt.Option.map speakHeader SpeakHeader.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:(Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ()

  let interactive ?cursor ?outlineColor ?outlineStyle ?outlineWidth ?outline
    () =
    Internal.MediaGroup.interactive
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ()

  let visual ?alignContent ?alignItems ?alignSelf ?backgroundAttachment
    ?backgroundColor ?backgroundImage ?backgroundPosition ?backgroundRepeat
    ?background ?borderCollapse ?borderTopColor ?borderRightColor
    ?borderBottomColor ?borderLeftColor ?borderColor ?borderSpacing
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?captionSide ?clear ?clip ?color ?cursor ?direction
    ?emptyCells ?flex ?flexBasis ?flexDirection ?flexFlow ?flexGrow
    ?flexShrink ?flexWrap ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?height ?minHeight ?maxHeight ?justifyContent
    ?letterSpacing ?lineHeight ?listStyleImage ?listStylePosition
    ?listStyleType ?listStyle ?margin ?marginTop ?marginRight ?marginBottom
    ?marginLeft ?order ?outlineColor ?outlineStyle ?outlineWidth ?outline
    ?overflow ?padding ?paddingTop ?paddingRight ?paddingBottom ?paddingLeft
    ?pageBreakBefore ?pageBreakAfter ?pageBreakInside ?orphans ?widows ?top
    ?right ?bottom ?left ?tableLayout ?textDecoration ?textTransform ?textAlign
    ?textIndent ?unicodeBidi ?verticalAlign ?visibility ?whiteSpace ?width
    ?minWidth ?maxWidth ?wordSpacing ?zIndex () =
    Internal.MediaGroup.visual
      ?alignContent:(Belt.Option.map alignContent AlignContent.make)
      ?alignItems:(Belt.Option.map alignItems AlignItems.make)
      ?alignSelf:(Belt.Option.map alignSelf AlignSelf.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:(Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderCollapse:(Belt.Option.map borderCollapse BorderCollapse.make)
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:(Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderSpacing:(Belt.Option.map borderSpacing BorderSpacing.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:(Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:(Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?captionSide:(Belt.Option.map captionSide CaptionSide.make)
      ?clear:(Belt.Option.map clear Clear.make)
      ?clip:(Belt.Option.map clip Clip.make)
      ?color:(Belt.Option.map color Color.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?emptyCells:(Belt.Option.map emptyCells EmptyCells.make)
      ?flex
      ?flexBasis:(Belt.Option.map flexBasis FlexBasis.make)
      ?flexDirection:(Belt.Option.map flexDirection FlexDirection.make)
      ?flexFlow:(Belt.Option.map flexFlow FlexFlow.make)
      ?flexGrow:(Belt.Option.map flexGrow FlexGrow.make)
      ?flexShrink:(Belt.Option.map flexShrink FlexShrink.make)
      ?flexWrap:(Belt.Option.map flexWrap FlexWrap.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?justifyContent:(Belt.Option.map justifyContent JustifyContent.make)
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?listStyleImage:(Belt.Option.map listStyleImage ListStyleImage.make)
      ?listStylePosition:
        (Belt.Option.map listStylePosition ListStylePosition.make)
      ?listStyleType:(Belt.Option.map listStyleType ListStyleType.make)
      ?listStyle
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?order:(Belt.Option.map order Order.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?pageBreakBefore:(Belt.Option.map pageBreakBefore PageBreakBefore.make)
      ?pageBreakAfter:(Belt.Option.map pageBreakAfter PageBreakAfter.make)
      ?pageBreakInside:(Belt.Option.map pageBreakInside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?top:(Belt.Option.map top Top.make)
      ?right:(Belt.Option.map right Right.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?left:(Belt.Option.map left Left.make)
      ?tableLayout:(Belt.Option.map tableLayout TableLayout.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?textAlign:(Belt.Option.map textAlign TextAlign.make)
      ?textIndent:(Belt.Option.map textIndent TextIndent.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make)
      ?zIndex:(Belt.Option.map zIndex ZIndex.make)
      ()

  let paged ?margin ?marginTop ?marginRight ?marginBottom ?marginLeft
    ?pageBreakBefore ?pageBreakAfter ?pageBreakInside ?orphans ?widows () =
    Internal.MediaGroup.paged
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?pageBreakBefore:(Belt.Option.map pageBreakBefore PageBreakBefore.make)
      ?pageBreakAfter:(Belt.Option.map pageBreakAfter PageBreakAfter.make)
      ?pageBreakInside:(Belt.Option.map pageBreakInside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ()
end


module AppliesTo = struct
  let any ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant ?fontWeight
    ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle ?outlineWidth
    ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange ?pitch ?playDuring
    ?richness ?speakNumeral ?speakPunctuation ?speak ?speechRate ?stress
    ?textDecoration ?textTransform ?unicodeBidi ?visibility ?voiceFamily
    ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.any
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:(Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:(Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:(Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:(Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:(Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:(Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:(Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:(Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:(Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:(Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make)
      ()

  let block ?clear ?height ?minHeight ?maxHeight ?margin ?marginTop
    ?marginRight ?marginBottom ?marginLeft ?overflow ?padding ?paddingTop
    ?paddingRight ?paddingBottom ?paddingLeft ?pageBreakBefore
    ?pageBreakAfter ?pageBreakInside ?orphans ?widows ?textAlign ?textIndent
    ?width ?minWidth ?maxWidth ?azimuth ?backgroundAttachment
    ?backgroundColor ?backgroundImage ?backgroundPosition ?backgroundRepeat
    ?background ?borderTopColor ?borderRightColor ?borderBottomColor
    ?borderLeftColor ?borderColor ?borderTopStyle ?borderRightStyle
    ?borderBottomStyle ?borderLeftStyle ?borderStyle ?borderTopWidth
    ?borderRightWidth ?borderBottomWidth ?borderLeftWidth ?borderWidth
    ?borderTop ?borderRight ?borderBottom ?borderLeft ?border ?color
    ?cueAfter ?cueBefore ?cue ?cursor ?direction ?elevation ?float
    ?fontFamily ?fontSize ?fontStyle ?fontVariant ?fontWeight ?font
    ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle ?outlineWidth
    ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange ?pitch ?playDuring
    ?richness ?speakNumeral ?speakPunctuation ?speak ?speechRate ?stress
    ?textDecoration ?textTransform ?unicodeBidi ?visibility ?voiceFamily
    ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.block
      ?clear:(Belt.Option.map clear Clear.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?pageBreakBefore:(Belt.Option.map pageBreakBefore PageBreakBefore.make)
      ?pageBreakAfter:(Belt.Option.map pageBreakAfter PageBreakAfter.make)
      ?pageBreakInside:(Belt.Option.map pageBreakInside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?textAlign:(Belt.Option.map textAlign TextAlign.make)
      ?textIndent:(Belt.Option.map textIndent TextIndent.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let flexbox ?alignContent ?alignItems ?flexDirection ?flexFlow
    ?flexWrap ?height ?minHeight ?maxHeight
    ?justifyContent ?margin ?marginTop ?marginRight ?marginBottom ?marginLeft
    ?order ?padding ?paddingTop ?paddingRight ?paddingBottom ?paddingLeft
    ?width ?minWidth ?maxWidth ?azimuth ?backgroundAttachment ?backgroundColor
    ?backgroundImage ?backgroundPosition ?backgroundRepeat ?background
    ?borderTopColor ?borderRightColor ?borderBottomColor ?borderLeftColor
    ?borderColor ?borderTopStyle ?borderRightStyle ?borderBottomStyle
    ?borderLeftStyle ?borderStyle ?borderTopWidth ?borderRightWidth
    ?borderBottomWidth ?borderLeftWidth ?borderWidth ?borderTop ?borderRight
    ?borderBottom ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor
    ?direction ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor
    ?outlineStyle ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause
    ?pitchRange ?pitch ?playDuring ?richness ?speakNumeral
    ?speakPunctuation ?speak ?speechRate ?stress ?textDecoration
    ?textTransform ?unicodeBidi ?visibility ?voiceFamily ?volume
    ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.flexbox
      ?alignContent:(Belt.Option.map alignContent AlignContent.make)
      ?alignItems:(Belt.Option.map alignItems AlignItems.make)
      ?flexDirection:(Belt.Option.map flexDirection FlexDirection.make)
      ?flexFlow:(Belt.Option.map flexFlow FlexFlow.make)
      ?flexWrap:(Belt.Option.map flexWrap FlexWrap.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?justifyContent:(Belt.Option.map justifyContent JustifyContent.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?order:(Belt.Option.map order Order.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let flex_item ?alignSelf ?flex ?flexBasis ?flexGrow ?flexShrink
    ?azimuth ?backgroundAttachment ?backgroundColor
    ?backgroundImage ?backgroundPosition ?backgroundRepeat ?background
    ?borderTopColor ?borderRightColor ?borderBottomColor ?borderLeftColor
    ?borderColor ?borderTopStyle ?borderRightStyle ?borderBottomStyle
    ?borderLeftStyle ?borderStyle ?borderTopWidth ?borderRightWidth
    ?borderBottomWidth ?borderLeftWidth ?borderWidth ?borderTop ?borderRight
    ?borderBottom ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor
    ?direction ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor
    ?outlineStyle ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause
    ?pitchRange ?pitch ?playDuring ?richness ?speakNumeral
    ?speakPunctuation ?speak ?speechRate ?stress ?textDecoration
    ?textTransform ?unicodeBidi ?visibility ?voiceFamily ?volume
    ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.flex_item
      ?alignSelf:(Belt.Option.map alignSelf AlignSelf.make)
      ?flex
      ?flexBasis:(Belt.Option.map flexBasis FlexBasis.make)
      ?flexGrow:(Belt.Option.map flexGrow FlexGrow.make)
      ?flexShrink:(Belt.Option.map flexShrink FlexShrink.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()




  let positioned ?clip ?height ?minHeight ?maxHeight ?margin ?marginTop
    ?marginRight ?marginBottom ?marginLeft ?padding ?paddingTop ?paddingRight
    ?paddingBottom ?paddingLeft ?top ?right ?bottom ?left ?width ?minWidth
    ?maxWidth ?zIndex ?azimuth ?backgroundAttachment ?backgroundColor
    ?backgroundImage ?backgroundPosition ?backgroundRepeat ?background
    ?borderTopColor ?borderRightColor ?borderBottomColor ?borderLeftColor
    ?borderColor ?borderTopStyle ?borderRightStyle ?borderBottomStyle
    ?borderLeftStyle ?borderStyle ?borderTopWidth ?borderRightWidth
    ?borderBottomWidth ?borderLeftWidth ?borderWidth ?borderTop
    ?borderRight ?borderBottom ?borderLeft ?border ?color ?cueAfter
    ?cueBefore ?cue ?cursor ?direction ?elevation ?float ?fontFamily ?fontSize
    ?fontStyle ?fontVariant ?fontWeight ?font ?letterSpacing ?lineHeight
    ?outlineColor ?outlineStyle ?outlineWidth ?outline ?pauseAfter ?pauseBefore
    ?pause ?pitchRange ?pitch ?playDuring ?richness ?speakNumeral
    ?speakPunctuation ?speak ?speechRate ?stress ?textDecoration ?textTransform
    ?unicodeBidi ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.positioned
      ?clip:(Belt.Option.map clip Clip.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?top:(Belt.Option.map top Top.make)
      ?right:(Belt.Option.map right Right.make)
      ?bottom:(Belt.Option.map bottom Bottom.make)
      ?left:(Belt.Option.map left Left.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?zIndex:(Belt.Option.map zIndex ZIndex.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:(Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:(Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:(Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:(Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:(Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:(Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:(Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:(Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:(Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:(Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make)
      ()


  let list_item ?height ?minHeight ?maxHeight ?listStyleImage
    ?listStylePosition ?listStyleType ?listStyle ?margin ?marginTop
    ?marginRight ?marginBottom ?marginLeft ?padding ?paddingTop ?paddingRight
    ?paddingBottom ?paddingLeft ?width ?minWidth ?maxWidth ?azimuth
    ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange ?pitch
    ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak ?speechRate
    ?stress ?textDecoration ?textTransform ?unicodeBidi ?visibility 
    ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.list_item
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?listStyleImage:(Belt.Option.map listStyleImage ListStyleImage.make)
      ?listStylePosition:
        (Belt.Option.map listStylePosition ListStylePosition.make)
      ?listStyleType:(Belt.Option.map listStyleType ListStyleType.make)
      ?listStyle
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let replaced_inline ?height ?minHeight ?maxHeight ?margin ?marginTop
    ?marginRight ?marginBottom ?marginLeft ?padding ?paddingTop ?paddingRight
    ?paddingBottom ?paddingLeft ?verticalAlign ?width ?minWidth ?maxWidth
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.replaced_inline
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let non_replaced_inline ?margin ?marginTop ?marginRight ?marginBottom
    ?marginLeft ?padding ?paddingTop ?paddingRight ?paddingBottom
    ?paddingLeft ?verticalAlign 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.non_replaced_inline
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let inline ?height ?minHeight ?maxHeight ?margin ?marginTop ?marginRight
    ?marginBottom ?marginLeft ?padding ?paddingTop ?paddingRight
    ?paddingBottom ?paddingLeft ?verticalAlign ?width ?minWidth ?maxWidth
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.inline
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let inline_flex ?alignContent ?alignItems ?flex ?flexDirection
    ?flexFlow ?flexWrap ?height
    ?minHeight ?maxHeight ?justifyContent ?margin ?marginTop ?marginRight
    ?marginBottom ?marginLeft ?order ?padding ?paddingTop ?paddingRight
    ?paddingBottom ?paddingLeft ?width ?minWidth ?maxWidth ?verticalAlign 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.inline_flex
      ?alignContent:(Belt.Option.map alignContent AlignContent.make)
      ?alignItems:(Belt.Option.map alignItems AlignItems.make)
      ?flex
      ?flexDirection:(Belt.Option.map flexDirection FlexDirection.make)
      ?flexFlow:(Belt.Option.map flexFlow FlexFlow.make)
      ?flexWrap:(Belt.Option.map flexWrap FlexWrap.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?justifyContent:(Belt.Option.map justifyContent JustifyContent.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?order:(Belt.Option.map order Order.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let inline_block ?clear ?height ?minHeight ?maxHeight ?margin ?marginTop
    ?marginRight ?marginBottom ?marginLeft ?overflow ?padding ?paddingTop
    ?paddingRight ?paddingBottom ?paddingLeft ?pageBreakBefore
    ?pageBreakAfter ?pageBreakInside ?orphans ?widows ?textAlign ?textIndent
    ?width ?minWidth ?maxWidth ?verticalAlign
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.inline_block
      ?clear:(Belt.Option.map clear Clear.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?overflow:(Belt.Option.map overflow Overflow.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?pageBreakBefore:(Belt.Option.map pageBreakBefore PageBreakBefore.make)
      ?pageBreakAfter:(Belt.Option.map pageBreakAfter PageBreakAfter.make)
      ?pageBreakInside:(Belt.Option.map pageBreakInside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ?textAlign:(Belt.Option.map textAlign TextAlign.make)
      ?textIndent:(Belt.Option.map textIndent TextIndent.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_header_group ?height ?minHeight ?maxHeight ?speakHeader ?width
    ?minWidth ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_header_group
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?speakHeader:(Belt.Option.map speakHeader SpeakHeader.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_footer_group ?height ?minHeight ?maxHeight ?width ?minWidth
    ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_footer_group
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_caption ?captionSide ?height ?minHeight ?maxHeight ?margin
    ?marginTop ?marginRight ?marginBottom ?marginLeft ?padding ?paddingTop
    ?paddingRight ?paddingBottom ?paddingLeft ?width ?minWidth ?maxWidth
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_caption
      ?captionSide:(Belt.Option.map captionSide CaptionSide.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table ?borderCollapse ?borderSpacing ?height ?minHeight ?maxHeight
    ?margin ?marginTop ?marginRight ?marginBottom ?marginLeft ?padding
    ?paddingTop ?paddingRight ?paddingBottom ?paddingLeft ?speakHeader
    ?tableLayout ?width ?minWidth ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table
      ?borderCollapse:(Belt.Option.map borderCollapse BorderCollapse.make)
      ?borderSpacing:(Belt.Option.map borderSpacing BorderSpacing.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?speakHeader:(Belt.Option.map speakHeader SpeakHeader.make)
      ?tableLayout:(Belt.Option.map tableLayout TableLayout.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let inline_table ?borderCollapse ?borderSpacing ?height ?minHeight
    ?maxHeight ?margin ?marginTop ?marginRight ?marginBottom ?marginLeft
    ?padding ?paddingTop ?paddingRight ?paddingBottom ?paddingLeft
    ?tableLayout ?width ?minWidth ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.inline_table
      ?borderCollapse:(Belt.Option.map borderCollapse BorderCollapse.make)
      ?borderSpacing:(Belt.Option.map borderSpacing BorderSpacing.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?margin
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?tableLayout:(Belt.Option.map tableLayout TableLayout.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_cell ?emptyCells ?height ?minHeight ?maxHeight ?padding
    ?paddingTop ?paddingRight ?paddingBottom ?paddingLeft ?speakHeader
    ?verticalAlign ?width ?minWidth ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_cell
      ?emptyCells:(Belt.Option.map emptyCells EmptyCells.make)
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?padding
      ?paddingTop:(Belt.Option.map paddingTop PaddingTop.make)
      ?paddingRight:(Belt.Option.map paddingRight PaddingRight.make)
      ?paddingBottom:(Belt.Option.map paddingBottom PaddingBottom.make)
      ?paddingLeft:(Belt.Option.map paddingLeft PaddingLeft.make)
      ?speakHeader:(Belt.Option.map speakHeader SpeakHeader.make)
      ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_column ?width ?minWidth ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_column 
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_column_group ?width ?minWidth ?maxWidth 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_column_group 
      ?width:(Belt.Option.map width Width.make)
      ?minWidth:(Belt.Option.map minWidth MinWidth.make)
      ?maxWidth:(Belt.Option.map maxWidth MaxWidth.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_row ?height ?minHeight ?maxHeight 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_row
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()


  let table_row_group ?height ?minHeight ?maxHeight 
    ?azimuth ?backgroundAttachment ?backgroundColor ?backgroundImage
    ?backgroundPosition ?backgroundRepeat ?background ?borderTopColor
    ?borderRightColor ?borderBottomColor ?borderLeftColor ?borderColor
    ?borderTopStyle ?borderRightStyle ?borderBottomStyle ?borderLeftStyle
    ?borderStyle ?borderTopWidth ?borderRightWidth ?borderBottomWidth
    ?borderLeftWidth ?borderWidth ?borderTop ?borderRight ?borderBottom
    ?borderLeft ?border ?color ?cueAfter ?cueBefore ?cue ?cursor ?direction
    ?elevation ?float ?fontFamily ?fontSize ?fontStyle ?fontVariant
    ?fontWeight ?font ?letterSpacing ?lineHeight ?outlineColor ?outlineStyle
    ?outlineWidth ?outline ?pauseAfter ?pauseBefore ?pause ?pitchRange
    ?pitch ?playDuring ?richness ?speakNumeral ?speakPunctuation ?speak
    ?speechRate ?stress ?textDecoration ?textTransform ?unicodeBidi
    ?visibility ?voiceFamily ?volume ?whiteSpace ?wordSpacing () =
    Internal.AppliesTo.table_row_group
      ?height:(Belt.Option.map height Height.make)
      ?minHeight:(Belt.Option.map minHeight MinHeight.make)
      ?maxHeight:(Belt.Option.map maxHeight MaxHeight.make)
      ?azimuth:(Belt.Option.map azimuth Azimuth.make)
      ?backgroundAttachment:
        (Belt.Option.map backgroundAttachment BackgroundAttachment.make)
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?backgroundImage:(Belt.Option.map backgroundImage BackgroundImage.make)
      ?backgroundPosition:
        (Belt.Option.map backgroundPosition BackgroundPosition.make)
      ?backgroundRepeat:
        (Belt.Option.map backgroundRepeat BackgroundRepeat.make)
      ?background
      ?borderTopColor:(Belt.Option.map borderTopColor BorderTopColor.make)
      ?borderRightColor:
        (Belt.Option.map borderRightColor BorderRightColor.make)
      ?borderBottomColor:
        (Belt.Option.map borderBottomColor BorderBottomColor.make)
      ?borderLeftColor:(Belt.Option.map borderLeftColor BorderLeftColor.make)
      ?borderColor:(Belt.Option.map borderColor BorderColor.make)
      ?borderTopStyle:(Belt.Option.map borderTopStyle BorderTopStyle.make)
      ?borderRightStyle:
        (Belt.Option.map borderRightStyle BorderRightStyle.make)
      ?borderBottomStyle:
        (Belt.Option.map borderBottomStyle BorderBottomStyle.make)
      ?borderLeftStyle:(Belt.Option.map borderLeftStyle BorderLeftStyle.make)
      ?borderStyle:(Belt.Option.map borderStyle BorderStyle.make)
      ?borderTopWidth:(Belt.Option.map borderTopWidth BorderTopWidth.make)
      ?borderRightWidth:
        (Belt.Option.map borderRightWidth BorderRightWidth.make)
      ?borderBottomWidth:
        (Belt.Option.map borderBottomWidth BorderBottomWidth.make)
      ?borderLeftWidth:(Belt.Option.map borderLeftWidth BorderLeftWidth.make)
      ?borderWidth:(Belt.Option.map borderWidth BorderWidth.make)
      ?borderTop
      ?borderRight
      ?borderBottom
      ?borderLeft
      ?border
      ?color:(Belt.Option.map color Color.make)
      ?cueAfter:(Belt.Option.map cueAfter CueAfter.make)
      ?cueBefore:(Belt.Option.map cueBefore CueBefore.make)
      ?cue:(Belt.Option.map cue Cue.make)
      ?cursor:(Belt.Option.map cursor Cursor.make)
      ?direction:(Belt.Option.map direction Direction.make)
      ?elevation:(Belt.Option.map elevation Elevation.make)
      ?float:(Belt.Option.map float Float.make)
      ?fontFamily:(Belt.Option.map fontFamily FontFamily.make)
      ?fontSize:(Belt.Option.map fontSize FontSize.make)
      ?fontStyle:(Belt.Option.map fontStyle FontStyle.make)
      ?fontVariant:(Belt.Option.map fontVariant FontVariant.make)
      ?fontWeight:(Belt.Option.map fontWeight FontWeight.make)
      ?font
      ?letterSpacing:(Belt.Option.map letterSpacing LetterSpacing.make)
      ?lineHeight:(Belt.Option.map lineHeight LineHeight.make)
      ?outlineColor:(Belt.Option.map outlineColor OutlineColor.make)
      ?outlineStyle:(Belt.Option.map outlineStyle OutlineStyle.make)
      ?outlineWidth:(Belt.Option.map outlineWidth OutlineWidth.make)
      ?outline
      ?pauseAfter:(Belt.Option.map pauseAfter PauseAfter.make)
      ?pauseBefore:(Belt.Option.map pauseBefore PauseBefore.make)
      ?pause:(Belt.Option.map pause Pause.make)
      ?pitchRange:(Belt.Option.map pitchRange PitchRange.make)
      ?pitch:(Belt.Option.map pitch Pitch.make)
      ?playDuring:(Belt.Option.map playDuring PlayDuring.make)
      ?richness:(Belt.Option.map richness Richness.make)
      ?speakNumeral:(Belt.Option.map speakNumeral SpeakNumeral.make)
      ?speakPunctuation:
        (Belt.Option.map speakPunctuation SpeakPunctuation.make)
      ?speak:(Belt.Option.map speak Speak.make)
      ?speechRate:(Belt.Option.map speechRate SpeechRate.make)
      ?stress:(Belt.Option.map stress Stress.make)
      ?textDecoration:(Belt.Option.map textDecoration TextDecoration.make)
      ?textTransform:(Belt.Option.map textTransform TextTransform.make)
      ?unicodeBidi:(Belt.Option.map unicodeBidi UnicodeBidi.make)
      ?visibility:(Belt.Option.map visibility Visibility.make)
      ?voiceFamily:(Belt.Option.map voiceFamily VoiceFamily.make)
      ?volume:(Belt.Option.map volume Volume.make)
      ?whiteSpace:(Belt.Option.map whiteSpace WhiteSpace.make)
      ?wordSpacing:(Belt.Option.map wordSpacing WordSpacing.make) 
      ()
end

include AppliesTo


let show ?(indent=0) selector properties =
  let indent' = Js.String.repeat indent "  "
  in
  indent' ^ Css_Selector.show selector ^" {\n"^
    Css_Property.show_properties ~indent:(indent + 1) properties ^"\n"^
  indent' ^"}"
