(** A wrapper for callbag-element *)

type +'a t = 'a Html_Node.t
  constraint 'a = [> [> `callbag ] Html_Node.custom ]
val make :
  ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
  ?accessKey:string ->
  ?autoCapitalize:Html_Attributes.Global.Value.autocapitalize ->
  ?className:string ->
  ?classSet:bool Js.Dict.t ->
  ?contentEditable:unit ->
  ?dataSet:string Js.Dict.t ->
  ?dir:Html_Attributes.Global.Value.dir ->
  ?draggable:unit ->
  ?enterKeyHint:Html_Attributes.Global.Value.enterkeyhint ->
  ?hidden:unit ->
  ?id:string ->
  ?inputMode:Html_Attributes.Global.Value.inputmode ->
  ?is:string ->
  ?itemId:string ->
  ?itemProp:string ->
  ?itemRef:string ->
  ?itemScope:unit ->
  ?itemType:string ->
  ?lang:string ->
  ?nonce:string ->
  ?spellCheck:string ->
  ?tabIndex:int ->
  ?title:string ->
  ?translate:Html_Attributes.Global.Value.translate ->
  ?onAuxClick:(Dom.mouseEvent -> unit) ->
  ?onBlur:(Dom.focusEvent -> unit) ->
  ?onClick:(Dom.mouseEvent -> unit) ->
  ?onCopy:(Dom.clipboardEvent -> unit) ->
  ?onCut:(Dom.clipboardEvent -> unit) ->
  ?onDblClick:(Dom.mouseEvent -> unit) ->
  ?onDrag:(Dom.dragEvent -> unit) ->
  ?onDragEnd:(Dom.dragEvent -> unit) ->
  ?onDragEnter:(Dom.dragEvent -> unit) ->
  ?onDragExit:(Dom.dragEvent -> unit) ->
  ?onDragLeave:(Dom.dragEvent -> unit) ->
  ?onDragOver:(Dom.dragEvent -> unit) ->
  ?onDragStart:(Dom.dragEvent -> unit) ->
  ?onDrop:(Dom.dragEvent -> unit) ->
  ?onFocus:(Dom.focusEvent -> unit) ->
  ?onInput:(Dom.inputEvent -> unit) ->
  ?onKeyDown:(Dom.keyboardEvent -> unit) ->
  ?onKeyPress:(Dom.keyboardEvent -> unit) ->
  ?onKeyUp:(Dom.keyboardEvent -> unit) ->
  ?onMouseDown:(Dom.mouseEvent -> unit) ->
  ?onMouseEnter:(Dom.mouseEvent -> unit) ->
  ?onMouseLeave:(Dom.mouseEvent -> unit) ->
  ?onMouseMove:(Dom.mouseEvent -> unit) ->
  ?onMouseOut:(Dom.mouseEvent -> unit) ->
  ?onMouseOver:(Dom.mouseEvent -> unit) ->
  ?onMouseUp:(Dom.mouseEvent -> unit) ->
  ?onWheel:(Dom.wheelEvent -> unit) ->
  ?onPaste:(Dom.clipboardEvent -> unit) ->
  ?onScroll:(Dom.uiEvent -> unit) ->
  [< _ Html_Node.content ] Html_Node.t Callbag.t ->
  [> [> `callbag ] Html_Node.custom ] t
val jsx :
  ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
  ?accessKey:string ->
  ?autoCapitalize:Html_Attributes.Global.Value.autocapitalize ->
  ?className:string ->
  ?classSet:bool Js.Dict.t ->
  ?contentEditable:unit ->
  ?dataSet:string Js.Dict.t ->
  ?dir:Html_Attributes.Global.Value.dir ->
  ?draggable:unit ->
  ?enterKeyHint:Html_Attributes.Global.Value.enterkeyhint ->
  ?hidden:unit ->
  ?id:string ->
  ?inputMode:Html_Attributes.Global.Value.inputmode ->
  ?is:string ->
  ?itemId:string ->
  ?itemProp:string ->
  ?itemRef:string ->
  ?itemScope:unit ->
  ?itemType:string ->
  ?lang:string ->
  ?nonce:string ->
  ?spellCheck:string ->
  ?tabIndex:int ->
  ?title:string ->
  ?translate:Html_Attributes.Global.Value.translate ->
  ?onAuxClick:(Dom.mouseEvent -> unit) ->
  ?onBlur:(Dom.focusEvent -> unit) ->
  ?onClick:(Dom.mouseEvent -> unit) ->
  ?onCopy:(Dom.clipboardEvent -> unit) ->
  ?onCut:(Dom.clipboardEvent -> unit) ->
  ?onDblClick:(Dom.mouseEvent -> unit) ->
  ?onDrag:(Dom.dragEvent -> unit) ->
  ?onDragEnd:(Dom.dragEvent -> unit) ->
  ?onDragEnter:(Dom.dragEvent -> unit) ->
  ?onDragExit:(Dom.dragEvent -> unit) ->
  ?onDragLeave:(Dom.dragEvent -> unit) ->
  ?onDragOver:(Dom.dragEvent -> unit) ->
  ?onDragStart:(Dom.dragEvent -> unit) ->
  ?onDrop:(Dom.dragEvent -> unit) ->
  ?onFocus:(Dom.focusEvent -> unit) ->
  ?onInput:(Dom.inputEvent -> unit) ->
  ?onKeyDown:(Dom.keyboardEvent -> unit) ->
  ?onKeyPress:(Dom.keyboardEvent -> unit) ->
  ?onKeyUp:(Dom.keyboardEvent -> unit) ->
  ?onMouseDown:(Dom.mouseEvent -> unit) ->
  ?onMouseEnter:(Dom.mouseEvent -> unit) ->
  ?onMouseLeave:(Dom.mouseEvent -> unit) ->
  ?onMouseMove:(Dom.mouseEvent -> unit) ->
  ?onMouseOut:(Dom.mouseEvent -> unit) ->
  ?onMouseOver:(Dom.mouseEvent -> unit) ->
  ?onMouseUp:(Dom.mouseEvent -> unit) ->
  ?onWheel:(Dom.wheelEvent -> unit) ->
  ?onPaste:(Dom.clipboardEvent -> unit) ->
  ?onScroll:(Dom.uiEvent -> unit) ->
  ?callbag:[< _ Html_Node.content ] Html_Node.t Callbag.t ->
  unit -> [> [> `callbag ] Html_Node.custom ] t
