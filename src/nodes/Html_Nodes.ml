(**
 HTML Elements
 
 Includes nodes like text nodes and fragments.

 See the {{: https://html.spec.whatwg.org/multipage/indices.html#elements-3} full element table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#index-elements} W3C}) 
 and the {{: https://html.spec.whatwg.org/multipage/indices.html#events-2} events table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#events-table} W3C})
 for reference.
 *)

(* TODO: check jsx attributes, attributes that take css or other values,
 * hidden elements should take no styles *)


(* TODO: hide *)
module Internal = struct
  external make: Dom.node -> _ Html_Node.t = "%identity"
end


module A = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element} The A Element} 
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-a} W3C}) 
   ({{: https://www.w3.org/TR/wai-aria-1.1/#link} aria})
   *)

  type +'a t = ([> Html_Node.a ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.interactive
    | 'a Html_Node.palpable | Html_Node.other ] Html_Node.t

  module Attributes = struct
    external _make:
      ?href:string ->
      ?target:string ->
      ?download:string ->
      ?rel:string ->
      ?rev:string ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
      () =
      _make ?href
        ?target:(Belt.Option.map target Html_Attributes.Target.show)
        ?download:(Belt.Option.map download Util.string_of_unit)
        ?rel:(Belt.Option.map rel Html_Attributes.LinkType.Hyperlink.show)
        ?rev:(Belt.Option.map rev Html_Attributes.LinkType.Hyperlink.show)
        ?hreflang ?_type
        ?referrerpolicy:
          (Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ()
  end


  let make
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?(aria:[< Html_Attributes.Aria.link
           | Html_Attributes.Aria.button
           | Html_Attributes.Aria.checkbox
           | Html_Attributes.Aria.radio
           | Html_Attributes.Aria.switch
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.treeitem
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "a"
      (Util.merge_all [|
        Attributes.make ?href ?target ?download ?rel ?rev ?hreflang ?_type
          ?referrerpolicy ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make 
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable
    ?dataset ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid
    ?itemprop ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?style ?css_module ?children () =
    make
      ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable
      ?dataset ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid
      ?itemprop ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
      ?style ?css_module
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Abbr = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element} The Abbr Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-abbr} W3C})
   *)

  type +'a t = ([> Html_Node.abbr ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "abbr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
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
    make ?aria
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


module Address = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-address-element} The Address Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-address} W3C})
   *)

  type +'a t = ([> Html_Node.address ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.group Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "address"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
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
    make ?aria
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


