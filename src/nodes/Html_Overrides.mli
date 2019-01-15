(**
 HTML Node Overrides

 This module provides from {!module:Html_Nodes} that take display override 
 styles
 *)


module Div :
  sig
    val flex :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:unit ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:string ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:string ->
      ?aria_hidden:unit ->
      ?aria_invalid:unit ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:string ->
      ?aria_owns:string ->
      ?aria_relevant:string ->
      ?aria_roledescription:string ->
      ?accessKey:string ->
      ?className:string ->
      ?classSet:bool Js.Dict.t ->
      ?contentEditable:bool ->
      ?dataSet:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.Dir.t ->
      ?draggable:bool ->
      ?hidden:unit ->
      ?id:string ->
      ?lang:string ->
      ?spellCheck:string ->
      ?tabIndex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.Translate.t ->
      ?onAbort:(Dom.uiEvent -> unit) ->
      ?onAuxClick:(Dom.mouseEvent -> unit) ->
      ?onBlur:(Dom.focusEvent -> unit) ->
      ?onCancel:(Dom.event -> unit) ->
      ?onCanPlay:(Dom.event -> unit) ->
      ?onCanPlayThrough:(Dom.event -> unit) ->
      ?onChange:(Dom.event -> unit) ->
      ?onClick:(Dom.mouseEvent -> unit) ->
      ?onClose:(Dom.event -> unit) ->
      ?onCueChange:(Dom.event -> unit) ->
      ?onDblClick:(Dom.mouseEvent -> unit) ->
      ?onDrag:(Dom.dragEvent -> unit) ->
      ?onDragEnd:(Dom.dragEvent -> unit) ->
      ?onDragEnter:(Dom.dragEvent -> unit) ->
      ?onDragExit:(Dom.dragEvent -> unit) ->
      ?onDragLeave:(Dom.dragEvent -> unit) ->
      ?onDragOver:(Dom.dragEvent -> unit) ->
      ?onDragStart:(Dom.dragEvent -> unit) ->
      ?onDrop:(Dom.dragEvent -> unit) ->
      ?onDurationChange:(Dom.event -> unit) ->
      ?onEmptied:(Dom.event -> unit) ->
      ?onEnded:(Dom.event -> unit) ->
      ?onError:(Dom.uiEvent -> unit) ->
      ?onFocus:(Dom.focusEvent -> unit) ->
      ?onInput:(Dom.inputEvent -> unit) ->
      ?onInvalid:(Dom.event -> unit) ->
      ?onKeyDown:(Dom.keyboardEvent -> unit) ->
      ?onKeyPress:(Dom.keyboardEvent -> unit) ->
      ?onKeyUp:(Dom.keyboardEvent -> unit) ->
      ?onLoad:(Dom.uiEvent -> unit) ->
      ?onLoadedData:(Dom.event -> unit) ->
      ?onLoadedMetaData:(Dom.event -> unit) ->
      ?onLoadEnd:(Dom.progressEvent -> unit) ->
      ?onLoadStart:(Dom.progressEvent -> unit) ->
      ?onMouseDown:(Dom.mouseEvent -> unit) ->
      ?onMouseEnter:(Dom.mouseEvent -> unit) ->
      ?onMouseLeave:(Dom.mouseEvent -> unit) ->
      ?onMouseMove:(Dom.mouseEvent -> unit) ->
      ?onMouseOut:(Dom.mouseEvent -> unit) ->
      ?onMouseOver:(Dom.mouseEvent -> unit) ->
      ?onMouseUp:(Dom.mouseEvent -> unit) ->
      ?onWheel:(Dom.wheelEvent -> unit) ->
      ?onPause:(Dom.event -> unit) ->
      ?onPlay:(Dom.event -> unit) ->
      ?onPlaying:(Dom.event -> unit) ->
      ?onProgress:(Dom.progressEvent -> unit) ->
      ?onRateChange:(Dom.event -> unit) ->
      ?onReset:(Dom.event -> unit) ->
      ?onResize:(Dom.event -> unit) ->
      ?onScroll:(Dom.uiEvent -> unit) ->
      ?onSeeked:(Dom.event -> unit) ->
      ?onSeeking:(Dom.event -> unit) ->
      ?onSelect:(Dom.uiEvent -> unit) ->
      ?onStalled:(Dom.progressEvent -> unit) ->
      ?onSubmit:(Dom.event -> unit) ->
      ?onSuspend:(Dom.progressEvent -> unit) ->
      ?onTimeUpdate:(Dom.event -> unit) ->
      ?onToggle:(Dom.event -> unit) ->
      ?onVolumeChange:(Dom.event -> unit) ->
      ?onWaiting:(Dom.event -> unit) ->
      ?style:Css_Property.Override.flex Style.t ->
      ?cssModule:Css_Property.Override.flex Css_Module.t ->
      Html_Node.flex_item array -> [> Html_Node.div ] Html_Nodes.Div.t
    val inline_flex :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:unit ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:string ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:string ->
      ?aria_hidden:unit ->
      ?aria_invalid:unit ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:string ->
      ?aria_owns:string ->
      ?aria_relevant:string ->
      ?aria_roledescription:string ->
      ?accessKey:string ->
      ?className:string ->
      ?classSet:bool Js.Dict.t ->
      ?contentEditable:bool ->
      ?dataSet:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.Dir.t ->
      ?draggable:bool ->
      ?hidden:unit ->
      ?id:string ->
      ?lang:string ->
      ?spellCheck:string ->
      ?tabIndex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.Translate.t ->
      ?onAbort:(Dom.uiEvent -> unit) ->
      ?onAuxClick:(Dom.mouseEvent -> unit) ->
      ?onBlur:(Dom.focusEvent -> unit) ->
      ?onCancel:(Dom.event -> unit) ->
      ?onCanPlay:(Dom.event -> unit) ->
      ?onCanPlayThrough:(Dom.event -> unit) ->
      ?onChange:(Dom.event -> unit) ->
      ?onClick:(Dom.mouseEvent -> unit) ->
      ?onClose:(Dom.event -> unit) ->
      ?onCueChange:(Dom.event -> unit) ->
      ?onDblClick:(Dom.mouseEvent -> unit) ->
      ?onDrag:(Dom.dragEvent -> unit) ->
      ?onDragEnd:(Dom.dragEvent -> unit) ->
      ?onDragEnter:(Dom.dragEvent -> unit) ->
      ?onDragExit:(Dom.dragEvent -> unit) ->
      ?onDragLeave:(Dom.dragEvent -> unit) ->
      ?onDragOver:(Dom.dragEvent -> unit) ->
      ?onDragStart:(Dom.dragEvent -> unit) ->
      ?onDrop:(Dom.dragEvent -> unit) ->
      ?onDurationChange:(Dom.event -> unit) ->
      ?onEmptied:(Dom.event -> unit) ->
      ?onEnded:(Dom.event -> unit) ->
      ?onError:(Dom.uiEvent -> unit) ->
      ?onFocus:(Dom.focusEvent -> unit) ->
      ?onInput:(Dom.inputEvent -> unit) ->
      ?onInvalid:(Dom.event -> unit) ->
      ?onKeyDown:(Dom.keyboardEvent -> unit) ->
      ?onKeyPress:(Dom.keyboardEvent -> unit) ->
      ?onKeyUp:(Dom.keyboardEvent -> unit) ->
      ?onLoad:(Dom.uiEvent -> unit) ->
      ?onLoadedData:(Dom.event -> unit) ->
      ?onLoadedMetaData:(Dom.event -> unit) ->
      ?onLoadEnd:(Dom.progressEvent -> unit) ->
      ?onLoadStart:(Dom.progressEvent -> unit) ->
      ?onMouseDown:(Dom.mouseEvent -> unit) ->
      ?onMouseEnter:(Dom.mouseEvent -> unit) ->
      ?onMouseLeave:(Dom.mouseEvent -> unit) ->
      ?onMouseMove:(Dom.mouseEvent -> unit) ->
      ?onMouseOut:(Dom.mouseEvent -> unit) ->
      ?onMouseOver:(Dom.mouseEvent -> unit) ->
      ?onMouseUp:(Dom.mouseEvent -> unit) ->
      ?onWheel:(Dom.wheelEvent -> unit) ->
      ?onPause:(Dom.event -> unit) ->
      ?onPlay:(Dom.event -> unit) ->
      ?onPlaying:(Dom.event -> unit) ->
      ?onProgress:(Dom.progressEvent -> unit) ->
      ?onRateChange:(Dom.event -> unit) ->
      ?onReset:(Dom.event -> unit) ->
      ?onResize:(Dom.event -> unit) ->
      ?onScroll:(Dom.uiEvent -> unit) ->
      ?onSeeked:(Dom.event -> unit) ->
      ?onSeeking:(Dom.event -> unit) ->
      ?onSelect:(Dom.uiEvent -> unit) ->
      ?onStalled:(Dom.progressEvent -> unit) ->
      ?onSubmit:(Dom.event -> unit) ->
      ?onSuspend:(Dom.progressEvent -> unit) ->
      ?onTimeUpdate:(Dom.event -> unit) ->
      ?onToggle:(Dom.event -> unit) ->
      ?onVolumeChange:(Dom.event -> unit) ->
      ?onWaiting:(Dom.event -> unit) ->
      ?style:Css_Property.Override.inline_flex Style.t ->
      ?cssModule:Css_Property.Override.inline_flex Css_Module.t ->
      Html_Node.flex_item array -> [> Html_Node.div ] Html_Nodes.Div.t
    val inline_block :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:unit ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:string ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:string ->
      ?aria_hidden:unit ->
      ?aria_invalid:unit ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:string ->
      ?aria_owns:string ->
      ?aria_relevant:string ->
      ?aria_roledescription:string ->
      ?accessKey:string ->
      ?className:string ->
      ?classSet:bool Js.Dict.t ->
      ?contentEditable:bool ->
      ?dataSet:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.Dir.t ->
      ?draggable:bool ->
      ?hidden:unit ->
      ?id:string ->
      ?lang:string ->
      ?spellCheck:string ->
      ?tabIndex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.Translate.t ->
      ?onAbort:(Dom.uiEvent -> unit) ->
      ?onAuxClick:(Dom.mouseEvent -> unit) ->
      ?onBlur:(Dom.focusEvent -> unit) ->
      ?onCancel:(Dom.event -> unit) ->
      ?onCanPlay:(Dom.event -> unit) ->
      ?onCanPlayThrough:(Dom.event -> unit) ->
      ?onChange:(Dom.event -> unit) ->
      ?onClick:(Dom.mouseEvent -> unit) ->
      ?onClose:(Dom.event -> unit) ->
      ?onCueChange:(Dom.event -> unit) ->
      ?onDblClick:(Dom.mouseEvent -> unit) ->
      ?onDrag:(Dom.dragEvent -> unit) ->
      ?onDragEnd:(Dom.dragEvent -> unit) ->
      ?onDragEnter:(Dom.dragEvent -> unit) ->
      ?onDragExit:(Dom.dragEvent -> unit) ->
      ?onDragLeave:(Dom.dragEvent -> unit) ->
      ?onDragOver:(Dom.dragEvent -> unit) ->
      ?onDragStart:(Dom.dragEvent -> unit) ->
      ?onDrop:(Dom.dragEvent -> unit) ->
      ?onDurationChange:(Dom.event -> unit) ->
      ?onEmptied:(Dom.event -> unit) ->
      ?onEnded:(Dom.event -> unit) ->
      ?onError:(Dom.uiEvent -> unit) ->
      ?onFocus:(Dom.focusEvent -> unit) ->
      ?onInput:(Dom.inputEvent -> unit) ->
      ?onInvalid:(Dom.event -> unit) ->
      ?onKeyDown:(Dom.keyboardEvent -> unit) ->
      ?onKeyPress:(Dom.keyboardEvent -> unit) ->
      ?onKeyUp:(Dom.keyboardEvent -> unit) ->
      ?onLoad:(Dom.uiEvent -> unit) ->
      ?onLoadedData:(Dom.event -> unit) ->
      ?onLoadedMetaData:(Dom.event -> unit) ->
      ?onLoadEnd:(Dom.progressEvent -> unit) ->
      ?onLoadStart:(Dom.progressEvent -> unit) ->
      ?onMouseDown:(Dom.mouseEvent -> unit) ->
      ?onMouseEnter:(Dom.mouseEvent -> unit) ->
      ?onMouseLeave:(Dom.mouseEvent -> unit) ->
      ?onMouseMove:(Dom.mouseEvent -> unit) ->
      ?onMouseOut:(Dom.mouseEvent -> unit) ->
      ?onMouseOver:(Dom.mouseEvent -> unit) ->
      ?onMouseUp:(Dom.mouseEvent -> unit) ->
      ?onWheel:(Dom.wheelEvent -> unit) ->
      ?onPause:(Dom.event -> unit) ->
      ?onPlay:(Dom.event -> unit) ->
      ?onPlaying:(Dom.event -> unit) ->
      ?onProgress:(Dom.progressEvent -> unit) ->
      ?onRateChange:(Dom.event -> unit) ->
      ?onReset:(Dom.event -> unit) ->
      ?onResize:(Dom.event -> unit) ->
      ?onScroll:(Dom.uiEvent -> unit) ->
      ?onSeeked:(Dom.event -> unit) ->
      ?onSeeking:(Dom.event -> unit) ->
      ?onSelect:(Dom.uiEvent -> unit) ->
      ?onStalled:(Dom.progressEvent -> unit) ->
      ?onSubmit:(Dom.event -> unit) ->
      ?onSuspend:(Dom.progressEvent -> unit) ->
      ?onTimeUpdate:(Dom.event -> unit) ->
      ?onToggle:(Dom.event -> unit) ->
      ?onVolumeChange:(Dom.event -> unit) ->
      ?onWaiting:(Dom.event -> unit) ->
      ?style:Css_Property.Override.inline_block Style.t ->
      ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
      Html_Nodes.Div.child array -> [> Html_Node.div ] Html_Nodes.Div.t
    module Jsx :
      sig
        val flex :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:unit ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:string ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:string ->
          ?aria_hidden:unit ->
          ?aria_invalid:unit ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:string ->
          ?aria_owns:string ->
          ?aria_relevant:string ->
          ?aria_roledescription:string ->
          ?accessKey:string ->
          ?className:string ->
          ?classSet:bool Js.Dict.t ->
          ?contentEditable:bool ->
          ?dataSet:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.Dir.t ->
          ?draggable:bool ->
          ?hidden:unit ->
          ?id:string ->
          ?lang:string ->
          ?spellCheck:string ->
          ?tabIndex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.Translate.t ->
          ?onAbort:(Dom.uiEvent -> unit) ->
          ?onAuxClick:(Dom.mouseEvent -> unit) ->
          ?onBlur:(Dom.focusEvent -> unit) ->
          ?onCancel:(Dom.event -> unit) ->
          ?onCanPlay:(Dom.event -> unit) ->
          ?onCanPlayThrough:(Dom.event -> unit) ->
          ?onChange:(Dom.event -> unit) ->
          ?onClick:(Dom.mouseEvent -> unit) ->
          ?onClose:(Dom.event -> unit) ->
          ?onCueChange:(Dom.event -> unit) ->
          ?onDblClick:(Dom.mouseEvent -> unit) ->
          ?onDrag:(Dom.dragEvent -> unit) ->
          ?onDragEnd:(Dom.dragEvent -> unit) ->
          ?onDragEnter:(Dom.dragEvent -> unit) ->
          ?onDragExit:(Dom.dragEvent -> unit) ->
          ?onDragLeave:(Dom.dragEvent -> unit) ->
          ?onDragOver:(Dom.dragEvent -> unit) ->
          ?onDragStart:(Dom.dragEvent -> unit) ->
          ?onDrop:(Dom.dragEvent -> unit) ->
          ?onDurationChange:(Dom.event -> unit) ->
          ?onEmptied:(Dom.event -> unit) ->
          ?onEnded:(Dom.event -> unit) ->
          ?onError:(Dom.uiEvent -> unit) ->
          ?onFocus:(Dom.focusEvent -> unit) ->
          ?onInput:(Dom.inputEvent -> unit) ->
          ?onInvalid:(Dom.event -> unit) ->
          ?onKeyDown:(Dom.keyboardEvent -> unit) ->
          ?onKeyPress:(Dom.keyboardEvent -> unit) ->
          ?onKeyUp:(Dom.keyboardEvent -> unit) ->
          ?onLoad:(Dom.uiEvent -> unit) ->
          ?onLoadedData:(Dom.event -> unit) ->
          ?onLoadedMetaData:(Dom.event -> unit) ->
          ?onLoadEnd:(Dom.progressEvent -> unit) ->
          ?onLoadStart:(Dom.progressEvent -> unit) ->
          ?onMouseDown:(Dom.mouseEvent -> unit) ->
          ?onMouseEnter:(Dom.mouseEvent -> unit) ->
          ?onMouseLeave:(Dom.mouseEvent -> unit) ->
          ?onMouseMove:(Dom.mouseEvent -> unit) ->
          ?onMouseOut:(Dom.mouseEvent -> unit) ->
          ?onMouseOver:(Dom.mouseEvent -> unit) ->
          ?onMouseUp:(Dom.mouseEvent -> unit) ->
          ?onWheel:(Dom.wheelEvent -> unit) ->
          ?onPause:(Dom.event -> unit) ->
          ?onPlay:(Dom.event -> unit) ->
          ?onPlaying:(Dom.event -> unit) ->
          ?onProgress:(Dom.progressEvent -> unit) ->
          ?onRateChange:(Dom.event -> unit) ->
          ?onReset:(Dom.event -> unit) ->
          ?onResize:(Dom.event -> unit) ->
          ?onScroll:(Dom.uiEvent -> unit) ->
          ?onSeeked:(Dom.event -> unit) ->
          ?onSeeking:(Dom.event -> unit) ->
          ?onSelect:(Dom.uiEvent -> unit) ->
          ?onStalled:(Dom.progressEvent -> unit) ->
          ?onSubmit:(Dom.event -> unit) ->
          ?onSuspend:(Dom.progressEvent -> unit) ->
          ?onTimeUpdate:(Dom.event -> unit) ->
          ?onToggle:(Dom.event -> unit) ->
          ?onVolumeChange:(Dom.event -> unit) ->
          ?onWaiting:(Dom.event -> unit) ->
          ?style:Css_Property.Override.flex Style.t ->
          ?cssModule:Css_Property.Override.flex Css_Module.t ->
          ?children:Html_Node.flex_item Js.List.t ->
          unit -> [> Html_Node.div ] Html_Nodes.Div.t
        val inline_flex :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:unit ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:string ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:string ->
          ?aria_hidden:unit ->
          ?aria_invalid:unit ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:string ->
          ?aria_owns:string ->
          ?aria_relevant:string ->
          ?aria_roledescription:string ->
          ?accessKey:string ->
          ?className:string ->
          ?classSet:bool Js.Dict.t ->
          ?contentEditable:bool ->
          ?dataSet:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.Dir.t ->
          ?draggable:bool ->
          ?hidden:unit ->
          ?id:string ->
          ?lang:string ->
          ?spellCheck:string ->
          ?tabIndex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.Translate.t ->
          ?onAbort:(Dom.uiEvent -> unit) ->
          ?onAuxClick:(Dom.mouseEvent -> unit) ->
          ?onBlur:(Dom.focusEvent -> unit) ->
          ?onCancel:(Dom.event -> unit) ->
          ?onCanPlay:(Dom.event -> unit) ->
          ?onCanPlayThrough:(Dom.event -> unit) ->
          ?onChange:(Dom.event -> unit) ->
          ?onClick:(Dom.mouseEvent -> unit) ->
          ?onClose:(Dom.event -> unit) ->
          ?onCueChange:(Dom.event -> unit) ->
          ?onDblClick:(Dom.mouseEvent -> unit) ->
          ?onDrag:(Dom.dragEvent -> unit) ->
          ?onDragEnd:(Dom.dragEvent -> unit) ->
          ?onDragEnter:(Dom.dragEvent -> unit) ->
          ?onDragExit:(Dom.dragEvent -> unit) ->
          ?onDragLeave:(Dom.dragEvent -> unit) ->
          ?onDragOver:(Dom.dragEvent -> unit) ->
          ?onDragStart:(Dom.dragEvent -> unit) ->
          ?onDrop:(Dom.dragEvent -> unit) ->
          ?onDurationChange:(Dom.event -> unit) ->
          ?onEmptied:(Dom.event -> unit) ->
          ?onEnded:(Dom.event -> unit) ->
          ?onError:(Dom.uiEvent -> unit) ->
          ?onFocus:(Dom.focusEvent -> unit) ->
          ?onInput:(Dom.inputEvent -> unit) ->
          ?onInvalid:(Dom.event -> unit) ->
          ?onKeyDown:(Dom.keyboardEvent -> unit) ->
          ?onKeyPress:(Dom.keyboardEvent -> unit) ->
          ?onKeyUp:(Dom.keyboardEvent -> unit) ->
          ?onLoad:(Dom.uiEvent -> unit) ->
          ?onLoadedData:(Dom.event -> unit) ->
          ?onLoadedMetaData:(Dom.event -> unit) ->
          ?onLoadEnd:(Dom.progressEvent -> unit) ->
          ?onLoadStart:(Dom.progressEvent -> unit) ->
          ?onMouseDown:(Dom.mouseEvent -> unit) ->
          ?onMouseEnter:(Dom.mouseEvent -> unit) ->
          ?onMouseLeave:(Dom.mouseEvent -> unit) ->
          ?onMouseMove:(Dom.mouseEvent -> unit) ->
          ?onMouseOut:(Dom.mouseEvent -> unit) ->
          ?onMouseOver:(Dom.mouseEvent -> unit) ->
          ?onMouseUp:(Dom.mouseEvent -> unit) ->
          ?onWheel:(Dom.wheelEvent -> unit) ->
          ?onPause:(Dom.event -> unit) ->
          ?onPlay:(Dom.event -> unit) ->
          ?onPlaying:(Dom.event -> unit) ->
          ?onProgress:(Dom.progressEvent -> unit) ->
          ?onRateChange:(Dom.event -> unit) ->
          ?onReset:(Dom.event -> unit) ->
          ?onResize:(Dom.event -> unit) ->
          ?onScroll:(Dom.uiEvent -> unit) ->
          ?onSeeked:(Dom.event -> unit) ->
          ?onSeeking:(Dom.event -> unit) ->
          ?onSelect:(Dom.uiEvent -> unit) ->
          ?onStalled:(Dom.progressEvent -> unit) ->
          ?onSubmit:(Dom.event -> unit) ->
          ?onSuspend:(Dom.progressEvent -> unit) ->
          ?onTimeUpdate:(Dom.event -> unit) ->
          ?onToggle:(Dom.event -> unit) ->
          ?onVolumeChange:(Dom.event -> unit) ->
          ?onWaiting:(Dom.event -> unit) ->
          ?style:Css_Property.Override.inline_flex Style.t ->
          ?cssModule:Css_Property.Override.inline_flex Css_Module.t ->
          ?children:Html_Node.flex_item Js.List.t ->
          unit -> [> Html_Node.div ] Html_Nodes.Div.t
        val inline_block :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:unit ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:string ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:string ->
          ?aria_hidden:unit ->
          ?aria_invalid:unit ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:string ->
          ?aria_owns:string ->
          ?aria_relevant:string ->
          ?aria_roledescription:string ->
          ?accessKey:string ->
          ?className:string ->
          ?classSet:bool Js.Dict.t ->
          ?contentEditable:bool ->
          ?dataSet:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.Dir.t ->
          ?draggable:bool ->
          ?hidden:unit ->
          ?id:string ->
          ?lang:string ->
          ?spellCheck:string ->
          ?tabIndex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.Translate.t ->
          ?onAbort:(Dom.uiEvent -> unit) ->
          ?onAuxClick:(Dom.mouseEvent -> unit) ->
          ?onBlur:(Dom.focusEvent -> unit) ->
          ?onCancel:(Dom.event -> unit) ->
          ?onCanPlay:(Dom.event -> unit) ->
          ?onCanPlayThrough:(Dom.event -> unit) ->
          ?onChange:(Dom.event -> unit) ->
          ?onClick:(Dom.mouseEvent -> unit) ->
          ?onClose:(Dom.event -> unit) ->
          ?onCueChange:(Dom.event -> unit) ->
          ?onDblClick:(Dom.mouseEvent -> unit) ->
          ?onDrag:(Dom.dragEvent -> unit) ->
          ?onDragEnd:(Dom.dragEvent -> unit) ->
          ?onDragEnter:(Dom.dragEvent -> unit) ->
          ?onDragExit:(Dom.dragEvent -> unit) ->
          ?onDragLeave:(Dom.dragEvent -> unit) ->
          ?onDragOver:(Dom.dragEvent -> unit) ->
          ?onDragStart:(Dom.dragEvent -> unit) ->
          ?onDrop:(Dom.dragEvent -> unit) ->
          ?onDurationChange:(Dom.event -> unit) ->
          ?onEmptied:(Dom.event -> unit) ->
          ?onEnded:(Dom.event -> unit) ->
          ?onError:(Dom.uiEvent -> unit) ->
          ?onFocus:(Dom.focusEvent -> unit) ->
          ?onInput:(Dom.inputEvent -> unit) ->
          ?onInvalid:(Dom.event -> unit) ->
          ?onKeyDown:(Dom.keyboardEvent -> unit) ->
          ?onKeyPress:(Dom.keyboardEvent -> unit) ->
          ?onKeyUp:(Dom.keyboardEvent -> unit) ->
          ?onLoad:(Dom.uiEvent -> unit) ->
          ?onLoadedData:(Dom.event -> unit) ->
          ?onLoadedMetaData:(Dom.event -> unit) ->
          ?onLoadEnd:(Dom.progressEvent -> unit) ->
          ?onLoadStart:(Dom.progressEvent -> unit) ->
          ?onMouseDown:(Dom.mouseEvent -> unit) ->
          ?onMouseEnter:(Dom.mouseEvent -> unit) ->
          ?onMouseLeave:(Dom.mouseEvent -> unit) ->
          ?onMouseMove:(Dom.mouseEvent -> unit) ->
          ?onMouseOut:(Dom.mouseEvent -> unit) ->
          ?onMouseOver:(Dom.mouseEvent -> unit) ->
          ?onMouseUp:(Dom.mouseEvent -> unit) ->
          ?onWheel:(Dom.wheelEvent -> unit) ->
          ?onPause:(Dom.event -> unit) ->
          ?onPlay:(Dom.event -> unit) ->
          ?onPlaying:(Dom.event -> unit) ->
          ?onProgress:(Dom.progressEvent -> unit) ->
          ?onRateChange:(Dom.event -> unit) ->
          ?onReset:(Dom.event -> unit) ->
          ?onResize:(Dom.event -> unit) ->
          ?onScroll:(Dom.uiEvent -> unit) ->
          ?onSeeked:(Dom.event -> unit) ->
          ?onSeeking:(Dom.event -> unit) ->
          ?onSelect:(Dom.uiEvent -> unit) ->
          ?onStalled:(Dom.progressEvent -> unit) ->
          ?onSubmit:(Dom.event -> unit) ->
          ?onSuspend:(Dom.progressEvent -> unit) ->
          ?onTimeUpdate:(Dom.event -> unit) ->
          ?onToggle:(Dom.event -> unit) ->
          ?onVolumeChange:(Dom.event -> unit) ->
          ?onWaiting:(Dom.event -> unit) ->
          ?style:Css_Property.Override.inline_block Style.t ->
          ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
          ?children:Html_Nodes.Div.child Js.List.t ->
          unit -> [> Html_Node.div ] Html_Nodes.Div.t
      end
  end
