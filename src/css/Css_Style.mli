type 'a t = 'a Css_Property.t Js.Dict.t
val to_display :
  [< Css_Property.display ] t ->
  Css_Property.display t
val merge :
  ([< Css_Property.display ] as 'a) t ->
  ([< Css_Property.display ] as 'a) t ->
  ([< Css_Property.display ] as 'a) t

val animation :
  ?duration:Css_Value.Time.t ->
  ?timing:Css_Value.TimingFunction.t ->
  ?delay:Css_Value.Time.t ->
  ?iterate:Css_Properties.AnimationIterationCount.Value.t ->
  ?direction:Css_Properties.AnimationDirection.Value.t ->
  ?fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?play_state:Css_Properties.AnimationPlayState.Value.t ->
  unit ->
  [> Css_Property.animation ] Css_Property.t
val background :
  ?color:Css_Value.Background.Color.t ->
  ?image:Css_Value.Background.Image.t ->
  ?repeat:Css_Value.Background.Repeat.t ->
  ?attachment:Css_Value.Background.Attachment.t ->
  ?position:Css_Value.Background.Position.t ->
  unit -> [> Css_Property.background ] Css_Property.t
val border_top :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_top ] Css_Property.t
val border_right :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_right ] Css_Property.t
val border_bottom :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_bottom ] Css_Property.t
val border_left :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_left ] Css_Property.t
val border :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border ] Css_Property.t
val font :
  ?style:Css_Value.Font.Style.t ->
  ?variant:Css_Value.Font.Variant.t ->
  ?weight:Css_Value.Font.Weight.t ->
  ?line_height:Css_Value.LineHeight.t ->
  Css_Value.Font.Size.t ->
  Css_Value.Font.Family.t ->
  [> Css_Property.font] Css_Property.t
