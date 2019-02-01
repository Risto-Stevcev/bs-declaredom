(** A wrapper for callbag-element *)

type +'a t = 'a Html_Node.t
  constraint 'a = [> [> `callbag ] Html_Node.custom ]
val make :
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
  [< _ Html_Node.content ] Html_Node.t Callbag.t ->
  [> [> `callbag ] Html_Node.custom ] t
val jsx :
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
  ?callbag:[< _ Html_Node.content ] Html_Node.t Callbag.t ->
  unit -> [> [> `callbag ] Html_Node.custom ] t