module Span :
  sig
    val inline_block :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:unit ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:string ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:string ->
      ?aria_hidden:unit ->
      ?aria_invalid:unit ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:string ->
      ?aria_owns:string ->
      ?aria_relevant:string ->
      ?aria_roledescription:string ->
      ?accessKey:string ->
      ?className:string ->
      ?classSet:bool Js.Dict.t ->
      ?contentEditable:bool ->
      ?dataSet:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.Dir.t ->
      ?draggable:bool ->
      ?hidden:unit ->
      ?id:string ->
      ?lang:string ->
      ?spellCheck:string ->
      ?tabIndex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.Translate.t ->
      ?onAbort:(Dom.uiEvent -> unit) ->
      ?onAuxClick:(Dom.mouseEvent -> unit) ->
      ?onBlur:(Dom.focusEvent -> unit) ->
      ?onCancel:(Dom.event -> unit) ->
      ?onCanPlay:(Dom.event -> unit) ->
      ?onCanPlayThrough:(Dom.event -> unit) ->
      ?onChange:(Dom.event -> unit) ->
      ?onClick:(Dom.mouseEvent -> unit) ->
      ?onClose:(Dom.event -> unit) ->
      ?onCueChange:(Dom.event -> unit) ->
      ?onDblClick:(Dom.mouseEvent -> unit) ->
      ?onDrag:(Dom.dragEvent -> unit) ->
      ?onDragEnd:(Dom.dragEvent -> unit) ->
      ?onDragEnter:(Dom.dragEvent -> unit) ->
      ?onDragExit:(Dom.dragEvent -> unit) ->
      ?onDragLeave:(Dom.dragEvent -> unit) ->
      ?onDragOver:(Dom.dragEvent -> unit) ->
      ?onDragStart:(Dom.dragEvent -> unit) ->
      ?onDrop:(Dom.dragEvent -> unit) ->
      ?onDurationChange:(Dom.event -> unit) ->
      ?onEmptied:(Dom.event -> unit) ->
      ?onEnded:(Dom.event -> unit) ->
      ?onError:(Dom.uiEvent -> unit) ->
      ?onFocus:(Dom.focusEvent -> unit) ->
      ?onInput:(Dom.inputEvent -> unit) ->
      ?onInvalid:(Dom.event -> unit) ->
      ?onKeyDown:(Dom.keyboardEvent -> unit) ->
      ?onKeyPress:(Dom.keyboardEvent -> unit) ->
      ?onKeyUp:(Dom.keyboardEvent -> unit) ->
      ?onLoad:(Dom.uiEvent -> unit) ->
      ?onLoadedData:(Dom.event -> unit) ->
      ?onLoadedMetaData:(Dom.event -> unit) ->
      ?onLoadEnd:(Dom.progressEvent -> unit) ->
      ?onLoadStart:(Dom.progressEvent -> unit) ->
      ?onMouseDown:(Dom.mouseEvent -> unit) ->
      ?onMouseEnter:(Dom.mouseEvent -> unit) ->
      ?onMouseLeave:(Dom.mouseEvent -> unit) ->
      ?onMouseMove:(Dom.mouseEvent -> unit) ->
      ?onMouseOut:(Dom.mouseEvent -> unit) ->
      ?onMouseOver:(Dom.mouseEvent -> unit) ->
      ?onMouseUp:(Dom.mouseEvent -> unit) ->
      ?onWheel:(Dom.wheelEvent -> unit) ->
      ?onPause:(Dom.event -> unit) ->
      ?onPlay:(Dom.event -> unit) ->
      ?onPlaying:(Dom.event -> unit) ->
      ?onProgress:(Dom.progressEvent -> unit) ->
      ?onRateChange:(Dom.event -> unit) ->
      ?onReset:(Dom.event -> unit) ->
      ?onResize:(Dom.event -> unit) ->
      ?onScroll:(Dom.uiEvent -> unit) ->
      ?onSeeked:(Dom.event -> unit) ->
      ?onSeeking:(Dom.event -> unit) ->
      ?onSelect:(Dom.uiEvent -> unit) ->
      ?onStalled:(Dom.progressEvent -> unit) ->
      ?onSubmit:(Dom.event -> unit) ->
      ?onSuspend:(Dom.progressEvent -> unit) ->
      ?onTimeUpdate:(Dom.event -> unit) ->
      ?onToggle:(Dom.event -> unit) ->
      ?onVolumeChange:(Dom.event -> unit) ->
      ?onWaiting:(Dom.event -> unit) ->
      ?style:Css_Property.Override.inline_block Style.t ->
      ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
      Html_Nodes.Span.child array -> [> Html_Node.span ] Html_Nodes.Span.t
    module Jsx :
      sig
        val inline_block :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:unit ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:string ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:string ->
          ?aria_hidden:unit ->
          ?aria_invalid:unit ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:string ->
          ?aria_owns:string ->
          ?aria_relevant:string ->
          ?aria_roledescription:string ->
          ?accessKey:string ->
          ?className:string ->
          ?classSet:bool Js.Dict.t ->
          ?contentEditable:bool ->
          ?dataSet:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.Dir.t ->
          ?draggable:bool ->
          ?hidden:unit ->
          ?id:string ->
          ?lang:string ->
          ?spellCheck:string ->
          ?tabIndex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.Translate.t ->
          ?onAbort:(Dom.uiEvent -> unit) ->
          ?onAuxClick:(Dom.mouseEvent -> unit) ->
          ?onBlur:(Dom.focusEvent -> unit) ->
          ?onCancel:(Dom.event -> unit) ->
          ?onCanPlay:(Dom.event -> unit) ->
          ?onCanPlayThrough:(Dom.event -> unit) ->
          ?onChange:(Dom.event -> unit) ->
          ?onClick:(Dom.mouseEvent -> unit) ->
          ?onClose:(Dom.event -> unit) ->
          ?onCueChange:(Dom.event -> unit) ->
          ?onDblClick:(Dom.mouseEvent -> unit) ->
          ?onDrag:(Dom.dragEvent -> unit) ->
          ?onDragEnd:(Dom.dragEvent -> unit) ->
          ?onDragEnter:(Dom.dragEvent -> unit) ->
          ?onDragExit:(Dom.dragEvent -> unit) ->
          ?onDragLeave:(Dom.dragEvent -> unit) ->
          ?onDragOver:(Dom.dragEvent -> unit) ->
          ?onDragStart:(Dom.dragEvent -> unit) ->
          ?onDrop:(Dom.dragEvent -> unit) ->
          ?onDurationChange:(Dom.event -> unit) ->
          ?onEmptied:(Dom.event -> unit) ->
          ?onEnded:(Dom.event -> unit) ->
          ?onError:(Dom.uiEvent -> unit) ->
          ?onFocus:(Dom.focusEvent -> unit) ->
          ?onInput:(Dom.inputEvent -> unit) ->
          ?onInvalid:(Dom.event -> unit) ->
          ?onKeyDown:(Dom.keyboardEvent -> unit) ->
          ?onKeyPress:(Dom.keyboardEvent -> unit) ->
          ?onKeyUp:(Dom.keyboardEvent -> unit) ->
          ?onLoad:(Dom.uiEvent -> unit) ->
          ?onLoadedData:(Dom.event -> unit) ->
          ?onLoadedMetaData:(Dom.event -> unit) ->
          ?onLoadEnd:(Dom.progressEvent -> unit) ->
          ?onLoadStart:(Dom.progressEvent -> unit) ->
          ?onMouseDown:(Dom.mouseEvent -> unit) ->
          ?onMouseEnter:(Dom.mouseEvent -> unit) ->
          ?onMouseLeave:(Dom.mouseEvent -> unit) ->
          ?onMouseMove:(Dom.mouseEvent -> unit) ->
          ?onMouseOut:(Dom.mouseEvent -> unit) ->
          ?onMouseOver:(Dom.mouseEvent -> unit) ->
          ?onMouseUp:(Dom.mouseEvent -> unit) ->
          ?onWheel:(Dom.wheelEvent -> unit) ->
          ?onPause:(Dom.event -> unit) ->
          ?onPlay:(Dom.event -> unit) ->
          ?onPlaying:(Dom.event -> unit) ->
          ?onProgress:(Dom.progressEvent -> unit) ->
          ?onRateChange:(Dom.event -> unit) ->
          ?onReset:(Dom.event -> unit) ->
          ?onResize:(Dom.event -> unit) ->
          ?onScroll:(Dom.uiEvent -> unit) ->
          ?onSeeked:(Dom.event -> unit) ->
          ?onSeeking:(Dom.event -> unit) ->
          ?onSelect:(Dom.uiEvent -> unit) ->
          ?onStalled:(Dom.progressEvent -> unit) ->
          ?onSubmit:(Dom.event -> unit) ->
          ?onSuspend:(Dom.progressEvent -> unit) ->
          ?onTimeUpdate:(Dom.event -> unit) ->
          ?onToggle:(Dom.event -> unit) ->
          ?onVolumeChange:(Dom.event -> unit) ->
          ?onWaiting:(Dom.event -> unit) ->
          ?style:Css_Property.Override.inline_block Style.t ->
          ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
          ?children:Html_Nodes.Span.child Js.List.t ->
          unit -> [> Html_Node.span ] Html_Nodes.Span.t
      end
  end
val flex_module :
  Css_Property.flex_item Css_Module.t ->
  Html_Node.flex_item -> Html_Node.flex_item