module Area = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element} The Area Element}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-area} W3C})
   *)

  type +'a t = ([> Html_Node.area ] as 'a) Html_Node.t

  module Attributes = struct
    type shape = [ `rect | `circle | `poly ] [@@bs.deriving jsConverter]

    let from_coords value =
      value |. Belt.List.map string_of_int |. Util.join_with ","

    external _make:
      ?alt:string ->
      ?coords:string ->
      ?download:string ->
      ?href:string ->
      ?hreflang:string ->
      ?rel:string ->
      ?shape:string ->
      ?target:string ->
      ?_type:string ->
      ?referrerpolicy:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj] 

    let make ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
      ?referrerpolicy () =
      _make ?alt
        ?coords:(Belt.Option.map coords from_coords)
        ?download:(Belt.Option.map download Util.string_of_unit)
        ?href ?hreflang
        ?rel:(Belt.Option.map rel Html_Attributes.LinkType.Hyperlink.show)
        ?shape:(Belt.Option.map shape shapeToJs)
        ?target:(Belt.Option.map target Html_Attributes.Target.show)
        ?_type
        ?referrerpolicy:
          (Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ()
  end

  let make ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
    ?referrerpolicy 
    ?(aria:Html_Attributes.Aria.link Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll (): _ t =
    Declaredom.make_empty "area"
      (Util.merge_all [|
        Attributes.make ?alt ?coords ?download ?href ?hreflang ?rel ?shape
          ?target ?_type ?referrerpolicy ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
    ?referrerpolicy 
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
    ?children:_ () =
    make ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
      ?referrerpolicy 
      ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll ()
end


module Article = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-article-element} The Article Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-article} W3C})
   *)

  type +'a t = ([> Html_Node.article ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.article
           | Html_Attributes.Aria.application
           | Html_Attributes.Aria.document
           | Html_Attributes.Aria.feed
           | Html_Attributes.Aria.main
           | Html_Attributes.Aria.region
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "article"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Aside = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-aside-element} The Aside Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-aside} W3C})
   *)

  type +'a t = ([> Html_Node.aside ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.complementary
           | Html_Attributes.Aria.feed
           | Html_Attributes.Aria.note
           | Html_Attributes.Aria.search
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "aside"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
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


module Audio = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/media.html#the-audio-element} The Audio Element}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-audio} W3C})
   *)

  type +'a t = ([> Html_Node.audio ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.source | 'a Html_Node.flow | 'a Html_Node.phrasing
    | Html_Node.interactive | Html_Node.embedded | Html_Node.other ] Html_Node.t

  module Attributes = struct
    type preload =
      [ `none | `metadata | `auto ] [@@bs.deriving jsConverter]

    external _make:
      ?src:string ->
      ?crossorigin:string ->
      ?preload:string ->
      ?autoplay:string ->
      ?loop:string ->
      ?muted:string ->
      ?controls:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj] 

    let make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls () =
      _make ?src
        ?crossorigin:(Belt.Option.map crossorigin Html_Attributes.CrossOrigin.show)
        ?preload:(Belt.Option.map preload preloadToJs)
        ?autoplay:(Belt.Option.map autoplay Util.string_of_unit)
        ?loop:(Belt.Option.map loop Util.string_of_unit)
        ?muted:(Belt.Option.map muted Util.string_of_unit)
        ?controls:(Belt.Option.map controls Util.string_of_unit)
        ()
  end

  let make
    ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
    ?(aria:Html_Attributes.Aria.application Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_load ?on_loadend ?on_securitypolicyviolation
    ?on_abort ?on_canplay ?on_canplaythrough ?on_cuechange ?on_durationchange
    ?on_emptied ?on_ended ?on_error ?on_loadedmetadata ?on_loadeddata ?on_loadstart
    ?on_pause ?on_play ?on_playing ?on_progress ?on_ratechange ?on_resize ?on_seeked
    ?on_seeking ?on_suspend ?on_stalled ?on_timeupdate ?on_volumechange ?on_waiting 
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (children:_ child array): _ t
    =
    Declaredom.make "audio"
      (Util.merge_all [|
        Attributes.make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Resource.make ?on_load ?on_loadend ?on_securitypolicyviolation ();
        Html_Events.Media.make ?on_abort ?on_canplay ?on_canplaythrough
          ?on_cuechange ?on_durationchange ?on_emptied ?on_ended ?on_error
          ?on_loadedmetadata ?on_loadeddata ?on_loadstart ?on_pause ?on_play
          ?on_playing ?on_progress ?on_ratechange ?on_resize ?on_seeked ?on_seeking
          ?on_suspend ?on_stalled ?on_timeupdate ?on_volumechange ?on_waiting ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_loadstart ?on_progress ?on_suspend ?on_abort ?on_error ?on_emptied ?on_stalled
    ?on_loadedmetadata ?on_loadeddata ?on_canplay ?on_canplaythrough ?on_playing
    ?on_waiting ?on_seeking ?on_seeked ?on_ended ?on_durationchange ?on_timeupdate
    ?on_play ?on_pause ?on_ratechange ?on_resize ?on_volumechange
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?children () =
    make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_loadstart ?on_progress ?on_suspend ?on_abort ?on_error ?on_emptied ?on_stalled
      ?on_loadedmetadata ?on_loadeddata ?on_canplay ?on_canplaythrough ?on_playing
      ?on_waiting ?on_seeking ?on_seeked ?on_ended ?on_durationchange ?on_timeupdate
      ?on_play ?on_pause ?on_ratechange ?on_resize ?on_volumechange
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module B = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-b-element} The B Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-b} W3C})
   *)

  type +'a t = ([> Html_Node.b ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "b"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
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


module Base = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/semantics.html#the-base-element} The Base Element}
   ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-base} W3C})
   *)

  type +'a t = ([> Html_Node.base ] as 'a) Html_Node.t

  module Attributes = struct
    external _make:
      ?href:string -> ?target:string -> unit -> Html_Attributes.t = "" [@@bs.obj]

    let make ?href ?target () =
      _make ?href ?target:(Belt.Option.map target Html_Attributes.Target.show) ()
  end

  let make ?href ?target
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll (): _ t
    =
    Declaredom.make_empty "base"
      (Util.merge_all [|
        Attributes.make ?href ?target ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make

  let jsx ?href ?target
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?children:_ () =
    make ?href ?target
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll ()
end


module Bdi = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdi-element} The Bdi Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdi} W3C})
   *)

  type +'a t = ([> Html_Node.bdi ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "bdi"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
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


module Bdo = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdo-element} The Bdo Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdo} W3C})
   *)

  type +'a t = ([> Html_Node.bdo ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "bdo"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
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



