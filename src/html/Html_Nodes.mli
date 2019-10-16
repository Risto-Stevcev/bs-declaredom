(**
 HTML Elements
 
 Includes nodes like text nodes and fragments.

 See the {{: https://html.spec.whatwg.org/multipage/indices.html#elements-3} full element table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#index-elements} W3C}) 
 and the {{: https://html.spec.whatwg.org/multipage/indices.html#events-2} events table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#events-table} W3C})
 for reference.
 *)

module A :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element} The A Element} 
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-a} W3C}) 
     ({{: https://www.w3.org/TR/wai-aria-1.1/#link} aria})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.a ]
    type +'a child =
      [ 'a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.interactive
      | 'a Html_Node.palpable | Html_Node.other ] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.link
            | Html_Attributes.Aria.button
            | Html_Attributes.Aria.checkbox
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.switch
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.treeitem
            ] Html_Attributes.Aria.t ->
      ?href:string ->
      ?target:Html_Attributes.Target.t ->
      ?download:unit ->
      ?rel:Html_Attributes.LinkType.Hyperlink.t ->
      ?rev:Html_Attributes.LinkType.Hyperlink.t ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'a child array -> [> Html_Node.a ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.link
            | Html_Attributes.Aria.button
            | Html_Attributes.Aria.checkbox
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.switch
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.treeitem
            ] Html_Attributes.Aria.t ->
      ?href:string ->
      ?target:Html_Attributes.Target.t ->
      ?download:unit ->
      ?rel:Html_Attributes.LinkType.Hyperlink.t ->
      ?rev:Html_Attributes.LinkType.Hyperlink.t ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.a ] Html_Node.t
  end
module Abbr :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element} The Abbr Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-abbr} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.abbr ]

    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.abbr ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.abbr ] Html_Node.t
  end
module Address :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-address-element} The Address Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-address} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.address ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.group Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.address ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.group Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.address ] Html_Node.t
  end
