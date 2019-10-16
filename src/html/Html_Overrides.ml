(* TODO: add grid layout *)

(* Use this instead of Css_Style.t for tree-shaking *)
type 'a style = 'a Css_Property.t Js.Dict.t

module Internal = struct
  (* Erases type information *)

  module Style = struct
    external to_any: [< Css_Property.display] style -> [> Css_Property.any] style = "%identity"

    let display_inline_block style =
      style
      |> Css_Properties.Display.inline_block
      |> to_any
  end

  module CssModule = struct
    external to_any:
      [< Css_Property.display] Css_Module.t -> [> Css_Property.any] Css_Module.t = "%identity"
  end

  module Node = struct
    external to_any:
      [< _ Html_Node.content] Html_Node.t array ->
      [< _ Html_Node.content] Html_Node.t array = "%identity"

    external to_flex_item:
      [< _ Html_Node.content] Html_Node.t -> [> Html_Node.flex_item] Html_Node.t = "%identity"
  end

  module Dom = struct
    type style
    external style: Dom.element -> style = "style" [@@bs.get]
    external set_style: style -> string -> string -> unit = "" [@@bs.set_index]
  end
end


module Body = struct
  type +'a child = ['a Html_Nodes.Body.children | Html_Node.flex_item] Html_Node.t

  let flex ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
    ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
    ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
    ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
    ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
    ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.flexbox style option)
    ?(css_module:Css_Property.flexbox Css_Module.t option)
    (children:'a child array) =
    Html_Nodes.Body.make
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
      ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
      ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
      ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
      ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
      ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?css_module:(Belt.Option.map css_module Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_flex ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
    ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
    ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
    ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
    ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
    ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline_flex style option)
    ?(css_module:Css_Property.inline_flex Css_Module.t option)
    (children:'a child array) =
    Html_Nodes.Body.make
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
      ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
      ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
      ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
      ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
      ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?css_module:(Belt.Option.map css_module Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  module Jsx = struct
    let flex ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
      ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
      ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
      ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
      ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
      ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module ?children () =
      flex ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
        ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
        ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
        ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
        ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
        ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
        ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
        ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
        ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
        ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
        ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
        ?style ?css_module
        (Belt.Option.mapWithDefault children [||] Js.List.toVector)


    let inline_flex ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
      ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
      ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
      ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
      ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
      ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module ?children () =
      inline_flex ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
        ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop ?itemref ?itemscope
        ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex ?title ?translate
        ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
        ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
        ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
        ?on_unhandledrejection ?on_unload ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
        ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
        ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
        ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
        ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
        ?style ?css_module
        (Belt.Option.mapWithDefault children [||] Js.List.toVector)
  end
end


module Div = struct
  type +'a child = ['a Html_Nodes.Div.children | Html_Node.flex_item] Html_Node.t

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
    ?(style:Css_Property.flexbox style option)
    ?(css_module:Css_Property.flexbox Css_Module.t option)
    (children:'a child array) =
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
    ?(style:Css_Property.inline_flex style option)
    ?(css_module:Css_Property.inline_flex Css_Module.t option)
    (children:'a child array) =
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
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
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
      ?style:(Belt.Option.map style Internal.Style.display_inline_block)
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


module Section = struct
  type +'a child = ['a Html_Nodes.Section.children | Html_Node.flex_item] Html_Node.t

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
    ?(style:Css_Property.flexbox style option)
    ?(css_module:Css_Property.flexbox Css_Module.t option)
    (children:'a child array) =
    Html_Nodes.Section.make
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
    ?(style:Css_Property.inline_flex style option)
    ?(css_module:Css_Property.inline_flex Css_Module.t option)
    (children:'a child array) =
    Html_Nodes.Section.make ?aria
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
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    children =
    Html_Nodes.Section.make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style:(Belt.Option.map style Internal.Style.display_inline_block)
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
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
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
      ?style:(Belt.Option.map style Internal.Style.display_inline_block)
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


let with_flex_css
  ?(style:Css_Property.flex_item Css_Style.t option)
  ?(css_module:Css_Property.flex_item Css_Module.t option)
  (value:[< _ Html_Node.element] Html_Node.t):
  [> Html_Node.flex_item] Html_Node.t =
  let module_name = Css_Module.get_class ?css_module ()
  and element: Dom.element =
    (* Get the underlying Dom.element, should be safe since it's an Html_Node.element *)
    value
    |> Html_Node.to_node
    |> Webapi.Dom.Node.cloneNodeDeep
    |> Webapi.Dom.Element.ofNode
    |> Js.Option.getExn
  in
  let _ =
    match module_name with
    | Some module_name' ->
      (* Append module class name *)
      let class_name = Webapi.Dom.Element.className element in
      Webapi.Dom.Element.setClassName element @@ class_name ^" "^ module_name'
    | _ -> ()
  in
  let _ =
    match style with
    | Some style' ->
      let element_style = Internal.Dom.style element
      in
      style'
      |> Js.Dict.entries
      |> Js.Array.forEach (fun (key, value) -> begin
           Internal.Dom.set_style element_style key (Css_Property.show value)
         end)
    | _ -> ()
  in
  Internal.Node.to_flex_item value