module Blockquote = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-blockquote-element} The Blockquote Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-blockquote} W3C})
   *)

  type +'a t = ([> Html_Node.blockquote ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?cite:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?cite
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "blockquote"
      (Util.merge_all [|
        Attributes.make ?cite ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?cite
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make ?cite
      ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
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


module Body = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-body-element} The Body Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-body} W3C})
   *)

  type +'a t = ([> Html_Node.body ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make:
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
      unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?(aria:Html_Attributes.Aria.document Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange
    ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
    ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled ?on_storage
    ?on_unhandledrejection ?on_unload
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "body"
      (Util.merge_all [|
        Attributes.make ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange 
          ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
          ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled
          ?on_storage ?on_unhandledrejection ?on_unload ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange 
    ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
    ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled
    ?on_storage ?on_unhandledrejection ?on_unload
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_afterprint ?on_beforeprint ?on_beforeunload ?on_hashchange 
      ?on_languagechange ?on_message ?on_messageerror ?on_offline ?on_online
      ?on_pagehide ?on_pageshow ?on_popstate ?on_resize ?on_rejectionhandled
      ?on_storage ?on_unhandledrejection ?on_unload
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
      ?style ?css_module
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Br = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-br-element} The Br Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-br} W3C})
   *)

  type +'a t = ([> Html_Node.br ] as 'a) Html_Node.t

  let make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll (): _ t
    =
    Declaredom.make_empty "br"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make

  let jsx ?aria ?accesskey ?class_name ?class_set ?contenteditable ?dataset ?dir
    ?draggable ?hidden ?id ?lang ?spellcheck ?tabindex ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?children:_ () =
    make ?aria ?accesskey ?class_name ?class_set ?contenteditable ?dataset ?dir
      ?draggable ?hidden ?id ?lang ?spellcheck ?tabindex ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll ()
end


module Button = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-button-element} The Button Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-button} W3C})
   *)

  type +'a t = ([> Html_Node.button ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    type type_ = [ `submit | `reset | `button ] [@@bs.deriving jsConverter]

    external make:
      ?autofocus:string ->
      ?disabled:string ->
      ?form:string ->
      ?formaction:string ->
      ?formenctype:string ->
      ?formmethod:string ->
      ?formnovalidate:string ->
      ?formtarget:string ->
      ?formelements:string ->
      ?name:string ->
      ?type_:string ->
      ?value: string ->
      unit -> Html_Attributes.t = "" [@@bs.obj]

    let _make ?autofocus ?disabled ?form ?formaction ?formenctype ?formmethod
      ?formnovalidate ?formtarget ?name ?formelements ?type_ ?value () =
      make ?autofocus:(Belt.Option.map autofocus Util.string_of_unit)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?form ?formaction
        ?formenctype:(Belt.Option.map formenctype Html_Attributes.Form.Enctype.show)
        ?formmethod:(Belt.Option.map formmethod Html_Attributes.Form.Method.show)
        ?formnovalidate:(Belt.Option.map formnovalidate Util.string_of_unit)
        ?formtarget ?name ?formelements
        ?type_:(Belt.Option.map type_ type_ToJs)
        ?value
        ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.link
           | Html_Attributes.Aria.button
           | Html_Attributes.Aria.radio
           | Html_Attributes.Aria.switch
           ] Html_Attributes.Aria.t option)
    ?autofocus ?disabled ?form ?formaction ?formenctype ?formmethod
    ?formnovalidate ?formtarget ?name ?formelements ?type_ ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline_block Style.t option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "button"
      (Util.merge_all [|
        Attributes.make ?autofocus ?disabled ?form ?formaction ?formenctype
          ?formmethod ?formnovalidate ?formtarget ?name ?formelements ?type_
          ?value ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children () =
    make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
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


module Canvas = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/canvas.html#the-canvas-element} The Canvas Element}
   ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-canvas} W3C})
   *)

  type +'a t = ([> Html_Node.canvas ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.embedded
    | 'a Html_Node.palpable | Html_Node.other
    ] Html_Node.t

  module Attributes = struct
    external make:
      ?width:string -> ?height:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?height ?width
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "canvas"
      (Util.merge_all [|
        Attributes.make ?height ?width ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?height ?width
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
    make ?aria ?height ?width
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


module Caption = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/tables.html#the-caption-element} The Caption Element}
   ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-caption} W3C})
   *)

  type +'a t = ([> Html_Node.caption ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.table_caption Style.t option)
    ?(css_module:Css_Property.table_caption Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "caption"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Cite = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-cite-element} The Cite Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-cite} W3C})
   *)

  type +'a t = ([> Html_Node.cite ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "cite"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Code = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-code-element} The Code Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-code} W3C})
   *)

  type +'a t = ([> Html_Node.code ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "code"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Col = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/tables.html#the-col-element} The Col Element}
   ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-col} W3C})
   *)

  type +'a t = ([> Html_Node.col ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "col"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children:_ () =
    make ?aria
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
      ()
end


