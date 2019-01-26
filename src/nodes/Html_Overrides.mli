(**
 HTML Node Overrides

 This module provides from {!module:Html_Nodes} that take display override styles
 *)


module Div :
  sig
    val flex :
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
      ?style:Css_Property.Override.flex Style.t ->
      ?cssModule:Css_Property.Override.flex Css_Module.t ->
      _ Html_Node.flex_item Html_Node.t array ->
      [> Html_Node.div ] Html_Node.t
    val inline_flex :
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
      ?style:Css_Property.Override.inline_flex Style.t ->
      ?cssModule:Css_Property.Override.inline_flex Css_Module.t ->
      _ Html_Node.flex_item Html_Node.t array ->
      [> Html_Node.div ] Html_Node.t
    val inline_block :
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
      ?style:Css_Property.Override.inline_block Style.t ->
      ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
      _ Html_Nodes.Div.child array -> [> Html_Node.div ] Html_Node.t
    module Jsx :
      sig
        val flex :
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
          ?style:Css_Property.Override.flex Style.t ->
          ?cssModule:Css_Property.Override.flex Css_Module.t ->
          ?children:_ Html_Node.flex_item Html_Node.t Js.List.t ->
          unit -> [> Html_Node.div ] Html_Node.t
        val inline_flex :
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
          ?style:Css_Property.Override.inline_flex Style.t ->
          ?cssModule:Css_Property.Override.inline_flex Css_Module.t ->
          ?children:_ Html_Node.flex_item Html_Node.t Js.List.t ->
          unit -> [> Html_Node.div ] Html_Node.t
        val inline_block :
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
          ?style:Css_Property.Override.inline_block Style.t ->
          ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
          ?children:_ Html_Nodes.Div.child Js.List.t ->
          unit -> [> Html_Node.div ] Html_Node.t
      end
  end
module Span :
  sig
    val inline_block :
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
      ?style:Css_Property.Override.inline_block Style.t ->
      ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
      _ Html_Nodes.Span.child array -> [> Html_Node.span ] Html_Node.t
    module Jsx :
      sig
        val inline_block :
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
          ?style:Css_Property.Override.inline_block Style.t ->
          ?cssModule:Css_Property.Override.inline_block Css_Module.t ->
          ?children:_ Html_Nodes.Span.child Js.List.t ->
          unit -> [> Html_Node.span ] Html_Node.t
      end
  end
val flex_module :
  Css_Property.flex_item Css_Module.t ->
  'a Html_Node.flex_item Html_Node.t -> 'a Html_Node.flex_item Html_Node.t