module Area :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element} The Area Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-area} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.area ]
    module Attributes :
      sig
        type shape = [ `circle | `poly | `rect ]
      end
    val make :
      ?alt:string ->
      ?coords:int Belt.List.t ->
      ?download:unit ->
      ?href:string ->
      ?hreflang:string ->
      ?rel:Html_Attributes.LinkType.Hyperlink.t ->
      ?shape:Attributes.shape ->
      ?target:Html_Attributes.Target.t ->
      ?_type:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
      ?aria:Html_Attributes.Aria.link Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> unit -> [> Html_Node.area ] Html_Node.t
    val jsx :
      ?alt:string ->
      ?coords:int Belt.List.t ->
      ?download:unit ->
      ?href:string ->
      ?hreflang:string ->
      ?rel:Html_Attributes.LinkType.Hyperlink.t ->
      ?shape:Attributes.shape ->
      ?target:Html_Attributes.Target.t ->
      ?_type:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
      ?aria:Html_Attributes.Aria.link Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?children:'a -> unit -> [> Html_Node.area ] Html_Node.t
  end
module Article :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-article-element} The Article Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-article} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.article ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.article
            | Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.feed
            | Html_Attributes.Aria.main
            | Html_Attributes.Aria.region
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.article ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.article
            | Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.feed
            | Html_Attributes.Aria.main
            | Html_Attributes.Aria.region
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.article ] Html_Node.t
  end
module Aside :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-aside-element} The Aside Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-aside} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.aside ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.complementary
            | Html_Attributes.Aria.feed
            | Html_Attributes.Aria.note
            | Html_Attributes.Aria.search
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.aside ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.complementary
            | Html_Attributes.Aria.feed
            | Html_Attributes.Aria.note
            | Html_Attributes.Aria.search
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.aside ] Html_Node.t
  end
module Audio :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/media.html#the-audio-element} The Audio Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-audio} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.audio ]
    type +'a child =
      [ Html_Node.source | 'a Html_Node.flow | 'a Html_Node.phrasing
      | Html_Node.interactive | Html_Node.embedded | Html_Node.other ] Html_Node.t

    val make :
      ?src:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?preload:Html_Attributes.Preload.t ->
      ?autoplay:unit ->
      ?loop:unit ->
      ?muted:unit ->
      ?controls:unit ->
      ?aria:Html_Attributes.Aria.application Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_load:(Dom.event -> unit) ->
      ?on_loadend:(Dom.event -> unit) ->
      ?on_securitypolicyviolation:(Dom.event -> unit) ->
      ?on_abort:(Dom.progressEvent -> unit) ->
      ?on_canplay:(Dom.event -> unit) ->
      ?on_canplaythrough:(Dom.event -> unit) ->
      ?on_cuechange:(Dom.event -> unit) ->
      ?on_durationchange:(Dom.event -> unit) ->
      ?on_emptied:(Dom.event -> unit) ->
      ?on_ended:(Dom.event -> unit) ->
      ?on_error:(Dom.progressEvent -> unit) ->
      ?on_loadedmetadata:(Dom.event -> unit) ->
      ?on_loadeddata:(Dom.event -> unit) ->
      ?on_loadstart:(Dom.progressEvent -> unit) ->
      ?on_pause:(Dom.event -> unit) ->
      ?on_play:(Dom.event -> unit) ->
      ?on_playing:(Dom.event -> unit) ->
      ?on_progress:(Dom.progressEvent -> unit) ->
      ?on_ratechange:(Dom.event -> unit) ->
      ?on_resize:(Dom.event -> unit) ->
      ?on_seeked:(Dom.event -> unit) ->
      ?on_seeking:(Dom.event -> unit) ->
      ?on_suspend:(Dom.progressEvent -> unit) ->
      ?on_stalled:(Dom.progressEvent -> unit) ->
      ?on_timeupdate:(Dom.event -> unit) ->
      ?on_volumechange:(Dom.event -> unit) ->
      ?on_waiting:(Dom.event -> unit) ->
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
      'a child array -> [> Html_Node.audio ] Html_Node.t
    val jsx :
      ?src:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?preload:Html_Attributes.Preload.t ->
      ?autoplay:unit ->
      ?loop:unit ->
      ?muted:unit ->
      ?controls:unit ->
      ?aria:Html_Attributes.Aria.application Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_loadstart:(Dom.progressEvent -> unit) ->
      ?on_progress:(Dom.progressEvent -> unit) ->
      ?on_suspend:(Dom.progressEvent -> unit) ->
      ?on_abort:(Dom.progressEvent -> unit) ->
      ?on_error:(Dom.progressEvent -> unit) ->
      ?on_emptied:(Dom.event -> unit) ->
      ?on_stalled:(Dom.progressEvent -> unit) ->
      ?on_loadedmetadata:(Dom.event -> unit) ->
      ?on_loadeddata:(Dom.event -> unit) ->
      ?on_canplay:(Dom.event -> unit) ->
      ?on_canplaythrough:(Dom.event -> unit) ->
      ?on_playing:(Dom.event -> unit) ->
      ?on_waiting:(Dom.event -> unit) ->
      ?on_seeking:(Dom.event -> unit) ->
      ?on_seeked:(Dom.event -> unit) ->
      ?on_ended:(Dom.event -> unit) ->
      ?on_durationchange:(Dom.event -> unit) ->
      ?on_timeupdate:(Dom.event -> unit) ->
      ?on_play:(Dom.event -> unit) ->
      ?on_pause:(Dom.event -> unit) ->
      ?on_ratechange:(Dom.event -> unit) ->
      ?on_resize:(Dom.event -> unit) ->
      ?on_volumechange:(Dom.event -> unit) ->
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
      ?children:'a child Js.List.t -> unit -> [> Html_Node.audio ] Html_Node.t
  end
module B :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-b-element} The B Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-b} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.b ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.b ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.b ] Html_Node.t
  end
module Base :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-base-element} The Base Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-base} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.base ]

    val make :
      ?href:string ->
      ?target:Html_Attributes.Target.t ->
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> unit -> [> Html_Node.base ] Html_Node.t
    val jsx :
      ?href:string ->
      ?target:Html_Attributes.Target.t ->
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?children:'a -> unit -> [> Html_Node.base ] Html_Node.t
  end
module Bdi :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdi-element} The Bdi Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdi} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.bdi ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.bdi ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.bdi ] Html_Node.t
  end
module Bdo :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdo-element} The Bdo Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdo} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.bdo ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.bdo ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.bdo ] Html_Node.t
  end
module Blockquote :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-blockquote-element} The Blockquote Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-blockquote} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.blockquote ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?cite:string ->
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.blockquote ] Html_Node.t
    val jsx :
      ?cite:string ->
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.blockquote ] Html_Node.t
  end
module Body :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-body-element} The Body Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-body} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.body ]

    type +'a children = ['a Html_Node.flow | Html_Node.other]
    type +'a child = 'a children Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.document Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_afterprint:(Dom.event -> unit) ->
      ?on_beforeprint:(Dom.event -> unit) ->
      ?on_beforeunload:(Dom.event -> unit) ->
      ?on_hashchange:(Dom.event -> unit) ->
      ?on_languagechange:(Dom.event -> unit) ->
      ?on_message:(Dom.event -> unit) ->
      ?on_messageerror:(Dom.event -> unit) ->
      ?on_offline:(Dom.event -> unit) ->
      ?on_online:(Dom.event -> unit) ->
      ?on_pagehide:(Dom.event -> unit) ->
      ?on_pageshow:(Dom.event -> unit) ->
      ?on_popstate:(Dom.event -> unit) ->
      ?on_resize:(Dom.event -> unit) ->
      ?on_rejectionhandled:(Dom.event -> unit) ->
      ?on_storage:(Dom.event -> unit) ->
      ?on_unhandledrejection:(Dom.event -> unit) ->
      ?on_unload:(Dom.event -> unit) ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.body ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.document Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_afterprint:(Dom.event -> unit) ->
      ?on_beforeprint:(Dom.event -> unit) ->
      ?on_beforeunload:(Dom.event -> unit) ->
      ?on_hashchange:(Dom.event -> unit) ->
      ?on_languagechange:(Dom.event -> unit) ->
      ?on_message:(Dom.event -> unit) ->
      ?on_messageerror:(Dom.event -> unit) ->
      ?on_offline:(Dom.event -> unit) ->
      ?on_online:(Dom.event -> unit) ->
      ?on_pagehide:(Dom.event -> unit) ->
      ?on_pageshow:(Dom.event -> unit) ->
      ?on_popstate:(Dom.event -> unit) ->
      ?on_resize:(Dom.event -> unit) ->
      ?on_rejectionhandled:(Dom.event -> unit) ->
      ?on_storage:(Dom.event -> unit) ->
      ?on_unhandledrejection:(Dom.event -> unit) ->
      ?on_unload:(Dom.event -> unit) ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.body ] Html_Node.t
  end
module Br :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-br-element} The Br Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-br} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.br ]
    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      unit -> [> Html_Node.br ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?hidden:unit ->
      ?id:string ->
      ?lang:string ->
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?children:'b -> unit -> [> Html_Node.br ] Html_Node.t
  end
module Button :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-button-element} The Button Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-button} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.button ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    module Attributes :
      sig
        type _type = [ `button | `reset | `submit ]
      end
    val make :
      ?aria:[< Html_Attributes.Aria.link
            | Html_Attributes.Aria.button
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.switch
            ] Html_Attributes.Aria.t ->
      ?autofocus:unit ->
      ?disabled:unit ->
      ?form:string ->
      ?formaction:string ->
      ?formenctype:Html_Attributes.Form.Enctype.t ->
      ?formmethod:Html_Attributes.Form.Method.t ->
      ?formnovalidate:unit ->
      ?formtarget:Html_Attributes.Target.t ->
      ?formelements:string ->
      ?name:string ->
      ?_type:Attributes._type ->
      ?value:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      'a child array -> [> Html_Node.button ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.link
            | Html_Attributes.Aria.button
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.switch
            ] Html_Attributes.Aria.t ->
      ?autofocus:unit ->
      ?disabled:unit ->
      ?form:string ->
      ?formaction:string ->
      ?formenctype:Html_Attributes.Form.Enctype.t ->
      ?formmethod:Html_Attributes.Form.Method.t ->
      ?formnovalidate:unit ->
      ?formtarget:Html_Attributes.Target.t ->
      ?formelements:string ->
      ?name:string ->
      ?_type:Attributes._type ->
      ?value:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.button ] Html_Node.t
  end
module Canvas :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/canvas.html#the-canvas-element} The Canvas Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-canvas} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.canvas ]
    type +'a child =
      [ 'a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.embedded
      | 'a Html_Node.palpable | Html_Node.other
      ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?height:int ->
      ?width:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.canvas ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?height:int ->
      ?width:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.canvas ] Html_Node.t
  end
module Caption :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-caption-element} The Caption Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-caption} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.caption ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_caption Css_Style.t ->
      ?css_module:Css_Property.table_caption Css_Module.t ->
      'a child array -> [> Html_Node.caption ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_caption Css_Style.t ->
      ?css_module:Css_Property.table_caption Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.caption ] Html_Node.t
  end
module Cite :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-cite-element} The Cite Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-cite} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.cite ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.cite ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.cite ] Html_Node.t
  end
module Code :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-code-element} The Code Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-code} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.code ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.code ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.code ] Html_Node.t
  end