module Colgroup = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/tables.html#the-colgroup-element} The Colgroup Element}
   ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-colgroup} W3C})
   *)

  type +'a t = ([> Html_Node.colgroup ] as 'a) Html_Node.t

  type child =
    [Html_Node.col | Html_Node.template | Html_Node.fragment] Html_Node.t

  module Attributes = struct
    external _make: ?span:string -> unit -> Html_Attributes.t = "" [@@bs.obj]

    let make ?span () = _make ?span:(Belt.Option.map span string_of_int) ()
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?span
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.table_column_group Style.t option)
    ?(css_module:Css_Property.table_column_group Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "colgroup"
      (Util.merge_all [|
        Attributes.make ?span ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?span
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
    make ?aria ?span
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


module Data = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-data-element} The Data Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-data} W3C})
   *)

  type +'a t = ([> Html_Node.data ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?value:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "data"
      (Util.merge_all [|
        Attributes.make ?value ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?value
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
    make ?aria ?value
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


module Datalist = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element} The Datalist Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-datalist} W3C})
   *)

  type +'a t = ([> Html_Node.datalist ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.phrasing | Html_Node.option
    | Html_Node.Element.script_supporting | Html_Node.other ] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.listbox Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    (children:_ child array): _ t
    =
    Declaredom.make "datalist"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?children () =
    make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Dd = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dd-element} The Dd Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dd} W3C})
   *)

  type +'a t = ([> Html_Node.dd ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "dd"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Del = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/edits.html#the-del-element} The Del Element}
   ({{: https://www.w3.org/TR/html52/edits.html#elementdef-del} W3C})
   *)

  type +'a t = ([> Html_Node.del ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make: ?cite:string -> ?datetime:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?cite ?datetime () =
      _make ?cite ?datetime:(Belt.Option.map datetime Js.Date.toISOString) ()
  end

  let make ?aria ?cite ?datetime
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "del"
      (Util.merge_all [|
        Attributes.make ?cite ?datetime ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?cite ?datetime
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
    make ?aria ?cite ?datetime
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


module Details = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-details-element} The Details Element}
   ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-details} W3C})
   *)

  type +'a t = ([> Html_Node.details ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.summary | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make: ?open_:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
    let make ?open_ () =
      _make ?open_:(Belt.Option.map open_ Util.string_of_unit) ()
  end

  let make ?(aria:Html_Attributes.Aria.group Html_Attributes.Aria.t option)
    ?open_
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "details"
      (Util.merge_all [|
        Attributes.make ?open_ ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?open_
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
    make ?aria ?open_
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


module Dfn = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-dfn-element} The Dfn Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-dfn} W3C})
   *)

  type +'a t = ([> Html_Node.dfn ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "dfn"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Dialog = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-dialog-element} The Dialog Element}
   ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-dialog} W3C})
   *)

  type +'a t = ([> Html_Node.dialog ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make: ?open_:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
    let make ?open_ () =
      _make ?open_:(Belt.Option.map open_ Util.string_of_unit) ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.dialog
           | Html_Attributes.Aria.alertdialog
           ] Html_Attributes.Aria.t option)
    ?open_
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "dialog"
      (Util.merge_all [|
        Attributes.make ?open_ ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?open_
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
    make ?aria ?open_
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


module Div = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element} The Div Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-div} W3C})
   *)

  type +'a t = ([> Html_Node.div ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "div"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Dl = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element} The Dl Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dl} W3C})
   *)

  type +'a t = ([> Html_Node.dl ] as 'a) Html_Node.t

  type child =
    [ Html_Node.dd | Html_Node.dt | Html_Node.Element.script_supporting
    | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.list
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "dl"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Dt = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dt-element} The Dt Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dt} W3C})
   *)

  type +'a t = ([> Html_Node.dt ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "dt"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Em = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-em-element} The Em Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-em} W3C})
   *)

  type +'a t = ([> Html_Node.em ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "em"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Embed = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-embed-element} The Embed Element}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-embed} W3C})
   *)

  type +'a t = ([> Html_Node.embed ] as 'a) Html_Node.t

  module Attributes = struct
    external _make:
      ?src:string -> ?type_:string -> ?width:string -> ?height:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?src ?type_ ?width ?height () =
      _make ?src ?type_
        ?width:(Belt.Option.map width string_of_int)
        ?height:(Belt.Option.map height string_of_int) ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.application
           | Html_Attributes.Aria.document
           | Html_Attributes.Aria.img
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?src ?type_ ?width ?height
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.replaced_inline Style.t option)
    ?(css_module:Css_Property.replaced_inline Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "embed"
      (Util.merge_all [|
        Attributes.make ?src ?type_ ?width ?height ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria ?src ?type_ ?width ?height
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children:_ () =
    make ?aria ?src ?type_ ?width ?height
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
      ()
end


module Fieldset = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element} The Fieldset Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-fieldset} W3C})
   *)

  type +'a t = ([> Html_Node.fieldset ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.flow | Html_Node.legend | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make: ?disabled:string -> ?form:string -> ?name:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?form ?name ?disabled () =
      _make ?form ?name
        ?disabled:(Belt.Option.map disabled Util.string_of_unit) ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "fieldset"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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