val flex' :
  ?grow:float ->
  ?shrink:float ->
  ?basis:Css_Value.LengthPercent.t ->
  unit -> [> Css_Property.flex' ] Css_Property.t
val list_style :
  ?type_:Css_Value.ListStyle.Type.t ->
  ?position:Css_Value.ListStyle.Position.t ->
  ?image:Css_Value.ListStyle.Image.t ->
  unit -> [> Css_Property.list_style ] Css_Property.t
val margin :
  [ Css_Value.Global.t | Css_Value.LengthPercent.t ] ->
  [> Css_Property.margin ] Css_Property.t
val margin' :
  ?top:Css_Value.LengthPercent.t ->
  ?right:Css_Value.LengthPercent.t ->
  ?bottom:Css_Value.LengthPercent.t ->
  ?left:Css_Value.LengthPercent.t ->
  unit ->
  [> Css_Property.margin ] Css_Property.t
val outline :
  ?color:Css_Value.Outline.Color.t ->
  ?style:Css_Value.Outline.Style.t ->
  ?width:Css_Value.Outline.Width.t ->
  unit -> [> Css_Property.outline ] Css_Property.t
val padding :
  [ Css_Value.Global.t | Css_Value.LengthPercent.t ] ->
  [> Css_Property.padding ] Css_Property.t
val padding' :
  ?top:Css_Value.LengthPercent.t ->
  ?right:Css_Value.LengthPercent.t ->
  ?bottom:Css_Value.LengthPercent.t ->
  ?left:Css_Value.LengthPercent.t ->
  unit ->
  [> Css_Property.padding ] Css_Property.t
val size :
  Css_Properties.Size.Value.t ->
  [> Css_Property.size ] Css_Property.t
val transition :
  ?property:Css_Properties.TransitionProperty.Value.t ->
  ?duration:Css_Value.Time.t ->
  ?timing:Css_Value.TimingFunction.t ->
  ?delay:Css_Value.Time.t ->
  unit ->
  [> Css_Property.transition ] Css_Property.t

module Group :
  sig
    val aligns :
      ?align_content:Css_Properties.AlignContent.Value.t ->
      ?align_items:Css_Properties.AlignItems.Value.t ->
      ?align_self:Css_Properties.AlignSelf.Value.t ->
      unit -> Css_Property.aligns t
    val backgrounds :
      ?background_attachment:Css_Value.Background.Attachment.t ->
      ?background_color:Css_Value.Background.Color.t ->
      ?background_image:Css_Value.Background.Image.t ->
      ?background_position:Css_Value.Background.Position.t ->
      ?background_repeat:Css_Value.Background.Repeat.t ->
      ?background_size:Css_Properties.BackgroundSize.Value.t ->
      ?background:Css_Property.background Css_Property.t ->
      unit -> Css_Property.backgrounds t
    val borders :
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      unit -> Css_Property.borders t
    val border_colors :
      ?border_top_color:Css_Value.Border.Color.t ->
      ?border_right_color:Css_Value.Border.Color.t ->
      ?border_bottom_color:Css_Value.Border.Color.t ->
      ?border_left_color:Css_Value.Border.Color.t ->
      ?border_color:Css_Value.Border.Color.t ->
      unit -> Css_Property.border_colors t
    val border_styles :
      ?border_top_style:Css_Value.Border.Style.t ->
      ?border_right_style:Css_Value.Border.Style.t ->
      ?border_bottom_style:Css_Value.Border.Style.t ->
      ?border_left_style:Css_Value.Border.Style.t ->
      ?border_style:Css_Value.Border.Style.t ->
      unit -> Css_Property.border_styles t
    val border_widths :
      ?border_top_width:Css_Value.Border.Width.t ->
      ?border_right_width:Css_Value.Border.Width.t ->
      ?border_bottom_width:Css_Value.Border.Width.t ->
      ?border_left_width:Css_Value.Border.Width.t ->
      ?border_width:Css_Value.Border.Width.t ->
      unit -> Css_Property.border_widths t
    val heights :
      ?height:Css_Value.LengthPercent.t ->
      ?min_height:Css_Value.LengthPercent.t ->
      ?max_height:Css_Value.LengthPercent.t -> unit -> Css_Property.heights t
    val cues :
      ?cue_after:Css_Value.UriOrNone.t ->
      ?cue_before:Css_Value.UriOrNone.t ->
      ?cue:Css_Properties.Cue.Value.t -> unit -> Css_Property.cues t
    val flexs :
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_basis:Css_Value.LengthPercent.t ->
      ?flex_direction:Css_Value.Flex.Direction.t ->
      ?flex_flow:Css_Properties.FlexFlow.Value.t ->
      ?flex_grow:float ->
      ?flex_shrink:float ->
      ?flex_wrap:Css_Value.Flex.Wrap.t -> unit -> Css_Property.flexs t
    val fonts :
      ?font_family:Css_Value.Font.Family.t ->
      ?font_size:Css_Value.Font.Size.t ->
      ?font_style:Css_Value.Font.Style.t ->
      ?font_variant:Css_Value.Font.Variant.t ->
      ?font_weight:Css_Value.Font.Weight.t ->
      ?font:Css_Property.font Css_Property.t -> unit -> Css_Property.fonts t
    val margins :
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Value.LengthPercent.t ->
      ?margin_right:Css_Value.LengthPercent.t ->
      ?margin_bottom:Css_Value.LengthPercent.t ->
      ?margin_left:Css_Value.LengthPercent.t -> unit -> Css_Property.margins t
    val paddings :
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Value.LengthPercent.t ->
      ?padding_right:Css_Value.LengthPercent.t ->
      ?padding_bottom:Css_Value.LengthPercent.t ->
      ?padding_left:Css_Value.LengthPercent.t ->
      unit -> Css_Property.paddings t
    val list_styles :
      ?list_style_image:Css_Value.ListStyle.Image.t ->
      ?list_style_position:Css_Value.ListStyle.Position.t ->
      ?list_style_type:Css_Value.ListStyle.Type.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      unit -> Css_Property.list_styles t
    val outlines :
      ?outline_color:Css_Value.Outline.Color.t ->
      ?outline_style:Css_Value.Outline.Style.t ->
      ?outline_width:Css_Value.Outline.Width.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      unit -> Css_Property.outlines t
    val page_breaks :
      ?page_break_before:Css_Value.PageBreak.t ->
      ?page_break_after:Css_Value.PageBreak.t ->
      ?page_break_inside:Css_Value.PageBreak.inside ->
      unit -> Css_Property.page_breaks t
    val page_breaks_inside :
      ?orphans:Css_Value.BreakInside.t ->
      ?widows:Css_Value.BreakInside.t ->
      unit -> Css_Property.page_break_inside t
    val pauses :
      ?pause_after:Css_Value.TimePercent.t ->
      ?pause_before:Css_Value.TimePercent.t ->
      ?pause:Css_Properties.Pause.Value.t -> unit -> Css_Property.pauses t
    val positions :
      ?top:Css_Value.LengthPercent.t ->
      ?right:Css_Value.LengthPercent.t ->
      ?bottom:Css_Value.LengthPercent.t ->
      ?left:Css_Value.LengthPercent.t -> unit -> Css_Property.positions t
    val speaks :
      ?speak_header:Css_Properties.SpeakHeader.Value.t ->
      ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
      ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
      ?speak:Css_Properties.Speak.Value.t -> unit -> Css_Property.speaks t
    val texts :
      ?text_decoration:Css_Properties.TextDecoration.Value.t ->
      ?text_transform:Css_Properties.TextTransform.Value.t ->
      ?text_align:Css_Properties.TextAlign.Value.t ->
      ?text_indent:Css_Value.LengthPercent.t -> unit -> Css_Property.texts t
    val widths :
      ?width:Css_Value.LengthPercent.t ->
      ?min_width:Css_Value.LengthPercent.t ->
      ?max_width:Css_Value.LengthPercent.t -> unit -> Css_Property.widths t
  end
module MediaGroup :
  sig
    val aural :
      ?azimuth:Css_Properties.Azimuth.Value.t ->
      ?cue_after:Css_Value.UriOrNone.t ->
      ?cue_before:Css_Value.UriOrNone.t ->
      ?cue:Css_Properties.Cue.Value.t ->
      ?elevation:Css_Properties.Elevation.Value.t ->
      ?pause_after:Css_Value.TimePercent.t ->
      ?pause_before:Css_Value.TimePercent.t ->
      ?pause:Css_Properties.Pause.Value.t ->
      ?pitch_range:Css_Properties.PitchRange.Value.t ->
      ?pitch:Css_Properties.Pitch.Value.t ->
      ?play_during:Css_Properties.PlayDuring.Value.t ->
      ?richness:Css_Properties.Richness.Value.t ->
      ?speak_header:Css_Properties.SpeakHeader.Value.t ->
      ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
      ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
      ?speak:Css_Properties.Speak.Value.t ->
      ?speech_rate:Css_Properties.SpeechRate.Value.t ->
      ?stress:Css_Properties.Stress.Value.t ->
      ?voice_family:Css_Properties.VoiceFamily.Value.t ->
      ?volume:Css_Properties.Volume.Value.t ->
      unit -> Css_Property.MediaGroup.aural t
    val interactive :
      ?cursor:Css_Properties.Cursor.Value.t ->
      ?outline_color:Css_Value.Outline.Color.t ->
      ?outline_style:Css_Value.Outline.Style.t ->
      ?outline_width:Css_Value.Outline.Width.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      unit -> Css_Property.MediaGroup.interactive t
    val visual :
      ?align_content:Css_Properties.AlignContent.Value.t ->
      ?align_items:Css_Properties.AlignItems.Value.t ->
      ?align_self:Css_Properties.AlignSelf.Value.t ->
      ?background_attachment:Css_Value.Background.Attachment.t ->
      ?background_color:Css_Value.Background.Color.t ->
      ?background_image:Css_Value.Background.Image.t ->
      ?background_position:Css_Value.Background.Position.t ->
      ?background_repeat:Css_Value.Background.Repeat.t ->
      ?background_size:Css_Properties.BackgroundSize.Value.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?border_collapse:Css_Properties.BorderCollapse.Value.t ->
      ?border_top_color:Css_Value.Border.Color.t ->
      ?border_right_color:Css_Value.Border.Color.t ->
      ?border_bottom_color:Css_Value.Border.Color.t ->
      ?border_left_color:Css_Value.Border.Color.t ->
      ?border_color:Css_Value.Border.Color.t ->
      ?border_spacing:Css_Properties.BorderSpacing.Value.t ->
      ?border_top_style:Css_Value.Border.Style.t ->
      ?border_right_style:Css_Value.Border.Style.t ->
      ?border_bottom_style:Css_Value.Border.Style.t ->
      ?border_left_style:Css_Value.Border.Style.t ->
      ?border_style:Css_Value.Border.Style.t ->
      ?border_top_width:Css_Value.Border.Width.t ->
      ?border_right_width:Css_Value.Border.Width.t ->
      ?border_bottom_width:Css_Value.Border.Width.t ->
      ?border_left_width:Css_Value.Border.Width.t ->
      ?border_width:Css_Value.Border.Width.t ->
      ?border_top:Css_Property.border_top Css_Property.t ->
      ?border_right:Css_Property.border_right Css_Property.t ->
      ?border_bottom:Css_Property.border_bottom Css_Property.t ->
      ?border_left:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?caption_side:Css_Properties.CaptionSide.Value.t ->
      ?clear:Css_Properties.Clear.Value.t ->
      ?clip:Css_Properties.Clip.Value.t ->
      ?color:Css_Properties.Color.Value.t ->
      ?cursor:Css_Properties.Cursor.Value.t ->
      ?direction:Css_Properties.Direction.Value.t ->
      ?empty_cells:Css_Properties.EmptyCells.Value.t ->
      ?flex:Css_Property.flex' Css_Property.t ->
      ?flex_basis:Css_Value.LengthPercent.t ->
      ?flex_direction:Css_Value.Flex.Direction.t ->
      ?flex_flow:Css_Properties.FlexFlow.Value.t ->
      ?flex_grow:float ->
      ?flex_shrink:float ->
      ?flex_wrap:Css_Value.Flex.Wrap.t ->
      ?float:Css_Properties.Float.Value.t ->
      ?font_family:Css_Value.Font.Family.t ->
      ?font_size:Css_Value.Font.Size.t ->
      ?font_style:Css_Value.Font.Style.t ->
      ?font_variant:Css_Value.Font.Variant.t ->
      ?font_weight:Css_Value.Font.Weight.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?height:Css_Value.LengthPercent.t ->
      ?min_height:Css_Value.LengthPercent.t ->
      ?max_height:Css_Value.LengthPercent.t ->
      ?justify_content:Css_Properties.JustifyContent.Value.t ->
      ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
      ?line_height:Css_Value.LineHeight.t ->
      ?list_style_image:Css_Value.ListStyle.Image.t ->
      ?list_style_position:Css_Value.ListStyle.Position.t ->
      ?list_style_type:Css_Value.ListStyle.Type.t ->
      ?list_style:Css_Property.list_style Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Value.LengthPercent.t ->
      ?margin_right:Css_Value.LengthPercent.t ->
      ?margin_bottom:Css_Value.LengthPercent.t ->
      ?margin_left:Css_Value.LengthPercent.t ->
      ?order:int ->
      ?outline_color:Css_Value.Outline.Color.t ->
      ?outline_style:Css_Value.Outline.Style.t ->
      ?outline_width:Css_Value.Outline.Width.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?overflow:Css_Properties.Overflow.Value.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?padding_top:Css_Value.LengthPercent.t ->
      ?padding_right:Css_Value.LengthPercent.t ->
      ?padding_bottom:Css_Value.LengthPercent.t ->
      ?padding_left:Css_Value.LengthPercent.t ->
      ?page_break_before:Css_Value.PageBreak.t ->
      ?page_break_after:Css_Value.PageBreak.t ->
      ?page_break_inside:Css_Value.PageBreak.inside ->
      ?orphans:Css_Value.BreakInside.t ->
      ?widows:Css_Value.BreakInside.t ->
      ?top:Css_Value.LengthPercent.t ->
      ?right:Css_Value.LengthPercent.t ->
      ?bottom:Css_Value.LengthPercent.t ->
      ?left:Css_Value.LengthPercent.t ->
      ?table_layout:Css_Properties.TableLayout.Value.t ->
      ?text_decoration:Css_Properties.TextDecoration.Value.t ->
      ?text_transform:Css_Properties.TextTransform.Value.t ->
      ?text_align:Css_Properties.TextAlign.Value.t ->
      ?text_indent:Css_Value.LengthPercent.t ->
      ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
      ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
      ?visibility:Css_Properties.Visibility.Value.t ->
      ?white_space:Css_Properties.WhiteSpace.Value.t ->
      ?width:Css_Value.LengthPercent.t ->
      ?min_width:Css_Value.LengthPercent.t ->
      ?max_width:Css_Value.LengthPercent.t ->
      ?word_spacing:Css_Properties.WordSpacing.Value.t ->
      ?z_index:int -> unit -> Css_Property.MediaGroup.visual t
    val paged :
      ?size:Css_Property.size Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?margin_top:Css_Value.LengthPercent.t ->
      ?margin_right:Css_Value.LengthPercent.t ->
      ?margin_bottom:Css_Value.LengthPercent.t ->
      ?margin_left:Css_Value.LengthPercent.t ->
      ?page_break_before:Css_Value.PageBreak.t ->
      ?page_break_after:Css_Value.PageBreak.t ->
      ?page_break_inside:Css_Value.PageBreak.inside ->
      ?orphans:Css_Value.BreakInside.t ->
      ?widows:Css_Value.BreakInside.t ->
      unit -> Css_Property.MediaGroup.paged t
  end
val any :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.any t
val block :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?clear:Css_Properties.Clear.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?page_break_before:Css_Value.PageBreak.t ->
  ?page_break_after:Css_Value.PageBreak.t ->
  ?page_break_inside:Css_Value.PageBreak.inside ->
  ?orphans:Css_Value.BreakInside.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?text_align:Css_Properties.TextAlign.Value.t ->
  ?text_indent:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.block t
val flex :
  ?align_content:Css_Properties.AlignContent.Value.t ->
  ?align_items:Css_Properties.AlignItems.Value.t ->
  ?flex_direction:Css_Value.Flex.Direction.t ->
  ?flex_flow:Css_Properties.FlexFlow.Value.t ->
  ?flex_wrap:Css_Value.Flex.Wrap.t ->
  ?justify_content:Css_Properties.JustifyContent.Value.t ->
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?page_break_before:Css_Value.PageBreak.t ->
  ?page_break_after:Css_Value.PageBreak.t ->
  ?page_break_inside:Css_Value.PageBreak.inside ->
  ?orphans:Css_Value.BreakInside.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?text_align:Css_Properties.TextAlign.Value.t ->
  ?text_indent:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.flex t
val flex_item :
  ?align_self:Css_Properties.AlignSelf.Value.t ->
  ?flex:Css_Property.flex' Css_Property.t ->
  ?flex_basis:Css_Value.LengthPercent.t ->
  ?flex_grow:float ->
  ?flex_shrink:float ->
  ?order:int ->
  unit -> Css_Property.flex_item t
val positioned :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?clip:Css_Properties.Clip.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?top:Css_Value.LengthPercent.t ->
  ?right:Css_Value.LengthPercent.t ->
  ?bottom:Css_Value.LengthPercent.t ->
  ?left:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?z_index:int ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.positioned t
val list_item :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?list_style_image:Css_Value.ListStyle.Image.t ->
  ?list_style_position:Css_Value.ListStyle.Position.t ->
  ?list_style_type:Css_Value.ListStyle.Type.t ->
  ?list_style:Css_Property.list_style Css_Property.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.list_item t
val replaced_inline :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.replaced_inline t
val non_replaced_inline :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.non_replaced_inline t
val inline :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline t
val inline_flex :
  ?align_content:Css_Properties.AlignContent.Value.t ->
  ?align_items:Css_Properties.AlignItems.Value.t ->
  ?flex_direction:Css_Value.Flex.Direction.t ->
  ?flex_flow:Css_Properties.FlexFlow.Value.t ->
  ?flex_wrap:Css_Value.Flex.Wrap.t ->
  ?justify_content:Css_Properties.JustifyContent.Value.t ->
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?page_break_before:Css_Value.PageBreak.t ->
  ?page_break_after:Css_Value.PageBreak.t ->
  ?page_break_inside:Css_Value.PageBreak.inside ->
  ?orphans:Css_Value.BreakInside.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?text_align:Css_Properties.TextAlign.Value.t ->
  ?text_indent:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline_flex t
val inline_block :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?clear:Css_Properties.Clear.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?page_break_before:Css_Value.PageBreak.t ->
  ?page_break_after:Css_Value.PageBreak.t ->
  ?page_break_inside:Css_Value.PageBreak.inside ->
  ?orphans:Css_Value.BreakInside.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?text_align:Css_Properties.TextAlign.Value.t ->
  ?text_indent:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?display:unit ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline_block t
val table_header_group :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?speak_header:Css_Properties.SpeakHeader.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_header_group t
val table_footer_group :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_footer_group t
val table_caption :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?caption_side:Css_Properties.CaptionSide.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_caption t
val table :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?border_collapse:Css_Properties.BorderCollapse.Value.t ->
  ?border_spacing:Css_Properties.BorderSpacing.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?speak_header:Css_Properties.SpeakHeader.Value.t ->
  ?table_layout:Css_Properties.TableLayout.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table t
val inline_table :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?border_collapse:Css_Properties.BorderCollapse.Value.t ->
  ?border_spacing:Css_Properties.BorderSpacing.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?table_layout:Css_Properties.TableLayout.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline_table t
val table_cell :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?empty_cells:Css_Properties.EmptyCells.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?speak_header:Css_Properties.SpeakHeader.Value.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_cell t
val table_column :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_column t
val table_column_group :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_column_group t
val table_row :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_row t
val table_row_group :
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?opacity:float ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_row_group t
val display :
  ?align_content:Css_Properties.AlignContent.Value.t ->
  ?align_items:Css_Properties.AlignItems.Value.t ->
  ?align_self:Css_Properties.AlignSelf.Value.t ->
  ?animation:Css_Property.animation Css_Property.t ->
  ?animation_delay:Css_Properties.AnimationDelay.Value.t ->
  ?animation_direction:Css_Properties.AnimationDirection.Value.t ->
  ?animation_duration:Css_Properties.AnimationDuration.Value.t ->
  ?animation_fill_mode:Css_Properties.AnimationFillMode.Value.t ->
  ?animation_iteration_count:Css_Properties.AnimationIterationCount.Value.t ->
  ?animation_name:Css_Properties.AnimationName.Value.t ->
  ?animation_play_state:Css_Properties.AnimationPlayState.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_collapse:Css_Properties.BorderCollapse.Value.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_spacing:Css_Properties.BorderSpacing.Value.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?bottom:Css_Value.LengthPercent.t ->
  ?caption_side:Css_Properties.CaptionSide.Value.t ->
  ?clear:Css_Properties.Clear.Value.t ->
  ?clip:Css_Properties.Clip.Value.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?empty_cells:Css_Properties.EmptyCells.Value.t ->
  ?flex_basis:Css_Value.LengthPercent.t ->
  ?flex:Css_Property.flex' Css_Property.t ->
  ?flex_direction:Css_Value.Flex.Direction.t ->
  ?flex_flow:Css_Properties.FlexFlow.Value.t ->
  ?flex_grow:float ->
  ?flex_shrink:float ->
  ?flex_wrap:Css_Value.Flex.Wrap.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?justify_content:Css_Properties.JustifyContent.Value.t ->
  ?left:Css_Value.LengthPercent.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?list_style:Css_Property.list_style Css_Property.t ->
  ?list_style_image:Css_Value.ListStyle.Image.t ->
  ?list_style_position:Css_Value.ListStyle.Position.t ->
  ?list_style_type:Css_Value.ListStyle.Type.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?opacity:float ->
  ?order:int ->
  ?orphans:Css_Value.BreakInside.t ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?page_break_after:Css_Value.PageBreak.t ->
  ?page_break_before:Css_Value.PageBreak.t ->
  ?page_break_inside:Css_Value.PageBreak.inside ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?right:Css_Value.LengthPercent.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speak_header:Css_Properties.SpeakHeader.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?table_layout:Css_Properties.TableLayout.Value.t ->
  ?text_align:Css_Properties.TextAlign.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_indent:Css_Value.LengthPercent.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?top:Css_Value.LengthPercent.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  ?z_index:int ->
  unit -> Css_Property.display t
val keyframe_block :
  ?align_content:Css_Properties.AlignContent.Value.t ->
  ?align_items:Css_Properties.AlignItems.Value.t ->
  ?align_self:Css_Properties.AlignSelf.Value.t ->
  ?animation_timing_function:Css_Value.TimingFunction.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?background_attachment:Css_Value.Background.Attachment.t ->
  ?background_color:Css_Value.Background.Color.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?background_image:Css_Value.Background.Image.t ->
  ?background_position:Css_Value.Background.Position.t ->
  ?background_repeat:Css_Value.Background.Repeat.t ->
  ?background_size:Css_Properties.BackgroundSize.Value.t ->
  ?border_bottom_color:Css_Value.Border.Color.t ->
  ?border_bottom:Css_Property.border_bottom Css_Property.t ->
  ?border_bottom_style:Css_Value.Border.Style.t ->
  ?border_bottom_width:Css_Value.Border.Width.t ->
  ?border_collapse:Css_Properties.BorderCollapse.Value.t ->
  ?border_color:Css_Value.Border.Color.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?border_left_color:Css_Value.Border.Color.t ->
  ?border_left:Css_Property.border_left Css_Property.t ->
  ?border_left_style:Css_Value.Border.Style.t ->
  ?border_left_width:Css_Value.Border.Width.t ->
  ?border_right_color:Css_Value.Border.Color.t ->
  ?border_right:Css_Property.border_right Css_Property.t ->
  ?border_right_style:Css_Value.Border.Style.t ->
  ?border_right_width:Css_Value.Border.Width.t ->
  ?border_spacing:Css_Properties.BorderSpacing.Value.t ->
  ?border_style:Css_Value.Border.Style.t ->
  ?border_top_color:Css_Value.Border.Color.t ->
  ?border_top:Css_Property.border_top Css_Property.t ->
  ?border_top_style:Css_Value.Border.Style.t ->
  ?border_top_width:Css_Value.Border.Width.t ->
  ?border_width:Css_Value.Border.Width.t ->
  ?bottom:Css_Value.LengthPercent.t ->
  ?caption_side:Css_Properties.CaptionSide.Value.t ->
  ?clear:Css_Properties.Clear.Value.t ->
  ?clip:Css_Properties.Clip.Value.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cue_after:Css_Value.UriOrNone.t ->
  ?cue_before:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?empty_cells:Css_Properties.EmptyCells.Value.t ->
  ?flex_basis:Css_Value.LengthPercent.t ->
  ?flex:Css_Property.flex' Css_Property.t ->
  ?flex_direction:Css_Value.Flex.Direction.t ->
  ?flex_flow:Css_Properties.FlexFlow.Value.t ->
  ?flex_grow:float ->
  ?flex_shrink:float ->
  ?flex_wrap:Css_Value.Flex.Wrap.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?font_family:Css_Value.Font.Family.t ->
  ?font_size:Css_Value.Font.Size.t ->
  ?font_style:Css_Value.Font.Style.t ->
  ?font_variant:Css_Value.Font.Variant.t ->
  ?font_weight:Css_Value.Font.Weight.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?justify_content:Css_Properties.JustifyContent.Value.t ->
  ?left:Css_Value.LengthPercent.t ->
  ?letter_spacing:Css_Properties.LetterSpacing.Value.t ->
  ?line_height:Css_Value.LineHeight.t ->
  ?list_style:Css_Property.list_style Css_Property.t ->
  ?list_style_image:Css_Value.ListStyle.Image.t ->
  ?list_style_position:Css_Value.ListStyle.Position.t ->
  ?list_style_type:Css_Value.ListStyle.Type.t ->
  ?margin_bottom:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?margin_left:Css_Value.LengthPercent.t ->
  ?margin_right:Css_Value.LengthPercent.t ->
  ?margin_top:Css_Value.LengthPercent.t ->
  ?max_height:Css_Value.LengthPercent.t ->
  ?max_width:Css_Value.LengthPercent.t ->
  ?min_height:Css_Value.LengthPercent.t ->
  ?min_width:Css_Value.LengthPercent.t ->
  ?opacity:float ->
  ?order:int ->
  ?orphans:Css_Value.BreakInside.t ->
  ?outline_color:Css_Value.Outline.Color.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?outline_style:Css_Value.Outline.Style.t ->
  ?outline_width:Css_Value.Outline.Width.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding_bottom:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?padding_left:Css_Value.LengthPercent.t ->
  ?padding_right:Css_Value.LengthPercent.t ->
  ?padding_top:Css_Value.LengthPercent.t ->
  ?page_break_after:Css_Value.PageBreak.t ->
  ?page_break_before:Css_Value.PageBreak.t ->
  ?page_break_inside:Css_Value.PageBreak.inside ->
  ?pause_after:Css_Value.TimePercent.t ->
  ?pause_before:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?pitch_range:Css_Properties.PitchRange.Value.t ->
  ?play_during:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?right:Css_Value.LengthPercent.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speak_header:Css_Properties.SpeakHeader.Value.t ->
  ?speak_numeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speak_punctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speech_rate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?table_layout:Css_Properties.TableLayout.Value.t ->
  ?text_align:Css_Properties.TextAlign.Value.t ->
  ?text_decoration:Css_Properties.TextDecoration.Value.t ->
  ?text_indent:Css_Value.LengthPercent.t ->
  ?text_transform:Css_Properties.TextTransform.Value.t ->
  ?top:Css_Value.LengthPercent.t ->
  ?transition:Css_Property.transition Css_Property.t ->
  ?transition_delay:Css_Value.Time.t ->
  ?transition_duration:Css_Value.Time.t ->
  ?transition_property:Css_Properties.TransitionProperty.Value.t ->
  ?transition_timing_function:Css_Value.TimingFunction.t ->
  ?unicode_bidi:Css_Properties.UnicodeBidi.Value.t ->
  ?vertical_align:Css_Properties.VerticalAlign.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voice_family:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?white_space:Css_Properties.WhiteSpace.Value.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?word_spacing:Css_Properties.WordSpacing.Value.t ->
  ?z_index:int ->
  unit -> Css_Property.keyframe_block t

val show :
  ?indent:int ->
  Css_Selector.Selector.t ->
  [< Css_Property.display ] t -> string