module Col :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-col-element} The Col Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-col} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.col ]
    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      unit -> [> Html_Node.col ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a -> unit -> [> Html_Node.col ] Html_Node.t
  end
module Colgroup :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-colgroup-element} The Colgroup Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-colgroup} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.colgroup ]
    type child =
      [Html_Node.col | Html_Node.template | Html_Node.fragment] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?span:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_column_group Css_Style.t ->
      ?css_module:Css_Property.table_column_group Css_Module.t ->
      child array -> [> Html_Node.colgroup ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?span:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_column_group Css_Style.t ->
      ?css_module:Css_Property.table_column_group Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.colgroup ] Html_Node.t
  end
module Data :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-data-element} The Data Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-data} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.data ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?value:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.data ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?value:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.data ] Html_Node.t
  end
module Datalist :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element} The Datalist Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-datalist} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.datalist ]
    type +'a child =
      [ 'a Html_Node.phrasing | Html_Node.option
      | Html_Node.Element.script_supporting | Html_Node.other ] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.listbox Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      'a child array -> [> Html_Node.datalist ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.listbox Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?children:'a child Js.List.t -> unit -> [> Html_Node.datalist ] Html_Node.t
  end
module Dd :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dd-element} The Dd Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dd} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.dd ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.dd ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.dd ] Html_Node.t
  end
module Del :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/edits.html#the-del-element} The Del Element}
     ({{: https://www.w3.org/TR/html52/edits.html#elementdef-del} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.del ]
    type +'a child =
      ['a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?cite:string ->
      ?datetime:Js.Date.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.del ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?cite:string ->
      ?datetime:Js.Date.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.del ] Html_Node.t
  end
module Details :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-details-element} The Details Element}
     ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-details} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.details ]
    type +'a child = ['a Html_Node.flow | Html_Node.summary | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.group Html_Attributes.Aria.t ->
      ?_open:unit ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.details ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.group Html_Attributes.Aria.t ->
      ?_open:unit ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.details ] Html_Node.t
  end
module Dfn :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-dfn-element} The Dfn Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-dfn} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.dfn ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.dfn ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.dfn ] Html_Node.t
  end
module Dialog :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-dialog-element} The Dialog Element}
     ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-dialog} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.dialog ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.dialog
            | Html_Attributes.Aria.alertdialog
            ] Html_Attributes.Aria.t ->
      ?_open:unit ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.dialog ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.dialog
            | Html_Attributes.Aria.alertdialog
            ] Html_Attributes.Aria.t ->
      ?_open:unit ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.dialog ] Html_Node.t
  end
module Div :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element} The Div Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-div} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.div ]

    type +'a children = ['a Html_Node.flow | Html_Node.other]
    type +'a child = 'a children Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.div ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.div ] Html_Node.t
  end
module Dl :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element} The Dl Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dl} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.dl ]
    type child =
      [ Html_Node.dd | Html_Node.dt | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.list
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      child array -> [> Html_Node.dl ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.list
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.dl ] Html_Node.t
  end
module Dt :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dt-element} The Dt Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dt} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.dt ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.dt ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.dt ] Html_Node.t
  end
module Em :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-em-element} The Em Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-em} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.em ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.em ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.em ] Html_Node.t
  end
module Embed :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-embed-element} The Embed Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-embed} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.embed ]

    val make :
      ?aria:[< Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.img
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?src:string ->
      ?_type:string ->
      ?width:int ->
      ?height:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.replaced_inline Css_Style.t ->
      ?css_module:Css_Property.replaced_inline Css_Module.t ->
      unit -> [> Html_Node.embed ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.img
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?src:string ->
      ?_type:string ->
      ?width:int ->
      ?height:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.replaced_inline Css_Style.t ->
      ?css_module:Css_Property.replaced_inline Css_Module.t ->
      ?children:'a -> unit -> [> Html_Node.embed ] Html_Node.t
  end
module Fieldset :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element} The Fieldset Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-fieldset} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.fieldset ]
    type +'a child =
      ['a Html_Node.flow | Html_Node.legend | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?form:string ->
      ?name:string ->
      ?disabled:unit ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.fieldset ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?form:string ->
      ?name:string ->
      ?disabled:unit ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.fieldset ] Html_Node.t
  end
module Figcaption :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-figcaption-element} The Figcaption Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-figcaption} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.figcaption ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.figcaption ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.figcaption ] Html_Node.t
  end
module Figure :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element} The Figure Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-figure} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.figure ]
    type +'a child =
      ['a Html_Node.flow | Html_Node.figcaption | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.figure
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.figure ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.figure
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.figure ] Html_Node.t
  end
module Footer :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-footer-element} The Footer Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-footer} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.footer ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.contentinfo
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.footer ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.contentinfo
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.footer ] Html_Node.t
  end
module Form :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/forms.html#the-form-element} The Form Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-form} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.form ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    module Attributes :
      sig
        type autocomplete = [ `on | `off ]  
      end

    val make :
      ?aria:[< Html_Attributes.Aria.form
            | Html_Attributes.Aria.search
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?accept_charset:string ->
      ?action:string ->
      ?autocomplete:Attributes.autocomplete ->
      ?enctype:Html_Attributes.Form.Enctype.t ->
      ?_method:Html_Attributes.Form.Method.t ->
      ?name:string ->
      ?novalidate:unit ->
      ?target:Html_Attributes.Target.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.form ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.form
            | Html_Attributes.Aria.search
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?accept_charset:string ->
      ?action:string ->
      ?autocomplete:Attributes.autocomplete ->
      ?enctype:Html_Attributes.Form.Enctype.t ->
      ?_method:Html_Attributes.Form.Method.t ->
      ?name:string ->
      ?novalidate:unit ->
      ?target:Html_Attributes.Target.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.form ] Html_Node.t
  end
module H1 :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H1 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h1} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.h1 ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.h1 ] t
    val jsx :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.h1 ] t
  end
module H2 :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H2 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h2} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.h2 ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.h2 ] t
    val jsx :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.h2 ] t
  end
module H3 :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H3 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h3} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.h3 ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.h3 ] t
    val jsx :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.h3 ] t
  end
module H4 :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H4 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h4} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.h4 ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.h4 ] t
    val jsx :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.h4 ] t
  end
module H5 :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H5 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h5} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.h5 ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.h5 ] t
    val jsx :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.h5 ] t
  end
module H6 :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H6 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h6} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.h6 ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.h6 ] t
    val jsx :
      ?aria:[< Html_Attributes.Aria.heading
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.h6 ] t
  end
module Head :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-head-element} The Head Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-head} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.head ]
    type child = [ Html_Node.metadata | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      child array -> [> Html_Node.head ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?children:child Js.List.t -> unit -> [> Html_Node.head ] Html_Node.t
  end
module Header :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-header-element} The Header Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-header} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.header ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.banner
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.header ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.banner
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.header ] Html_Node.t
  end