module Figcaption = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-figcaption-element} The Figcaption Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-figcaption} W3C})
   *)

  type +'a t = ([> Html_Node.figcaption ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "figcaption"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Figure = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element} The Figure Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-figure} W3C})
   *)

  type +'a t = ([> Html_Node.figure ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.flow | Html_Node.figcaption | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.figure
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "figure"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Footer = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-footer-element} The Footer Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-footer} W3C})
   *)

  type +'a t = ([> Html_Node.footer ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.contentinfo
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "footer"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Form = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/forms.html#the-form-element} The Form Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-form} W3C})
   *)

  type +'a t = ([> Html_Node.form ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make:
      ?accept_charset:string ->
      ?action:string ->
      ?autocomplete:string ->
      ?enctype:string ->
      ?_method:string ->
      ?name:string ->
      ?novalidate:string ->
      ?target:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?accept_charset ?action ?autocomplete ?enctype ?_method ?name
      ?novalidate ?target ()
      =
      _make ?accept_charset ?action
        ?autocomplete:(Belt.Option.map autocomplete Html_Attributes.AutoComplete.show)
        ?enctype:(Belt.Option.map enctype Html_Attributes.Form.Enctype.show)
        ?_method:(Belt.Option.map _method Html_Attributes.Form.Method.show)
        ?name
        ?novalidate:(Belt.Option.map novalidate Util.string_of_unit)
        ?target:(Belt.Option.map target Html_Attributes.Target.show)
        ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.form
           | Html_Attributes.Aria.search
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accept_charset ?action ?autocomplete ?enctype ?_method ?name ?novalidate
    ?target
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "form"
      (Util.merge_all [|
        Attributes.make ?accept_charset ?action ?autocomplete ?enctype ?_method
          ?name ?novalidate ?target ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?accept_charset ?action ?autocomplete ?enctype ?_method ?name
    ?novalidate ?target
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
    make ?aria ?accept_charset ?action ?autocomplete ?enctype ?_method ?name
      ?novalidate ?target
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


module H1 = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H1 Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h1} W3C})
   *)

  type +'a t = ([> Html_Node.h1 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "h1"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module H2 = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H2 Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h2} W3C})
   *)

  type +'a t = ([> Html_Node.h2 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "h2"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module H3 = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H3 Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h3} W3C})
   *)

  type +'a t = ([> Html_Node.h3 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "h3"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module H4 = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H4 Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h4} W3C})
   *)

  type +'a t = ([> Html_Node.h4 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "h4"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module H5 = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H5 Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h5} W3C})
   *)

  type +'a t = ([> Html_Node.h5 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "h5"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module H6 = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H6 Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h6} W3C})
   *)

  type +'a t = ([> Html_Node.h6 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "h6"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Head = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-head-element} The Head Element}
   ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-head} W3C})
   *)

  type +'a t = ([> Html_Node.head ] as 'a) Html_Node.t

  type child = [ Html_Node.metadata | Html_Node.fragment ] Html_Node.t

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    (children:child array): _ t
    =
    Declaredom.make "head"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?children () =
    make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Header = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-header-element} The Header Element}
   ({{: https://www.w3.org/TR/html52/sections.html#elementdef-header} W3C})
   *)

  type +'a t = ([> Html_Node.header ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.banner
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "header"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Hgroup = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/sections.html#the-hgroup-element} The Hgroup Element}
   *)

  type +'a t = ([> Html_Node.hgroup ] as 'a) Html_Node.t

  type child =
    [ Html_Node.headings | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "hgroup"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Hr = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-hr-element} The Hr Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-hr} W3C})
   *)

  type +'a t = ([> Html_Node.hr ] as 'a) Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.separator
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "hr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children:_ () =
    make ?aria
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
      ()
end


