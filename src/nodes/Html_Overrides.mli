(**
 HTML Node Overrides

 This module provides from {!module:Html_Nodes} that take display override styles
 *)


module Div :
  sig
    val flex :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.Override.flex Style.t ->
      ?css_module:Css_Property.Override.flex Css_Module.t ->
      _ Html_Node.flex_item Html_Node.t array ->
      [> Html_Node.div ] Html_Node.t
    val inline_flex :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.Override.inline_flex Style.t ->
      ?css_module:Css_Property.Override.inline_flex Css_Module.t ->
      _ Html_Node.flex_item Html_Node.t array ->
      [> Html_Node.div ] Html_Node.t
    val inline_block :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.Override.inline_block Style.t ->
      ?css_module:Css_Property.Override.inline_block Css_Module.t ->
      _ Html_Nodes.Div.child array -> [> Html_Node.div ] Html_Node.t
    module Jsx :
      sig
        val flex :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.Override.flex Style.t ->
          ?css_module:Css_Property.Override.flex Css_Module.t ->
          ?children:_ Html_Node.flex_item Html_Node.t Js.List.t ->
          unit -> [> Html_Node.div ] Html_Node.t
        val inline_flex :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.Override.inline_flex Style.t ->
          ?css_module:Css_Property.Override.inline_flex Css_Module.t ->
          ?children:_ Html_Node.flex_item Html_Node.t Js.List.t ->
          unit -> [> Html_Node.div ] Html_Node.t
        val inline_block :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.Override.inline_block Style.t ->
          ?css_module:Css_Property.Override.inline_block Css_Module.t ->
          ?children:_ Html_Nodes.Div.child Js.List.t ->
          unit -> [> Html_Node.div ] Html_Node.t
      end
  end
module Span :
  sig
    val inline_block :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.Override.inline_block Style.t ->
      ?css_module:Css_Property.Override.inline_block Css_Module.t ->
      _ Html_Nodes.Span.child array -> [> Html_Node.span ] Html_Node.t
    module Jsx :
      sig
        val inline_block :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.Override.inline_block Style.t ->
          ?css_module:Css_Property.Override.inline_block Css_Module.t ->
          ?children:_ Html_Nodes.Span.child Js.List.t ->
          unit -> [> Html_Node.span ] Html_Node.t
      end
  end
val flex_module :
  Css_Property.flex_item Css_Module.t ->
  'a Html_Node.flex_item Html_Node.t -> 'a Html_Node.flex_item Html_Node.t