module Hgroup :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-hgroup-element} The Hgroup Element}
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.hgroup ]
    type child =
      [ Html_Node.headings | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      child array -> [> Html_Node.hgroup ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.hgroup ] Html_Node.t
  end
module Hr :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-hr-element} The Hr Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-hr} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.hr ]
    val make :
      ?aria:[< Html_Attributes.Aria.separator
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      unit -> [> Html_Node.hr ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.separator
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a -> unit -> [> Html_Node.hr ] Html_Node.t
  end
module Html :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-html-element} The Html Element}
     ({{: https://www.w3.org/TR/html52/semantics.html#elementdef-html} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.html ]
    type child = [Html_Node.head | Html_Node.body | Html_Node.fragment] Html_Node.t

    val make :
      ?manifest:string ->
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      child array -> [> Html_Node.html ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?manifest:string ->
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
      ?slot:string ->
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
      ?children:child Js.List.t -> unit -> [> Html_Node.html ] Html_Node.t
  end
module I :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-i-element} The I Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-i} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.i ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.i ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.i ] Html_Node.t
  end
module Iframe :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-iframe-element} The Iframe Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-iframe} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.iframe ]
    module Attributes :
      sig
        type sandbox =
            [ `allow_forms
            | `allow_modals
            | `allow_orientation_lock
            | `allow_pointer_lock
            | `allow_popups
            | `allow_popups_to_escape_sandbox
            | `allow_presentation
            | `allow_same_origin
            | `allow_scripts
            | `allow_top_navigation
            | `allow_top_navigation_by_user_activation ]
      end
    val make :
      ?aria:[< Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.img
            ] Html_Attributes.Aria.t ->
      ?src:string ->
      ?srcdoc:string ->
      ?name:string ->
      ?sandbox:Attributes.sandbox ->
      ?allow:string ->
      ?allowfullscreen:unit ->
      ?allowpaymentrequest:unit ->
      ?width:int ->
      ?height:int ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.replaced_inline Css_Style.t ->
      ?css_module:Css_Property.replaced_inline Css_Module.t ->
      unit -> [> Html_Node.iframe ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.img
            ] Html_Attributes.Aria.t ->
      ?src:string ->
      ?srcdoc:string ->
      ?name:string ->
      ?sandbox:Attributes.sandbox ->
      ?allow:string ->
      ?allowfullscreen:unit ->
      ?allowpaymentrequest:unit ->
      ?width:int ->
      ?height:int ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.replaced_inline Css_Style.t ->
      ?css_module:Css_Property.replaced_inline Css_Module.t ->
      ?children:'a -> unit -> [> Html_Node.iframe ] Html_Node.t
  end
module Img :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-img-element} The Img Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-img} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.img ]
    module Attributes :
      sig
        type decoding = [ `async | `auto | `sync ]
      end
    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?alt:string ->
      ?src:string ->
      ?srcset:string ->
      ?sizes:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?usemap:string ->
      ?ismap:unit ->
      ?width:int ->
      ?height:int ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
      ?decoding:Attributes.decoding ->
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
      ?slot:string ->
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
      ?style:Css_Property.replaced_inline Css_Style.t ->
      ?css_module:Css_Property.replaced_inline Css_Module.t ->
      unit -> [> Html_Node.img ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?alt:string ->
      ?src:string ->
      ?srcset:string ->
      ?sizes:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?usemap:string ->
      ?ismap:unit ->
      ?width:int ->
      ?height:int ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
      ?decoding:Attributes.decoding ->
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
      ?slot:string ->
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
      ?style:Css_Property.replaced_inline Css_Style.t ->
      ?css_module:Css_Property.replaced_inline Css_Module.t ->
      ?children:'b -> unit -> [> Html_Node.img ] Html_Node.t
  end
module Input :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/input.html#the-input-element} The Input Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-input} W3C})

     See also {{: https://www.w3.org/TR/html52/sec-forms.html#state-of-the-type-attribute} type attributes}
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.input ]
    module Attributes :
      sig
        type _type =
            [ `button
            | `checkbox
            | `color
            | `date
            | `datetime_local
            | `email
            | `file
            | `hidden
            | `image
            | `month
            | `number
            | `password
            | `radio
            | `range
            | `reset
            | `search
            | `submit
            | `tel
            | `text
            | `time
            | `url
            | `week ]
        type step = [ `any | `step_value of float ]
      end
    val make :
      ?aria:[< Html_Attributes.Aria.textbox
            | Html_Attributes.Aria.searchbox
            | Html_Attributes.Aria.combobox
            | Html_Attributes.Aria.spinbutton
            | Html_Attributes.Aria.slider
            | Html_Attributes.Aria.checkbox
            | Html_Attributes.Aria.option
            | Html_Attributes.Aria.switch
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.button
            | Html_Attributes.Aria.link
            ] Html_Attributes.Aria.t ->
      ?accept:string ->
      ?alt:string ->
      ?autocomplete:Html_Attributes.AutoComplete.t ->
      ?autofocus:unit ->
      ?checked:unit ->
      ?dirname:Html_Attributes.Dirname.t ->
      ?disabled:unit ->
      ?form:string ->
      ?formaction:string ->
      ?formenctype:Html_Attributes.Form.Enctype.t ->
      ?formmethod:Html_Attributes.Form.Method.t ->
      ?formnovalidate:unit ->
      ?formtarget:Html_Attributes.Target.t ->
      ?height:int ->
      ?list:string ->
      ?max:string ->
      ?maxlength:int ->
      ?min:string ->
      ?minlength:int ->
      ?multiple:unit ->
      ?name:string ->
      ?pattern:Js.Re.t ->
      ?placeholder:string ->
      ?readonly:unit ->
      ?required:unit ->
      ?size:int ->
      ?src:string ->
      ?step:Attributes.step ->
      ?_type:Attributes._type ->
      ?value:'a ->
      ?width:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      unit -> [> Html_Node.input ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.textbox
            | Html_Attributes.Aria.searchbox
            | Html_Attributes.Aria.combobox
            | Html_Attributes.Aria.spinbutton
            | Html_Attributes.Aria.slider
            | Html_Attributes.Aria.checkbox
            | Html_Attributes.Aria.option
            | Html_Attributes.Aria.switch
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.button
            | Html_Attributes.Aria.link
            ] Html_Attributes.Aria.t ->
      ?accept:string ->
      ?alt:string ->
      ?autocomplete:Html_Attributes.AutoComplete.t ->
      ?autofocus:unit ->
      ?checked:unit ->
      ?dirname:Html_Attributes.Dirname.t ->
      ?disabled:unit ->
      ?form:string ->
      ?formaction:string ->
      ?formenctype:Html_Attributes.Form.Enctype.t ->
      ?formmethod:Html_Attributes.Form.Method.t ->
      ?formnovalidate:unit ->
      ?formtarget:Html_Attributes.Target.t ->
      ?height:int ->
      ?list:string ->
      ?max:string ->
      ?maxlength:int ->
      ?min:string ->
      ?minlength:int ->
      ?multiple:unit ->
      ?name:string ->
      ?pattern:Js.Re.t ->
      ?placeholder:string ->
      ?readonly:unit ->
      ?required:unit ->
      ?size:int ->
      ?src:string ->
      ?step:Attributes.step ->
      ?_type:Attributes._type ->
      ?value:'a ->
      ?width:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b -> unit -> [> Html_Node.input ] Html_Node.t
  end
module Ins :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/edits.html#the-ins-element} The Ins Element}
     ({{: https://www.w3.org/TR/html52/edits.html#elementdef-ins} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.ins ]
    type +'a child =
      [ 'a Html_Node.flow | 'a Html_Node.phrasing
      | 'a Html_Node.palpable | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?cite:string ->
      ?datetime:Js.Date.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.ins ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?cite:string ->
      ?datetime:Js.Date.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.ins ] Html_Node.t
  end
module Kbd :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-kbd-element} The Kbd Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-kbd} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.kbd ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.kbd ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.kbd ] Html_Node.t
  end
module Label :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/forms.html#the-label-element} The Label Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-label} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.label ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?_for:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.label ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?_for:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.label ] Html_Node.t
  end
module Legend :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-legend-element} The Legend Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-legend} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.legend ]
    type +'a child =
      ['a Html_Node.phrasing | Html_Node.headings | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.legend ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.legend ] Html_Node.t
  end
module Li :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-li-element} The Li Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-li} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.li ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.listitem
            | Html_Attributes.Aria.option
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.separator
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.treeitem
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.li ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.listitem
            | Html_Attributes.Aria.option
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.radio
            | Html_Attributes.Aria.separator
            | Html_Attributes.Aria.tab
            | Html_Attributes.Aria.treeitem
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.li ] Html_Node.t
  end