module Html = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/semantics.html#the-html-element} The Html Element}
   ({{: https://www.w3.org/TR/html52/semantics.html#elementdef-html} W3C})
   *)

  type +'a t = ([> Html_Node.html ] as 'a) Html_Node.t

  type child = [Html_Node.head | Html_Node.body | Html_Node.fragment] Html_Node.t

  module Attributes = struct
    external make: ?manifest:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make
    ?manifest
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    (children:child array): _ t
    =
    Declaredom.make "html"
      (Util.merge_all [|
        Attributes.make ?manifest ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?manifest
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?children () =
    make ?aria ?manifest
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module I = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-i-element} The I Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-i} W3C})
   *)

  type +'a t = ([> Html_Node.i ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "i"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Iframe = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-iframe-element} The Iframe Element}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-iframe} W3C})
   *)

  type +'a t = ([> Html_Node.iframe ] as 'a) Html_Node.t

  module Attributes = struct
    type sandbox =
      [ `allow_forms [@bs.as "allow-forms"]
      | `allow_modals [@bs.as "allow-modals"]
      | `allow_orientation_lock [@bs.as "allow-orientation-lock"]
      | `allow_pointer_lock [@bs.as "allow-pointer-lock"]
      | `allow_popups [@bs.as "allow-popups"]
      | `allow_popups_to_escape_sandbox [@bs.as "allow-popups-to-escape-sandbox"]
      | `allow_presentation [@bs.as "allow-presentation"]
      | `allow_same_origin [@bs.as "allow-same-origin"]
      | `allow_scripts [@bs.as "allow-scripts"]
      | `allow_top_navigation [@bs.as "allow-top-navigation"]
      | `allow_top_navigation_by_user_activation [@bs.as "allow-top-navigation-by-user-activation"]
      ] [@@bs.deriving jsConverter]

    external _make:
      ?src:string ->
      ?srcdoc:string ->
      ?name:string ->
      ?sandbox:string ->
      ?allow:string ->
      ?allowfullscreen:string ->
      ?allowpaymentrequest:string ->
      ?width:string ->
      ?height:string ->
      ?referrerpolicy:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?src ?srcdoc ?name ?sandbox ?allow ?allowfullscreen
      ?allowpaymentrequest ?width ?height ?referrerpolicy () =
      _make ?src ?srcdoc ?name
        ?sandbox:(Belt.Option.map sandbox sandboxToJs)
        ?allow
        ?allowfullscreen:(Belt.Option.map allowfullscreen Util.string_of_unit)
        ?allowpaymentrequest:(Belt.Option.map allowpaymentrequest Util.string_of_unit)
        ?width:(Belt.Option.map width string_of_int)
        ?height:(Belt.Option.map height string_of_int)
        ?referrerpolicy:
          (Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.application
           | Html_Attributes.Aria.document
           | Html_Attributes.Aria.img
           ] Html_Attributes.Aria.t option)
    ?src ?srcdoc ?name ?sandbox ?allow ?allowfullscreen ?allowpaymentrequest
    ?width ?height ?referrerpolicy
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.replaced_inline Style.t option)
    ?(css_module:Css_Property.replaced_inline Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "iframe"
      (Util.merge_all [|
        Attributes.make ?src ?srcdoc ?name ?sandbox ?allow ?allowfullscreen
          ?allowpaymentrequest ?width ?height ?referrerpolicy ();    
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria
    ?src ?srcdoc ?name ?sandbox ?allow ?allowfullscreen ?allowpaymentrequest
    ?width ?height ?referrerpolicy
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children:_ () =
    make ?aria
      ?src ?srcdoc ?name ?sandbox ?allow ?allowfullscreen ?allowpaymentrequest
      ?width ?height ?referrerpolicy
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
      ()
end


module Img = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-img-element} The Img Element}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-img} W3C})
   *)

  type +'a t = ([> Html_Node.img ] as 'a) Html_Node.t

  module Attributes = struct
    type decoding = [ `sync | `async | `auto ] [@@bs.deriving jsConverter]

    external _make:
      ?alt:string ->
      ?src:string ->
      ?srcset:string ->
      ?sizes:string ->
      ?crossorigin:string ->
      ?usemap:string ->
      ?ismap:string ->
      ?width:string ->
      ?height:string ->
      ?referrerpolicy:string ->
      ?decoding:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap ?width ?height
      ?referrerpolicy ?decoding () =
      _make ?alt ?src ?srcset ?sizes
        ?crossorigin:
          (Belt.Option.map crossorigin Html_Attributes.CrossOrigin.show)
        ?usemap
        ?ismap:(Belt.Option.map ismap Util.string_of_unit)
        ?width:(Belt.Option.map width string_of_int)
        ?height:(Belt.Option.map height string_of_int)
        ?referrerpolicy:
          (Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ?decoding:(Belt.Option.map decoding decodingToJs)
        ();
  end

  let make ?aria
    ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap ?width ?height
    ?referrerpolicy ?decoding
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.replaced_inline Style.t option)
    ?(css_module:Css_Property.replaced_inline Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "img"
      (Util.merge_all [|
        Attributes.make ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap
          ?width ?height ?referrerpolicy ?decoding ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap ?width
    ?height ?referrerpolicy ?decoding
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children:_ () =
    make ?aria ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap ?width
      ?height ?referrerpolicy ?decoding
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
      ()
end


module Input = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/input.html#the-input-element} The Input Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-input} W3C})

   See also {{: https://www.w3.org/TR/html52/sec-forms.html#state-of-the-type-attribute} type attributes}
   *)

  type +'a t = ([> Html_Node.input ] as 'a) Html_Node.t

  module Attributes = struct
    type _type =
      [ `hidden | `text | `search | `tel | `url | `email | `password | `date
      | `month | `week | `time | `datetime_local [@bs.as "datetime-local"]
      | `number | `range | `color | `checkbox | `radio | `file | `submit
      | `image | `reset | `button ] [@@bs.deriving jsConverter]

    type dirname = [ `ltr | `rtl ] [@@bs.deriving jsConverter] 

    type step = [ `any | `step_value of float ]

    let stepToJs: step -> string = function
    | `any -> "any" | `step_value value -> Js.Float.toString value

    external _make:
      ?accept:string ->
      ?alt:string ->
      ?autocomplete:string ->
      ?autofocus:string ->
      ?checked:string ->
      ?dirname:string ->
      ?disabled:string ->
      ?form:string ->
      ?formaction:string ->
      ?formenctype:string ->
      ?formmethod:string ->
      ?formnovalidate:string ->
      ?formtarget:string ->
      ?height:string ->
      ?list:string ->
      ?max:string ->
      ?maxlength:string ->
      ?min:string ->
      ?minlength:string ->
      ?multiple:string ->
      ?name:string ->
      ?pattern:string ->
      ?placeholder:string ->
      ?readonly:string ->
      ?required:string ->
      ?size:string ->
      ?src:string ->
      ?step:string ->
      ?_type:string ->
      ?value:'a ->
      ?width:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
      ?form ?formaction ?formenctype ?formmethod ?formnovalidate ?formtarget
      ?height ?list ?max ?maxlength ?min ?minlength ?multiple ?name ?pattern
      ?placeholder ?readonly ?required ?size ?src ?step ?_type ?value ?width
      () =
      _make ?accept ?alt
        ?autocomplete:(Belt.Option.map autocomplete Html_Attributes.AutoComplete.show)
        ?autofocus:(Belt.Option.map autofocus Util.string_of_unit)
        ?checked:(Belt.Option.map checked Util.string_of_unit)
        ?dirname:(Belt.Option.map dirname dirnameToJs)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?form ?formaction
        ?formenctype:(Belt.Option.map formenctype Html_Attributes.Form.Enctype.show)
        ?formmethod:(Belt.Option.map formmethod Html_Attributes.Form.Method.show)
        ?formnovalidate:(Belt.Option.map formnovalidate Util.string_of_unit)
        ?formtarget 
        ?height:(Belt.Option.map height string_of_int)
        ?list ?max
        ?maxlength:(Belt.Option.map maxlength string_of_int) ?min
        ?minlength:(Belt.Option.map minlength string_of_int)
        ?multiple:(Belt.Option.map multiple Util.string_of_unit) ?name
        ?pattern:(Belt.Option.map pattern Js.Re.source) ?placeholder
        ?readonly:(Belt.Option.map readonly Util.string_of_unit)
        ?required:(Belt.Option.map required Util.string_of_unit)
        ?size:(Belt.Option.map size string_of_int) ?src
        ?step:(Belt.Option.map step stepToJs)
        ?_type:(Belt.Option.map _type _typeToJs) ?value
        ?width:(Belt.Option.map width string_of_int)
        ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.textbox
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
           ] Html_Attributes.Aria.t option)
    ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
    ?form ?formaction ?formenctype ?formmethod ?formnovalidate ?formtarget
    ?height ?list ?max ?maxlength ?min ?minlength ?multiple ?name ?pattern
    ?placeholder ?readonly ?required ?size ?src ?step ?_type ?value ?width
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "input"
      (Util.merge_all [|
        Attributes.make 
          ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
          ?form ?formaction ?formenctype ?formmethod ?formnovalidate ?formtarget
          ?height ?list ?max ?maxlength ?min ?minlength ?multiple ?name ?pattern
          ?placeholder ?readonly ?required ?size ?src ?step ?_type ?value ?width ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
    ?form ?formaction ?formenctype ?formmethod ?formnovalidate ?formtarget
    ?height ?list ?max ?maxlength ?min ?minlength ?multiple ?name ?pattern
    ?placeholder ?readonly ?required ?size ?src ?step ?_type ?value ?width
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module ?children:_ () =
    make ?aria ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
      ?form ?formaction ?formenctype ?formmethod ?formnovalidate ?formtarget
      ?height ?list ?max ?maxlength ?min ?minlength ?multiple ?name ?pattern
      ?placeholder ?readonly ?required ?size ?src ?step ?_type ?value ?width
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
      ()
end


module Ins = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/edits.html#the-ins-element} The Ins Element}
   ({{: https://www.w3.org/TR/html52/edits.html#elementdef-ins} W3C})
   *)

  type +'a t = ([> Html_Node.ins ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.flow | 'a Html_Node.phrasing
    | 'a Html_Node.palpable | Html_Node.other ] Html_Node.t

  module Attributes = struct
    external _make: ?cite:string -> ?datetime:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?cite ?datetime () =
      _make ?cite ?datetime:(Belt.Option.map datetime Js.Date.toISOString) ()
  end

  let make ?aria ?cite ?datetime
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "ins"
      (Util.merge_all [|
        Attributes.make ?cite ?datetime ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?cite ?datetime
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
    make ?aria ?cite ?datetime
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


module Kbd = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-kbd-element} The Kbd Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-kbd} W3C})
   *)

  type +'a t = ([> Html_Node.kbd ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "kbd"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Label = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/forms.html#the-label-element} The Label Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-label} W3C})
   *)

  type +'a t = ([> Html_Node.label ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?_for:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?_for
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "label"
      (Util.merge_all [|
        Attributes.make ?_for ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?_for
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
    make ?aria ?_for
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


module Legend = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-legend-element} The Legend Element}
   ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-legend} W3C})
   *)

  type +'a t = ([> Html_Node.legend ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.phrasing | Html_Node.headings | Html_Node.other] Html_Node.t

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "legend"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Li = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-li-element} The Li Element}
   ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-li} W3C})
   *)

  type +'a t = ([> Html_Node.li ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.listitem
           | Html_Attributes.Aria.option
           | Html_Attributes.Aria.presentation
           | Html_Attributes.Aria.radio
           | Html_Attributes.Aria.separator
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.treeitem
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "li"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Link = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/semantics.html#the-link-element} The Link Element}
   ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-link} W3C})
   *)

  type +'a t = ([> Html_Node.link ] as 'a) Html_Node.t

  module Attributes = struct
    external _make:
      ?href:string ->
      ?crossorigin:string ->
      ?rel:string ->
      ?media:string ->
      ?integrity:string ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:string ->
      ?sizes:string ->
      ?_as:string ->
      ?color:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?href ?crossorigin ?rel ?media ?integrity ?hreflang ?_type
      ?referrerpolicy ?sizes ?_as ?color () =
      _make ?href
        ?crossorigin:(Belt.Option.map crossorigin Html_Attributes.CrossOrigin.show)
        ?rel:(Belt.Option.map rel Html_Attributes.LinkType.Hyperlink.show)
        ?media:(Belt.Option.map media Css_Media.show)
        ?integrity ?hreflang ?_type
        ?referrerpolicy:
          (Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ?sizes ?_as
        ?color:(Belt.Option.map color Css_Value.Color.show)
        ()
  end

  let make
    ?href ?crossorigin ?rel ?media ?integrity ?hreflang ?_type ?referrerpolicy
    ?sizes ?_as ?color
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    (): _ t
    =
    Declaredom.make_empty "link"
      (Util.merge_all [|
        Attributes.make ?href ?crossorigin ?rel ?media ?integrity ?hreflang
          ?_type ?referrerpolicy ?sizes ?_as ?color ();
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
          ?title ?translate ()
      |])
      ()
    |> Internal.make


  let jsx
    ?href ?crossorigin ?rel ?media ?integrity ?hreflang ?_type ?referrerpolicy
    ?sizes ?_as ?color
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?children:_ () =
    make
      ?href ?crossorigin ?rel ?media ?integrity ?hreflang ?_type ?referrerpolicy
      ?sizes ?_as ?color
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
      ?title ?translate
      ()
end


module Main = struct
  (**
   {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-main} The Main Element}
   ({{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-main-element} W3C})
   *)

  type +'a t = ([> Html_Node.main ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.main
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.block Style.t option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "main"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Map = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/image-maps.html#the-map-element} The Map Element}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-map} W3C})
   *)

  type +'a t = ([> Html_Node.map ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.flow | 'a Html_Node.phrasing
    | 'a Html_Node.palpable | Html_Node.other ] Html_Node.t

  module Attributes = struct
    external make: ?name:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?name
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "map"
      (Util.merge_all [|
        Attributes.make ?name ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?name
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
    make ?aria ?name
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


module Mark = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-mark-element} The Mark Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-mark} W3C})
   *)

  type +'a t = ([> Html_Node.mark ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "mark"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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




