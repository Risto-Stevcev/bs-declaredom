(** A wrapper for callbag-element *)

type +'a t = ([> [> `callbag] Html_Node.custom ] as 'a) Html_Node.t

val make :
  ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
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
  [< _ Html_Node.content] Html_Node.t Callbag.t -> _ t

val jsx :
  ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
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
  ?callbag:[< _ Html_Node.content] Html_Node.t Callbag.t ->
  unit -> _ t