module Link :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-link-element} The Link Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-link} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.link ]

    val make :
      ?href:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?rel:Html_Attributes.LinkType.t ->
      ?media:Css_Media.t ->
      ?integrity:string ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
      ?sizes:string ->
      ?_as:string ->
      ?color:Css_Value.Color.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      unit -> [> Html_Node.link ] Html_Node.t
    val jsx :
      ?href:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?rel:Html_Attributes.LinkType.t ->
      ?media:Css_Media.t ->
      ?integrity:string ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
      ?sizes:string ->
      ?_as:string ->
      ?color:Css_Value.Color.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?children:'a -> unit -> [> Html_Node.link ] Html_Node.t
  end
module Main :
  sig
    (**
     {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-main} The Main Element}
     ({{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-main-element} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.main ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.main
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.main ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.main
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.main ] Html_Node.t
  end
module Map :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/image-maps.html#the-map-element} The Map Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-map} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.map ]
    type +'a child =
      [ 'a Html_Node.flow | 'a Html_Node.phrasing
      | 'a Html_Node.palpable | Html_Node.other ] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?name:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'a child array -> [> Html_Node.map ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?name:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.map ] Html_Node.t
  end
module Mark :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-mark-element} The Mark Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-mark} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.mark ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.mark ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.mark ] Html_Node.t
  end
module Meta :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-meta-element} The Meta Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-meta} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.meta ]
    module Attributes :
      sig
        type http_equiv =
            [ `content_language
            | `content_security_policy
            | `content_type
            | `default_style
            | `refresh
            | `set_cookie
            | `x_ua_compatible ]
      end
    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?name:string ->
      ?http_equiv:Attributes.http_equiv ->
      ?content:string ->
      ?charset:string ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> unit -> [> Html_Node.meta ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?name:string ->
      ?http_equiv:Attributes.http_equiv ->
      ?content:string ->
      ?charset:string ->
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
      ?slot:string ->
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
      ?children:'a -> unit -> [> Html_Node.meta ] Html_Node.t
  end
module Meter :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-meter-element} The Meter Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-meter} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.meter ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?value:float ->
      ?min:float ->
      ?max:float ->
      ?low:float ->
      ?high:float ->
      ?optimum:float ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      'a child array -> [> Html_Node.meter ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?value:float ->
      ?min:float ->
      ?max:float ->
      ?low:float ->
      ?high:float ->
      ?optimum:float ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.meter ] Html_Node.t
  end
module Nav :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-nav-element} The Nav Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-nav} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.nav ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.navigation Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      'a child array -> [> Html_Node.nav ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.navigation Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.nav ] Html_Node.t
  end
module Noscript :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-noscript-element} The Noscript Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-noscript} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.noscript ]
    type +'a child =
      [ Html_Node.metadata | 'a Html_Node.flow
      | 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      'a child array -> [> Html_Node.noscript ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?children:'a child Js.List.t -> unit -> [> Html_Node.noscript ] Html_Node.t
  end
module Object :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-object-element} The Object Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-object} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.object_ ]
    type +'a child =
      [ Html_Node.param | 'a Html_Node.flow | 'a Html_Node.phrasing
      | Html_Node.embedded | Html_Node.interactive | Html_Node.Element.listed
      | Html_Node.Element.submittable | 'a Html_Node.palpable | Html_Node.other
      ] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.img
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?data:string ->
      ?_type:string ->
      ?typemustmatch:unit ->
      ?name:string ->
      ?usemap:string ->
      ?form:string ->
      ?width:int ->
      ?height:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'a child array -> [> Html_Node.object_ ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.application
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.img
            | Html_Attributes.Aria.presentation
            ] Html_Attributes.Aria.t ->
      ?data:string ->
      ?_type:string ->
      ?typemustmatch:unit ->
      ?name:string ->
      ?usemap:string ->
      ?form:string ->
      ?width:int ->
      ?height:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.object_ ] Html_Node.t
  end
module Ol :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-ol-element} The Ol Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-ol} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.ol ]
    type +'a child =
      [ Html_Node.li | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    module Attributes :
      sig
        type _type =
            [ `decimal
            | `lower_alpha
            | `lower_roman
            | `upper_alpha
            | `upper_roman ]
      end
    val make :
      ?aria:[< Html_Attributes.Aria.list
            | Html_Attributes.Aria.directory
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.listbox
            | Html_Attributes.Aria.menubar
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.radiogroup
            | Html_Attributes.Aria.tablist
            | Html_Attributes.Aria.toolbar
            | Html_Attributes.Aria.tree
            ] Html_Attributes.Aria.t ->
      ?reversed:unit ->
      ?start:int ->
      ?_type:Attributes._type ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.ol ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.list
            | Html_Attributes.Aria.directory
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.listbox
            | Html_Attributes.Aria.menubar
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.radiogroup
            | Html_Attributes.Aria.tablist
            | Html_Attributes.Aria.toolbar
            | Html_Attributes.Aria.tree
            ] Html_Attributes.Aria.t ->
      ?reversed:unit ->
      ?start:int ->
      ?_type:Attributes._type ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.ol ] Html_Node.t
  end