module Span = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-span-element} The Span Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-span} W3C})
   *)

  type +'a t = ([> Html_Node.span ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    ?(style:Css_Property.inline Style.t option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "span"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
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
    make ?aria
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


module Title = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/semantics.html#the-title-element} The Title Element}
   ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-title} W3C})
   *)

  type +'a t = ([> Html_Node.title ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
    child: _ t
    =
    Declaredom.make "title"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      (Declaredom.make_text child)
    |> Internal.make


  let jsx ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(children=[]) () =
    make ?aria
      ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
      ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
      ?itemref ?itemscope ?itemtype ?lang ?nonce ?spellcheck ?style ?tabindex
      ?title ?translate
      ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
      ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
      ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
      ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
      ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll 
      (List.fold_left (fun acc e -> acc ^ e) "" children)
end


module Text = struct
  (**
   {{: https://dom.spec.whatwg.org/#interface-text} The Text Node}
   ({{: https://www.w3.org/TR/dom/#interface-text} W3C})
   *)

  type +'a t = ([> Html_Node.text ] as 'a) Html_Node.t

  let make (text: string): _ t = Declaredom.make_text text

  let jsx ?(children=[]) () = make @@ List.fold_left (^) "" children
end


module Fragment = struct
  (**
   {{: https://dom.spec.whatwg.org/#interface-documentfragment} Docuemnt Fragment}
   ({{: https://www.w3.org/TR/dom/#interface-documentfragment} W3C})
   *)

  type +'a t = ([> Html_Node.fragment ] as 'a) Html_Node.t

  type (+'a, +'b) child =
    ([< 'b Html_Node.content > `fragment ] as 'a) Html_Node.t

  let make (children:('a, 'b) child array): ('a, 'b) child = 
    Declaredom.make "fragment"
      (Js.Obj.empty () |> Obj.magic)
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?children () =
    make @@ Belt.Option.mapWithDefault children [||] Js.List.toVector
end
