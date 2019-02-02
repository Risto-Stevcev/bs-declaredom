module Internal = struct
  (* Erases type information *)

  module Style = struct
    external to_any:
      [< Css_Property.display] Css_Style.t ->
      [> Css_Property.any] Css_Style.t = "%identity"
  end

  module CssModule = struct
    external to_any:
      [< Css_Property.display] Css_Module.t ->
      [> Css_Property.any] Css_Module.t = "%identity"
  end

  module Node = struct
    external to_any:
      [< _ Html_Node.content] Html_Node.t array ->
      [< _ Html_Node.content] Html_Node.t array = "%identity"
  end
end


(* TODO:
 * - Document motivation for why overrides are only offered for generic elements
 * - Add the generic sectioning element <section>, offer same overrides as <div>
 *)


module Div = struct
  let flex ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.Override.flex Css_Style.t option)
    ?(css_module:Css_Property.Override.flex Css_Module.t option)
    (children:_ Html_Node.flex_item Html_Node.t array) =
    Html_Nodes.Div.make
      ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?css_module:(Belt.Option.map css_module Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_flex ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.Override.inline_flex Css_Style.t option)
    ?(css_module:Css_Property.Override.inline_flex Css_Module.t option)
    (children:_ Html_Node.flex_item Html_Node.t array) =
    Html_Nodes.Div.make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?css_module:(Belt.Option.map css_module Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_block ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.Override.inline_block Css_Style.t option)
    ?(css_module:Css_Property.Override.inline_block Css_Module.t option)
    children =
    Html_Nodes.Div.make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?css_module:(Belt.Option.map css_module Internal.CssModule.to_any)
      children


  module Jsx = struct
    let flex ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module ?children () =
      flex ?aria
        ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
        ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
        ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
        ?title ?translate
        ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
        ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
        ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
        ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
        ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
        ?style ?css_module 
        (Belt.Option.mapWithDefault children [||] Js.List.toVector)


    let inline_flex ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module ?children () =
      inline_flex ?aria
        ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
        ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
        ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
        ?title ?translate
        ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
        ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
        ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
        ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
        ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
        ?style ?css_module 
        (Belt.Option.mapWithDefault children [||] Js.List.toVector)


    let inline_block ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module ?children () =
      inline_block ?aria
        ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
        ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
        ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
        ?title ?translate
        ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
        ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
        ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
        ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
        ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
        ?style ?css_module 
        (Belt.Option.mapWithDefault children [||] Js.List.toVector)
  end
end


module Span = struct
  let inline_block ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.Override.inline_block Css_Style.t option)
    ?(css_module:Css_Property.Override.inline_block Css_Module.t option)
    children =
    Html_Nodes.Span.make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?css_module:(Belt.Option.map css_module Internal.CssModule.to_any)
      children


  module Jsx = struct
    let inline_block ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module ?children () =
      inline_block ?aria
        ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
        ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
        ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
        ?title ?translate
        ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
        ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
        ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
        ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
        ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
        ?style ?css_module
        (Belt.Option.mapWithDefault children [||] Js.List.toVector)
  end
end


(** Sets a css module for a flex item *)
let flex_module
  (css_module:Css_Property.flex_item Css_Module.t)
  (value:'a Html_Node.flex_item Html_Node.t):
  'a Html_Node.flex_item Html_Node.t =
  match (
    value |> Html_Node.to_node |> Webapi.Dom.Element.ofNode,
    Css_Module.get_class ~css_module ()
  ) with
  | (Some element, Some module_name) ->
    let class_name = Webapi.Dom.Element.className element in
    Webapi.Dom.Element.setClassName element @@ class_name ^" "^ module_name;
    value
  | _ -> value