module Optgroup :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-optgroup-element} The Optgroup Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-optgroup} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.optgroup ]
    type +'a child =
      [ Html_Node.option | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?disabled:unit ->
      label:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.optgroup ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?disabled:unit ->
      label:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.optgroup ] Html_Node.t
  end
module Option :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element} The Option Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-option} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.option ]
    type 'a child = Html_Node.other Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.option
            | Html_Attributes.Aria.separator
            ] Html_Attributes.Aria.t ->
      ?disabled:unit ->
      ?label:string ->
      ?selected:unit ->
      ?value:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.option ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.option
            | Html_Attributes.Aria.separator
            ] Html_Attributes.Aria.t ->
      ?disabled:unit ->
      ?label:string ->
      ?selected:unit ->
      ?value:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.option ] Html_Node.t
  end
module Output :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-output-element} The Output Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-output} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.output ]
    type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?_for:string ->
      ?form:string ->
      ?name:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.output ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?_for:string ->
      ?form:string ->
      ?name:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.output ] Html_Node.t
  end
module P :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-p-element} The P Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-p} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.p ]
    type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.p ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.p ] Html_Node.t
  end
module Param :
  sig
    (**
     {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-param} The Param Element}
     ({{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-param-element} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.param ]

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?name:string ->
      ?value:string ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> unit -> [> Html_Node.param ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?name:string ->
      ?value:string ->
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
      ?slot:string ->
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
      ?children:'a -> unit -> [> Html_Node.param ] Html_Node.t
  end
module Picture :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-picture-element} The Picture Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-picture} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.picture ]
    type +'a child =
      [ Html_Node.img | Html_Node.source
      | Html_Node.Element.script_supporting | Html_Node.fragment ] Html_Node.t

    val make :
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'a child array -> [> Html_Node.picture ] Html_Node.t
    val jsx :
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.picture ] Html_Node.t
  end
module Pre :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-pre-element} The Pre Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-pre} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.pre ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'b child array -> [> Html_Node.pre ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.pre ] Html_Node.t
  end
module Progress :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-progress-element} The Progress Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-progress} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.progress ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.progressbar Html_Attributes.Aria.t ->
      ?value:float ->
      ?max:float ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      'a child array -> [> Html_Node.progress ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.progressbar Html_Attributes.Aria.t ->
      ?value:float ->
      ?max:float ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.progress ] Html_Node.t
  end
module Q :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-q-element} The Q Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-q} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.q ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?cite:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.q ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?cite:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.q ] Html_Node.t
  end
module Rb :
  sig
    (**
     {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rb} The Rb Element}
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.rb ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby_base Css_Style.t ->
      ?css_module:Css_Property.ruby_base Css_Module.t ->
      'b child array -> [> Html_Node.rb ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby_base Css_Style.t ->
      ?css_module:Css_Property.ruby_base Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.rb ] Html_Node.t
  end
module Rp :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rp-element} The Rp Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rp} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.rp ]
    type child = Html_Node.other Html_Node.t
    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> child array -> [> Html_Node.rp ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?children:child Js.List.t -> unit -> [> Html_Node.rp ] Html_Node.t
  end
module Rt :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rt-element} The Rt Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rt} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.rt ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby_text Css_Style.t ->
      ?css_module:Css_Property.ruby_text Css_Module.t ->
      'b child array -> [> Html_Node.rt ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby_text Css_Style.t ->
      ?css_module:Css_Property.ruby_text Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.rt ] Html_Node.t
  end
module Rtc :
  sig
    (**
     {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rtc} The Rtc Element}
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.rtc ]
    type +'a child =
      [ 'a Html_Node.phrasing | Html_Node.rt | Html_Node.rp
      | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby_text_container Css_Style.t ->
      ?css_module:Css_Property.ruby_text_container Css_Module.t ->
      'b child array -> [> Html_Node.rtc ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby_text_container Css_Style.t ->
      ?css_module:Css_Property.ruby_text_container Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.rtc ] Html_Node.t
  end
module Ruby :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element} The Ruby Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-ruby} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.ruby ]
    type +'a child =
      [ 'a Html_Node.phrasing | Html_Node.rp | Html_Node.rt | Html_Node.rb
      | Html_Node.rtc | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby Css_Style.t ->
      ?css_module:Css_Property.ruby Css_Module.t ->
      'b child array -> [> Html_Node.ruby ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.ruby Css_Style.t ->
      ?css_module:Css_Property.ruby Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.ruby ] Html_Node.t
  end
module S :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-s-element} The S Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-s} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.s ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.s ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.s ] Html_Node.t
  end
module Samp :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-samp-element} The Samp Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-samp} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.samp ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.samp ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.samp ] Html_Node.t
  end
module Script :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-script-element} The Script Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-script} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.script ]

    val make :
      ?src:string ->
      ?_type:string ->
      ?nomodule:unit ->
      ?async:unit ->
      ?defer:unit ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?integrity:string ->
      ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> unit -> [> Html_Node.script ] Html_Node.t
    val jsx :
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
      ?slot:string ->
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
      ?children:'a -> unit -> [> Html_Node.script ] Html_Node.t
    module Inline :
      sig
        val make :
          ?_type:string ->
          ?nomodule:unit ->
          ?async:unit ->
          ?defer:unit ->
          ?crossorigin:Html_Attributes.CrossOrigin.t ->
          ?integrity:string ->
          ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
          ?slot:string ->
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
          ?on_scroll:(Dom.uiEvent -> unit) -> string -> [> Html_Node.script ] Html_Node.t
        val jsx :
          ?_type:string ->
          ?nomodule:unit ->
          ?async:unit ->
          ?defer:unit ->
          ?crossorigin:Html_Attributes.CrossOrigin.t ->
          ?integrity:string ->
          ?referrerpolicy:Html_Attributes.ReferrerPolicy.t ->
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
          ?slot:string ->
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
          ?children:string list -> unit -> [> Html_Node.script ] Html_Node.t
      end
  end
module Section :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-section-element} The Section Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-section} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.section ]
    type +'a children = ['a Html_Node.flow | Html_Node.other]
    type +'a child = 'a children Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.region
            | Html_Attributes.Aria.alert
            | Html_Attributes.Aria.alertdialog
            | Html_Attributes.Aria.application
            | Html_Attributes.Aria.contentinfo
            | Html_Attributes.Aria.dialog
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.feed
            | Html_Attributes.Aria.log
            | Html_Attributes.Aria.main
            | Html_Attributes.Aria.marquee
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.region
            | Html_Attributes.Aria.search
            | Html_Attributes.Aria.status
            | Html_Attributes.Aria.tabpanel
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      'a child array -> [> Html_Node.section ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.region
            | Html_Attributes.Aria.alert
            | Html_Attributes.Aria.alertdialog
            | Html_Attributes.Aria.application
            | Html_Attributes.Aria.contentinfo
            | Html_Attributes.Aria.dialog
            | Html_Attributes.Aria.document
            | Html_Attributes.Aria.feed
            | Html_Attributes.Aria.log
            | Html_Attributes.Aria.main
            | Html_Attributes.Aria.marquee
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.region
            | Html_Attributes.Aria.search
            | Html_Attributes.Aria.status
            | Html_Attributes.Aria.tabpanel
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.section ] Html_Node.t
  end
module Select :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-select-element} The Select Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-select} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.select ]
    type +'a child =
      [ Html_Node.option | Html_Node.optgroup
      | Html_Node.Element.script_supporting | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.combobox
            | Html_Attributes.Aria.listbox
            ] Html_Attributes.Aria.t ->
      ?autocomplete:Html_Attributes.AutoComplete.t ->
      ?autofocus:unit ->
      ?disabled:unit ->
      ?form:string ->
      ?multiple:unit ->
      ?name:string ->
      ?required:unit ->
      ?size:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      'a child array -> [> Html_Node.select ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.combobox
            | Html_Attributes.Aria.listbox
            ] Html_Attributes.Aria.t ->
      ?autocomplete:Html_Attributes.AutoComplete.t ->
      ?autofocus:unit ->
      ?disabled:unit ->
      ?form:string ->
      ?multiple:unit ->
      ?name:string ->
      ?required:unit ->
      ?size:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.select ] Html_Node.t
  end
module Slot :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-slot-element} The Slot Element}
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.slot ]
    type +'a child =
      ['a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?name:string ->
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
      'a child array -> [> Html_Node.slot ] Html_Node.t
    val jsx :
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
      ?children:'a child Js.List.t -> unit -> [> Html_Node.slot ] Html_Node.t
  end
module Small :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-small-element} The Small Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-small} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.small ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.small ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.small ] Html_Node.t
  end
module Source :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-source-element} The Source Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-source} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.source ]

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?src:string ->
      ?_type:string ->
      ?srcset:string ->
      ?sizes:string ->
      ?media:Css_Media.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      unit -> [> Html_Node.source ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?src:string ->
      ?_type:string ->
      ?srcset:string ->
      ?sizes:string ->
      ?media:Css_Media.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a -> unit -> [> Html_Node.source ] Html_Node.t
  end
module Span :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-span-element} The Span Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-span} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.span ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.span ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.span ] Html_Node.t
  end
module Strong :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-strong-element} The Strong Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-strong} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.strong ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.strong ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.strong ] Html_Node.t
  end
module Style :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-style-element} The Style Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-style} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.style ]

    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?media:Css_Media.t ->
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
      ?slot:string ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> string -> [> Html_Node.style ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?media:Css_Media.t ->
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
      ?slot:string ->
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
      ?children:string list -> unit -> [> Html_Node.style ] Html_Node.t
  end
module Sub :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements} The Sub Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-sub} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.sub ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.sub ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.sub ] Html_Node.t
  end
module Summary :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-summary-element} The Summary Element}
     ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-summary} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.summary ]
    type +'a child =
      ['a Html_Node.phrasing | Html_Node.headings | Html_Node.other] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.button Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'a child array -> [> Html_Node.summary ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.button Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.summary ] Html_Node.t
  end
module Sup :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements} The Sub Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-sup} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.sup ]
    type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.sup ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.sup ] Html_Node.t
  end
module Table :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-table-element} The Table Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-table} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.table ]
    type +'a child =
      [ Html_Node.caption | Html_Node.colgroup | Html_Node.thead | Html_Node.tbody
      | Html_Node.tr | Html_Node.tfoot | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table Css_Style.t ->
      ?css_module:Css_Property.table Css_Module.t ->
      'b child array -> [> Html_Node.table ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table Css_Style.t ->
      ?css_module:Css_Property.table Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.table ] Html_Node.t
  end
module Tbody :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-tbody-element} The Tbody Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-tbody} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.tbody ]
    type +'a child =
      [ Html_Node.tr | Html_Node.Element.script_supporting | Html_Node.fragment
      ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_row_group Css_Style.t ->
      ?css_module:Css_Property.table_row_group Css_Module.t ->
      'b child array -> [> Html_Node.tbody ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_row_group Css_Style.t ->
      ?css_module:Css_Property.table_row_group Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.tbody ] Html_Node.t
  end
module Td :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-td-element} The Td Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-td} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.td ]
    type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?colspan:int ->
      ?rowspan:int ->
      ?headers:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_cell Css_Style.t ->
      ?css_module:Css_Property.table_cell Css_Module.t ->
      'b child array -> [> Html_Node.td ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?colspan:int ->
      ?rowspan:int ->
      ?headers:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_cell Css_Style.t ->
      ?css_module:Css_Property.table_cell Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.td ] Html_Node.t
  end
module Template :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-template-element} The Template Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-template} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.template ]
    type +'a child = 'a Html_Node.content Html_Node.t

    val make :
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      'a child array -> [> Html_Node.template ] Html_Node.t
    val jsx :
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.template ] Html_Node.t
  end
module Textarea :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-textarea-element} The Textarea Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-textarea} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.textarea ]
    type child = Html_Node.other Html_Node.t
    module Attributes :
      sig
        type wrap = [ `hard | `soft ]
      end
    val make :
      ?aria:Html_Attributes.Aria.textbox Html_Attributes.Aria.t ->
      ?autocomplete:Html_Attributes.AutoComplete.t ->
      ?autofocus:unit ->
      ?cols:int ->
      ?dirname:Html_Attributes.Dirname.t ->
      ?disabled:unit ->
      ?form:string ->
      ?maxlength:int ->
      ?minlength:int ->
      ?name:string ->
      ?placeholder:string ->
      ?readonly:unit ->
      ?required:unit ->
      ?rows:int ->
      ?wrap:Attributes.wrap ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      child array -> [> Html_Node.textarea ] Html_Node.t
    val jsx :
      ?autocomplete:Html_Attributes.AutoComplete.t ->
      ?autofocus:unit ->
      ?cols:int ->
      ?dirname:Html_Attributes.Dirname.t ->
      ?disabled:unit ->
      ?form:string ->
      ?maxlength:int ->
      ?minlength:int ->
      ?name:string ->
      ?placeholder:string ->
      ?readonly:unit ->
      ?required:unit ->
      ?rows:int ->
      ?wrap:Attributes.wrap ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.textarea ] Html_Node.t
  end
module Tfoot :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-tfoot-element} The Tfoot Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-tfoot} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.tfoot ]
    type child =
      [ Html_Node.tr | Html_Node.Element.script_supporting | Html_Node.fragment
      ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_footer_group Css_Style.t ->
      ?css_module:Css_Property.table_footer_group Css_Module.t ->
      child array -> [> Html_Node.tfoot ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_footer_group Css_Style.t ->
      ?css_module:Css_Property.table_footer_group Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.tfoot ] Html_Node.t
  end
module Th :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-th-element} The Th Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-th} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.th ]
    type +'a child = [ 'a Html_Node.flow | Html_Node.other ] Html_Node.t

    module Attributes :
      sig
        type scope = [ `auto | `col | `colgroup | `row | `rowgroup ]
      end
    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      ?colspan:int ->
      ?rowspan:int ->
      ?headers:string ->
      ?scope:Attributes.scope ->
      ?abbr:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_cell Css_Style.t ->
      ?css_module:Css_Property.table_cell Css_Module.t ->
      'b child array -> [> Html_Node.th ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      ?colspan:int ->
      ?rowspan:int ->
      ?headers:string ->
      ?scope:Attributes.scope ->
      ?abbr:string ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_cell Css_Style.t ->
      ?css_module:Css_Property.table_cell Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.th ] Html_Node.t
  end
module Thead :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-thead-element} The Thead Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-thead} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.thead ]
    type +'a child =
      [ Html_Node.tr | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_header_group Css_Style.t ->
      ?css_module:Css_Property.table_header_group Css_Module.t ->
      'b child array -> [> Html_Node.thead ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_header_group Css_Style.t ->
      ?css_module:Css_Property.table_header_group Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.thead ] Html_Node.t
  end
module Time :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-time-element} The Time Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-time} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.time ]
    type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
      datetime:Js.Date.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.time ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
      datetime:Js.Date.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.time ] Html_Node.t
  end
module Title :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-title-element} The Title Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-title} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.title ]
    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?style:[< Css_Property.display ] Css_Style.t ->
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
      ?on_scroll:(Dom.uiEvent -> unit) -> string -> [> Html_Node.title ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?style:[< Css_Property.display ] Css_Style.t ->
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
      ?children:string list -> unit -> [> Html_Node.title ] Html_Node.t
  end
module Tr :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-tr-element} The Tr Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-tr} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.tr ]
    type child =
      [ Html_Node.th | Html_Node.td | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_row Css_Style.t ->
      ?css_module:Css_Property.table_row Css_Module.t ->
      child array -> [> Html_Node.tr ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.table_row Css_Style.t ->
      ?css_module:Css_Property.table_row Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.tr ] Html_Node.t
  end
module Track :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/media.html#the-track-element} The Track Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-track} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.track ]
    module Attributes :
      sig
        type kind =
            [ `captions | `chapters | `descriptions | `metadata | `subtitles ]
      end
    val make :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?kind:Attributes.kind ->
      src:string ->
      ?srclang:string ->
      ?label:string ->
      ?default:unit ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      unit -> [> Html_Node.track ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t ->
      ?kind:Attributes.kind ->
      src:string ->
      ?srclang:string ->
      ?label:string ->
      ?default:unit ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?children:'a -> unit -> [> Html_Node.track ] Html_Node.t
  end
module U :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-u-element} The U Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-u} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.u ]
    type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.u ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.u ] Html_Node.t
  end
module Ul :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-ul-element} The Ul Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-ul} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.ul ]
    type child =
      [ Html_Node.li | Html_Node.Element.script_supporting
      | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:[< Html_Attributes.Aria.list
            | Html_Attributes.Aria.directory
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.listbox
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.menubar
            | Html_Attributes.Aria.radiogroup
            | Html_Attributes.Aria.tablist
            | Html_Attributes.Aria.toolbar
            | Html_Attributes.Aria.tree
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      child array -> [> Html_Node.ul ] Html_Node.t
    val jsx :
      ?aria:[< Html_Attributes.Aria.list
            | Html_Attributes.Aria.directory
            | Html_Attributes.Aria.group
            | Html_Attributes.Aria.listbox
            | Html_Attributes.Aria.presentation
            | Html_Attributes.Aria.menubar
            | Html_Attributes.Aria.radiogroup
            | Html_Attributes.Aria.tablist
            | Html_Attributes.Aria.toolbar
            | Html_Attributes.Aria.tree
            ] Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.block Css_Style.t ->
      ?css_module:Css_Property.block Css_Module.t ->
      ?children:child Js.List.t -> unit -> [> Html_Node.ul ] Html_Node.t
  end
module Var :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-var-element} The Var Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-var} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.var ]
    type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'b child array -> [> Html_Node.var ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'b child Js.List.t -> unit -> [> Html_Node.var ] Html_Node.t
  end
module Video :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/media.html#the-video-element} The Video Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-video} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.video ]
    type +'a child =
      [ Html_Node.track | Html_Node.source | Html_Node.fragment ] Html_Node.t

    val make :
      ?aria:Html_Attributes.Aria.application Html_Attributes.Aria.t ->
      ?src:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?poster:string ->
      ?preload:Html_Attributes.Preload.t ->
      ?autoplay:unit ->
      ?playsinline:unit ->
      ?loop:unit ->
      ?muted:unit ->
      ?controls:unit ->
      ?width:int ->
      ?height:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      'a child array -> [> Html_Node.video ] Html_Node.t
    val jsx :
      ?aria:Html_Attributes.Aria.application Html_Attributes.Aria.t ->
      ?src:string ->
      ?crossorigin:Html_Attributes.CrossOrigin.t ->
      ?poster:string ->
      ?preload:Html_Attributes.Preload.t ->
      ?autoplay:unit ->
      ?playsinline:unit ->
      ?loop:unit ->
      ?muted:unit ->
      ?controls:unit ->
      ?width:int ->
      ?height:int ->
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
      ?slot:string ->
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
      ?style:Css_Property.inline Css_Style.t ->
      ?css_module:Css_Property.inline Css_Module.t ->
      ?children:'a child Js.List.t -> unit -> [> Html_Node.video ] Html_Node.t
  end
module Wbr :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-wbr-element} The Wbr Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-wbr} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.wbr ]
    val make :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      unit -> [> Html_Node.wbr ] Html_Node.t
    val jsx :
      ?aria:'a Html_Attributes.Aria.t ->
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
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?children:'b -> unit -> [> Html_Node.wbr ] Html_Node.t
  end
module Text :
  sig
    (**
     {{: https://dom.spec.whatwg.org/#interface-text} The Text Node}
     ({{: https://www.w3.org/TR/dom/#interface-text} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.text ]
    val make : string -> [> Html_Node.text ] Html_Node.t
    val jsx : ?children:string list -> unit -> [> Html_Node.text ] Html_Node.t
  end
module Fragment :
  sig
    (**
     {{: https://dom.spec.whatwg.org/#interface-documentfragment} Docuemnt Fragment}
     ({{: https://www.w3.org/TR/dom/#interface-documentfragment} W3C})
     *)

    type +'a t = 'a Html_Node.t constraint 'a = [> Html_Node.fragment ]
    type (+'a, +'b) child =
      ([< 'b Html_Node.content > `fragment ] as 'a) Html_Node.t

    val make : ('a, 'b) child array -> ('a, 'b) child
    val jsx :
      ?children:('a, 'b) child Js.List.t ->
      unit -> ('a, 'b) child
  end
