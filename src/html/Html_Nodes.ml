(* Use this instead of Css_Style.t for tree-shaking *)
type 'a style = 'a Css_Property.t Js.Dict.t

module Internal = struct
  external make: Dom.node -> _ Html_Node.t = "%identity"
end

module A = struct
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
    ?(aria:[< Html_Attributes.Aria.link
           | Html_Attributes.Aria.button
           | Html_Attributes.Aria.checkbox
           | Html_Attributes.Aria.radio
           | Html_Attributes.Aria.switch
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.treeitem
           ] Html_Attributes.Aria.t option)
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Abbr = struct
  type +'a t = ([> Html_Node.abbr ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Address = struct
  type +'a t = ([> Html_Node.address ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.group Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Area = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Article = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Aside = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Audio = struct
  type +'a t = ([> Html_Node.audio ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.source | 'a Html_Node.flow | 'a Html_Node.phrasing
    | Html_Node.interactive | Html_Node.embedded | Html_Node.other ] Html_Node.t

  module Attributes = struct
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
        ?preload:(Belt.Option.map preload Html_Attributes.Preload.show)
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module B = struct
  type +'a t = ([> Html_Node.b ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Base = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Bdi = struct
  type +'a t = ([> Html_Node.bdi ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Bdo = struct
  type +'a t = ([> Html_Node.bdo ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end



module Blockquote = struct
  type +'a t = ([> Html_Node.blockquote ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?cite:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?cite
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Body = struct
  type +'a t = ([> Html_Node.body ] as 'a) Html_Node.t

  type +'a children = ['a Html_Node.flow | Html_Node.other]
  type +'a child = 'a children Html_Node.t

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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Br = struct
  type +'a t = ([> Html_Node.br ] as 'a) Html_Node.t

  let make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate (): _ t
    =
    Declaredom.make_empty "br"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ()
      |])
      ()
    |> Internal.make
end


module Button = struct
  type +'a t = ([> Html_Node.button ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    type _type = [ `submit | `reset | `button ] [@@bs.deriving jsConverter]

    external _make:
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
      ?_type:string ->
      ?value: string ->
      unit -> Html_Attributes.t = "" [@@bs.obj]

    let make ?autofocus ?disabled ?form ?formaction ?formenctype ?formmethod
      ?formnovalidate ?formtarget ?formelements ?name ?_type ?value () =
      _make ?autofocus:(Belt.Option.map autofocus Util.string_of_unit)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?form ?formaction
        ?formenctype:(Belt.Option.map formenctype Html_Attributes.Form.Enctype.show)
        ?formmethod:(Belt.Option.map formmethod Html_Attributes.Form.Method.show)
        ?formnovalidate:(Belt.Option.map formnovalidate Util.string_of_unit)
        ?formtarget:(Belt.Option.map formtarget Html_Attributes.Target.show)
        ?formelements ?name
        ?_type:(Belt.Option.map _type _typeToJs)
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
    ?formnovalidate ?formtarget ?formelements ?name ?_type ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "button"
      (Util.merge_all [|
        Attributes.make ?autofocus ?disabled ?form ?formaction ?formenctype
          ?formmethod ?formnovalidate ?formtarget ?formelements ?name ?_type
          ?value ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Canvas = struct
  type +'a t = ([> Html_Node.canvas ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.embedded
    | 'a Html_Node.palpable | Html_Node.other
    ] Html_Node.t

  module Attributes = struct
    external make: ?width:int -> ?height:int -> unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?height ?width
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Caption = struct
  type +'a t = ([> Html_Node.caption ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_caption style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Cite = struct
  type +'a t = ([> Html_Node.cite ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Code = struct
  type +'a t = ([> Html_Node.code ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Col = struct
  type +'a t = ([> Html_Node.col ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Colgroup = struct
  type +'a t = ([> Html_Node.colgroup ] as 'a) Html_Node.t

  type child =
    [Html_Node.col | Html_Node.template | Html_Node.fragment] Html_Node.t

  module Attributes = struct
    external make: ?span:int -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?span
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_column_group style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Data = struct
  type +'a t = ([> Html_Node.data ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?value:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Datalist = struct
  type +'a t = ([> Html_Node.datalist ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.phrasing | Html_Node.option
    | Html_Node.Element.script_supporting | Html_Node.other ] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.listbox Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Dd = struct
  type +'a t = ([> Html_Node.dd ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Del = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Details = struct
  type +'a t = ([> Html_Node.details ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.summary | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make: ?_open:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
    let make ?_open () =
      _make ?_open:(Belt.Option.map _open Util.string_of_unit) ()
  end

  let make ?(aria:Html_Attributes.Aria.group Html_Attributes.Aria.t option)
    ?_open
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "details"
      (Util.merge_all [|
        Attributes.make ?_open ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Dfn = struct
  type +'a t = ([> Html_Node.dfn ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Dialog = struct
  type +'a t = ([> Html_Node.dialog ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external _make: ?_open:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
    let make ?_open () =
      _make ?_open:(Belt.Option.map _open Util.string_of_unit) ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.dialog
           | Html_Attributes.Aria.alertdialog
           ] Html_Attributes.Aria.t option)
    ?_open
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "dialog"
      (Util.merge_all [|
        Attributes.make ?_open ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Div = struct
  type +'a t = ([> Html_Node.div ] as 'a) Html_Node.t
  type +'a children = ['a Html_Node.flow | Html_Node.other]
  type +'a child = 'a children Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Dl = struct
  type +'a t = ([> Html_Node.dl ] as 'a) Html_Node.t

  type child =
    [ Html_Node.dd | Html_Node.dt | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.list
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Dt = struct
  type +'a t = ([> Html_Node.dt ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Em = struct
  type +'a t = ([> Html_Node.em ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Embed = struct
  type +'a t = ([> Html_Node.embed ] as 'a) Html_Node.t

  module Attributes = struct
    external make:
      ?src:string -> ?_type:string -> ?width:int -> ?height:int -> unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make
    ?(aria:[< Html_Attributes.Aria.application
           | Html_Attributes.Aria.document
           | Html_Attributes.Aria.img
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?src ?_type ?width ?height
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.replaced_inline style option)
    ?(css_module:Css_Property.replaced_inline Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "embed"
      (Util.merge_all [|
        Attributes.make ?src ?_type ?width ?height ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Fieldset = struct
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
    ?form ?name ?disabled
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "fieldset"
      (Util.merge_all [|
        Attributes.make ?form ?name ?disabled ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end



module Figcaption = struct
  type +'a t = ([> Html_Node.figcaption ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Figure = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Footer = struct
  type +'a t = ([> Html_Node.footer ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.contentinfo
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Form = struct
  type +'a t = ([> Html_Node.form ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    type autocomplete = [ `on | `off ] [@@bs.deriving jsConverter]

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
        ?autocomplete:(Belt.Option.map autocomplete autocompleteToJs)
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module H1 = struct
  type +'a t = ([> Html_Node.h1 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module H2 = struct
  type +'a t = ([> Html_Node.h2 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module H3 = struct
  type +'a t = ([> Html_Node.h3 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module H4 = struct
  type +'a t = ([> Html_Node.h4 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module H5 = struct
  type +'a t = ([> Html_Node.h5 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module H6 = struct
  type +'a t = ([> Html_Node.h6 ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.heading
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Head = struct
  type +'a t = ([> Html_Node.head ] as 'a) Html_Node.t

  type child = [ Html_Node.metadata | Html_Node.fragment ] Html_Node.t

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Header = struct
  type +'a t = ([> Html_Node.header ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.banner
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Hgroup = struct
  type +'a t = ([> Html_Node.hgroup ] as 'a) Html_Node.t

  type child =
    [ Html_Node.headings | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Hr = struct
  type +'a t = ([> Html_Node.hr ] as 'a) Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.separator
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Html = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module I = struct
  type +'a t = ([> Html_Node.i ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Iframe = struct
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
      ?width:int ->
      ?height:int ->
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
        ?width ?height
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.replaced_inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Img = struct
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
      ?width:int ->
      ?height:int ->
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
        ?width ?height
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.replaced_inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Input = struct
  type +'a t = ([> Html_Node.input ] as 'a) Html_Node.t

  module Attributes = struct
    type _type =
      [ `hidden | `text | `search | `tel | `url | `email | `password | `date
      | `month | `week | `time | `datetime_local [@bs.as "datetime-local"]
      | `number | `range | `color | `checkbox | `radio | `file | `submit
      | `image | `reset | `button ] [@@bs.deriving jsConverter]

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
      ?height:int ->
      ?list:string ->
      ?max:string ->
      ?maxlength:int ->
      ?min:string ->
      ?minlength:int ->
      ?multiple:string ->
      ?name:string ->
      ?pattern:string ->
      ?placeholder:string ->
      ?readonly:string ->
      ?required:string ->
      ?size:int ->
      ?src:string ->
      ?step:string ->
      ?_type:string ->
      ?value:'a ->
      ?width:int ->
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
        ?dirname:(Belt.Option.map dirname Html_Attributes.Dirname.show)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?form ?formaction
        ?formenctype:(Belt.Option.map formenctype Html_Attributes.Form.Enctype.show)
        ?formmethod:(Belt.Option.map formmethod Html_Attributes.Form.Method.show)
        ?formnovalidate:(Belt.Option.map formnovalidate Util.string_of_unit)
        ?formtarget:(Belt.Option.map formtarget Html_Attributes.Target.show)
        ?height ?list ?max ?maxlength ?min ?minlength
        ?multiple:(Belt.Option.map multiple Util.string_of_unit) ?name
        ?pattern:(Belt.Option.map pattern Js.Re.source) ?placeholder
        ?readonly:(Belt.Option.map readonly Util.string_of_unit)
        ?required:(Belt.Option.map required Util.string_of_unit)
        ?size ?src
        ?step:(Belt.Option.map step stepToJs)
        ?_type:(Belt.Option.map _type _typeToJs) ?value
        ?width
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Ins = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Kbd = struct
  type +'a t = ([> Html_Node.kbd ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Label = struct
  type +'a t = ([> Html_Node.label ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?_for:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?_for
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Legend = struct
  type +'a t = ([> Html_Node.legend ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.phrasing | Html_Node.headings | Html_Node.other] Html_Node.t

  let make
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Li = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.list_item style option)
    ?(css_module:Css_Property.list_item Css_Module.t option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Link = struct
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
        ?rel:(Belt.Option.map rel Html_Attributes.LinkType.show)
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ()
      |])
      ()
    |> Internal.make
end


module Main = struct
  type +'a t = ([> Html_Node.main ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.main
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Map = struct
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
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Mark = struct
  type +'a t = ([> Html_Node.mark ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Meta = struct
  type +'a t = ([> Html_Node.meta ] as 'a) Html_Node.t

  module Attributes = struct
    type http_equiv =
      [ `content_language [@bs.as "content-language"]
      | `content_type [@bs.as "content-type"]
      | `default_style [@bs.as "default-style"]
      | `refresh
      | `set_cookie [@bs.as "set-cookie"]
      | `x_ua_compatible [@bs.as "x-ua-compatible"]
      | `content_security_policy [@bs.as "content-security-policy"]
      ] [@@bs.deriving jsConverter]

    external _make:
      ?name:string ->
      ?http_equiv:string ->
      ?content:string ->
      ?charset:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?name ?http_equiv ?content ?charset () =
      _make ?name ?http_equiv:(Belt.Option.map http_equiv http_equivToJs)
        ?content ?charset ()
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?name ?http_equiv ?content ?charset
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (): _ t
    =
    Declaredom.make_empty "meta"
      (Util.merge_all [|
        Attributes.make ?name ?http_equiv ?content ?charset ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Meter = struct
  type +'a t = ([> Html_Node.meter ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make:
      ?value:float ->
      ?min:float ->
      ?max:float ->
      ?low:float ->
      ?high:float ->
      ?optimum:float ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?value ?min ?max ?low ?high ?optimum
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "meter"
      (Util.merge_all [|
        Attributes.make ?value ?min ?max ?low ?high ?optimum ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Nav = struct
  type +'a t = ([> Html_Node.nav ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.navigation Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "nav"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Noscript = struct
  type +'a t = ([> Html_Node.noscript ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.metadata | 'a Html_Node.flow
    | 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (children:_ child array): _ t
    =
    Declaredom.make "noscript"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Object = struct
  type +'a t = ([> Html_Node.object_ ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.param | 'a Html_Node.flow | 'a Html_Node.phrasing
    | Html_Node.embedded | Html_Node.interactive | Html_Node.Element.listed
    | Html_Node.Element.submittable | 'a Html_Node.palpable | Html_Node.other
    ] Html_Node.t

  module Attributes = struct
    external _make:
      ?data:string ->
      ?_type:string ->
      ?typemustmatch:string ->
      ?name:string ->
      ?usemap:string ->
      ?form:string ->
      ?width:int ->
      ?height:int ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?data ?_type ?typemustmatch ?name ?usemap ?form ?width ?height () =
      _make ?data ?_type
        ?typemustmatch:(Belt.Option.map typemustmatch Util.string_of_unit)
        ?name ?usemap ?form ?width ?height ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.application
           | Html_Attributes.Aria.document
           | Html_Attributes.Aria.img
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?data ?_type ?typemustmatch ?name ?usemap ?form ?width ?height
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "object"
      (Util.merge_all [|
        Attributes.make ?data ?_type ?typemustmatch ?name ?usemap ?form ?width
          ?height ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Ol = struct
  type +'a t = ([> Html_Node.ol ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.li | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  module Attributes = struct
    type _type =
      [ `decimal
      | `lower_alpha [@bs.as "lower-alpha"]
      | `upper_alpha [@bs.as "upper-alpha"]
      | `lower_roman [@bs.as "lower-roman"]
      | `upper_roman [@bs.as "upper-roman"]
      ] [@@bs.deriving jsConverter]

    external _make:
      ?reversed:string ->
      ?start:int ->
      ?_type:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?reversed ?start ?_type () =
      _make ?reversed:(Belt.Option.map reversed Util.string_of_unit)
        ?start ?_type:(Belt.Option.map _type _typeToJs) ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.list
           | Html_Attributes.Aria.directory
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.listbox
           | Html_Attributes.Aria.menubar
           | Html_Attributes.Aria.presentation
           | Html_Attributes.Aria.radiogroup
           | Html_Attributes.Aria.tablist
           | Html_Attributes.Aria.toolbar
           | Html_Attributes.Aria.tree
           ] Html_Attributes.Aria.t option)
    ?reversed ?start ?_type
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "ol"
      (Util.merge_all [|
        Attributes.make ?reversed ?start ?_type ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Optgroup = struct
  type +'a t = ([> Html_Node.optgroup ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.option | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  module Attributes = struct
    external _make:
      ?disabled:string ->
      ?label:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?disabled ?label () =
      _make ?disabled:(Belt.Option.map disabled Util.string_of_unit) ?label ()
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?disabled ~label
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "optgroup"
      (Util.merge_all [|
        Attributes.make ?disabled ~label ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Option = struct
  type +'a t = ([> Html_Node.option ] as 'a) Html_Node.t

  type +'a child = Html_Node.other Html_Node.t

  module Attributes = struct
    external _make:
      ?disabled:string ->
      ?label:string ->
      ?selected:string ->
      ?value:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?disabled ?label ?selected ?value () =
      _make ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?selected:(Belt.Option.map selected Util.string_of_unit)
        ?label ?value ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.option
           | Html_Attributes.Aria.separator
           ] Html_Attributes.Aria.t option)
    ?disabled ?label ?selected ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "option"
      (Util.merge_all [|
        Attributes.make ?disabled ?label ?selected ?value ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Output = struct
  type +'a t = ([> Html_Node.output ] as 'a) Html_Node.t

  type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

  module Attributes = struct
    external make:
      ?_for:string ->
      ?form:string ->
      ?name:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria
    ?_for ?form ?name
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "output"
      (Util.merge_all [|
        Attributes.make ?_for ?form ?name ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module P = struct
  type +'a t = ([> Html_Node.p ] as 'a) Html_Node.t

  type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "p"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Param = struct
  type +'a t = ([> Html_Node.param ] as 'a) Html_Node.t

  module Attributes = struct
    external make:
      ?name:string ->
      ?value:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?name ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (): _ t
    =
    Declaredom.make_empty "param"
      (Util.merge_all [|
        Attributes.make ?name ?value ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Picture = struct
  type +'a t = ([> Html_Node.picture ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.img | Html_Node.source
    | Html_Node.Element.script_supporting | Html_Node.fragment ] Html_Node.t

  let make
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "picture"
      (Util.merge_all [|
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Pre = struct
  type +'a t = ([> Html_Node.pre ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "pre"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Progress = struct
  type +'a t = ([> Html_Node.progress ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make:
      ?value:float ->
      ?max:float ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?(aria:Html_Attributes.Aria.progressbar Html_Attributes.Aria.t option)
    ?value ?max
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "progress"
      (Util.merge_all [|
        Attributes.make ?value ?max ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Q = struct
  type +'a t = ([> Html_Node.q ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?cite:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?cite
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "q"
      (Util.merge_all [|
        Attributes.make ?cite ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Rb = struct
  type +'a t = ([> Html_Node.rb ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.ruby_base style option)
    ?(css_module:Css_Property.ruby_base Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "rb"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Rp = struct
  type +'a t = ([> Html_Node.rp ] as 'a) Html_Node.t

  type child = Html_Node.other Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (children:child array): _ t
    =
    Declaredom.make "rp"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
end


module Rt = struct
  type +'a t = ([> Html_Node.rt ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.ruby_text style option)
    ?(css_module:Css_Property.ruby_text Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "rt"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Rtc = struct
  type +'a t = ([> Html_Node.rtc ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.phrasing | Html_Node.rt | Html_Node.rp
    | Html_Node.other ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.ruby_text_container style option)
    ?(css_module:Css_Property.ruby_text_container Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "rtc"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Ruby = struct
  type +'a t = ([> Html_Node.ruby ] as 'a) Html_Node.t

  type +'a child =
    [ 'a Html_Node.phrasing | Html_Node.rp | Html_Node.rt | Html_Node.rb
    | Html_Node.rtc | Html_Node.other ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.ruby style option)
    ?(css_module:Css_Property.ruby Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "ruby"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module S = struct
  type +'a t = ([> Html_Node.s ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "s"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Samp = struct
  type +'a t = ([> Html_Node.samp ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "samp"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Script = struct
  type +'a t = ([> Html_Node.script ] as 'a) Html_Node.t

  module Attributes = struct
    external _make:
      ?src:string ->
      ?_type:string ->
      ?nomodule:string ->
      ?async:string ->
      ?defer:string ->
      ?crossorigin:string ->
      ?integrity:string ->
      ?referrerpolicy:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?src ?_type ?nomodule ?async ?defer ?crossorigin ?integrity
      ?referrerpolicy () =
      _make ?src ?_type
        ?nomodule:(Belt.Option.map nomodule Util.string_of_unit)
        ?async:(Belt.Option.map async Util.string_of_unit)
        ?defer:(Belt.Option.map defer Util.string_of_unit)
        ?crossorigin:(Belt.Option.map crossorigin Html_Attributes.CrossOrigin.show)
        ?integrity
        ?referrerpolicy:(Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ()
  end

  let make
    ?src ?_type ?nomodule ?async ?defer ?crossorigin ?integrity ?referrerpolicy
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (): _ t
    =
    Declaredom.make_empty "script"
      (Util.merge_all [|
        Attributes.make ?src ?_type ?nomodule ?async ?defer ?crossorigin
          ?integrity ?referrerpolicy ();
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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


  (** An inline script element *)
  let make_inline
    ?_type ?nomodule ?async ?defer ?crossorigin ?integrity ?referrerpolicy
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    contents: _ t
    =
    Declaredom.make_with_text "script"
      (Util.merge_all [|
        Attributes.make ?_type ?nomodule ?async ?defer ?crossorigin
          ?integrity ?referrerpolicy ();
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      contents
    |> Internal.make
end


module Section = struct
  type +'a t = ([> Html_Node.section ] as 'a) Html_Node.t

  type +'a children = ['a Html_Node.flow | Html_Node.other]
  type +'a child = 'a children Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.region
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
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "section"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Select = struct
  type +'a t = ([> Html_Node.select ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.option | Html_Node.optgroup
    | Html_Node.Element.script_supporting | Html_Node.fragment ] Html_Node.t

  module Attributes = struct
    external _make:
      ?autocomplete:string ->
      ?autofocus:string ->
      ?disabled:string ->
      ?form:string ->
      ?multiple:string ->
      ?name:string ->
      ?required:string ->
      ?size:int ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?autocomplete ?autofocus ?disabled ?form ?multiple ?name ?required
      ?size () =
      _make
        ?autocomplete:(Belt.Option.map autocomplete Html_Attributes.AutoComplete.show)
        ?autofocus:(Belt.Option.map autofocus Util.string_of_unit)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit) ?form
        ?multiple:(Belt.Option.map multiple Util.string_of_unit) ?name
        ?required:(Belt.Option.map required Util.string_of_unit) ?size ()
  end

  let make
    ?(aria:[< Html_Attributes.Aria.combobox
           | Html_Attributes.Aria.listbox
           ] Html_Attributes.Aria.t option)
    ?autocomplete ?autofocus ?disabled ?form ?multiple ?name ?required ?size
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline_block style option)
    ?(css_module:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "select"
      (Util.merge_all [|
        Attributes.make ?autocomplete ?autofocus ?disabled ?form ?multiple ?name
          ?required ?size ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Slot = struct
  type +'a t = ([> Html_Node.slot ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.flow | 'a Html_Node.phrasing | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make: ?name:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?name
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
    Declaredom.make "slot"
      (Util.merge_all [|
        Attributes.make ?name ();
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
end


module Small = struct
  type +'a t = ([> Html_Node.small ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "small"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Source = struct
  type +'a t = ([> Html_Node.source ] as 'a) Html_Node.t

  module Attributes = struct
    external _make:
      ?src:string -> ?_type:string -> ?srcset:string -> ?sizes:string ->
      ?media:string -> unit -> Html_Attributes.t = "" [@@bs.obj]

    let make ?src ?_type ?srcset ?sizes ?media () =
      _make ?src ?_type ?srcset ?sizes
        ?media:(Belt.Option.map media Css_Media.show) ()
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?src ?_type ?srcset ?sizes ?media
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make_empty "source"
      (Util.merge_all [|
        Attributes.make ?src ?_type ?srcset ?sizes ?media ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Span = struct
  type +'a t = ([> Html_Node.span ] as 'a) Html_Node.t

  type +'a children = ['a Html_Node.phrasing | Html_Node.other]
  type +'a child = 'a children Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Strong = struct
  type +'a t = ([> Html_Node.strong ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "strong"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Style = struct
  type +'a t = ([> Html_Node.style ] as 'a) Html_Node.t

  module Attributes = struct
    external _make: ?media:string -> unit -> Html_Attributes.t = "" [@@bs.obj]

    let make ?media () =
      _make ?media:(Belt.Option.map media Css_Media.show) ()
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?media
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    contents: _ t
    =
    Declaredom.make_with_text "style"
      (Util.merge_all [|
        Attributes.make ?media ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      contents
    |> Internal.make
end


module Sub = struct
  type +'a t = ([> Html_Node.sub ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "sub"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Summary = struct
  type +'a t = ([> Html_Node.summary ] as 'a) Html_Node.t

  type +'a child =
    ['a Html_Node.phrasing | Html_Node.headings | Html_Node.other] Html_Node.t

  let make ?(aria:Html_Attributes.Aria.button Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "summary"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Sup = struct
  type +'a t = ([> Html_Node.sup ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "sup"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Table = struct
  type +'a t = ([> Html_Node.table ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.caption | Html_Node.colgroup | Html_Node.thead | Html_Node.tbody
    | Html_Node.tr | Html_Node.tfoot | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table style option)
    ?(css_module:Css_Property.table Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "table"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Tbody = struct
  type +'a t = ([> Html_Node.tbody ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.tr | Html_Node.Element.script_supporting | Html_Node.fragment
    ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_row_group style option)
    ?(css_module:Css_Property.table_row_group Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "tbody"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Td = struct
  type +'a t = ([> Html_Node.td ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.flow | Html_Node.other] Html_Node.t

  module Attributes = struct
    external make:
      ?colspan:int -> ?rowspan:int -> ?headers:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?aria ?colspan ?rowspan ?headers
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_cell style option)
    ?(css_module:Css_Property.table_cell Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "td"
      (Util.merge_all [|
        Attributes.make ?colspan ?rowspan ?headers ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Template = struct
  type +'a t = ([> Html_Node.template ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.content Html_Node.t

  let make
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    (children:_ child array): _ t
    =
    Declaredom.make "template"
      (Util.merge_all [|
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make
end


module Textarea = struct
  type +'a t = ([> Html_Node.textarea ] as 'a) Html_Node.t

  type child = Html_Node.other Html_Node.t

  module Attributes = struct
    type wrap = [ `soft | `hard ] [@@bs.deriving jsConverter]

    external _make:
      ?autocomplete:string -> ?autofocus:string -> ?cols:int ->
      ?dirname:string -> ?disabled:string -> ?form:string ->
      ?maxlength:int -> ?minlength:int -> ?name:string ->
      ?placeholder:string -> ?readonly:string -> ?required:string ->
      ?rows:int -> ?wrap:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?autocomplete ?autofocus ?cols ?dirname ?disabled ?form ?maxlength
      ?minlength ?name ?placeholder ?readonly ?required ?rows ?wrap () =
      _make
        ?autocomplete:(Belt.Option.map autocomplete Html_Attributes.AutoComplete.show)
        ?autofocus:(Belt.Option.map autofocus Util.string_of_unit) ?cols
        ?dirname:(Belt.Option.map dirname Html_Attributes.Dirname.show)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?form ?maxlength ?minlength ?name ?placeholder
        ?readonly:(Belt.Option.map readonly Util.string_of_unit)
        ?required:(Belt.Option.map required Util.string_of_unit) ?rows
        ?wrap:(Belt.Option.map wrap wrapToJs) ()
  end

  let make
    ?(aria:Html_Attributes.Aria.textbox Html_Attributes.Aria.t option)
    ?autocomplete ?autofocus ?cols ?dirname ?disabled ?form ?maxlength
    ?minlength ?name ?placeholder ?readonly ?required ?rows ?wrap
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "textarea"
      (Util.merge_all [|
        Attributes.make ?autocomplete ?autofocus ?cols ?dirname ?disabled ?form
          ?maxlength ?minlength ?name ?placeholder ?readonly ?required ?rows
          ?wrap ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Tfoot = struct
  type +'a t = ([> Html_Node.tfoot ] as 'a) Html_Node.t

  type child =
    [ Html_Node.tr | Html_Node.Element.script_supporting | Html_Node.fragment
    ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_footer_group style option)
    ?(css_module:Css_Property.table_footer_group Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "tfoot"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Th = struct
  type +'a t = ([> Html_Node.th ] as 'a) Html_Node.t

  type +'a child = [ 'a Html_Node.flow | Html_Node.other ] Html_Node.t

  module Attributes = struct
    type scope =
      [ `row | `col | `rowgroup | `colgroup | `auto ]
      [@@bs.deriving jsConverter]

    external _make:
      ?colspan:int ->
      ?rowspan:int ->
      ?headers:string ->
      ?scope:string ->
      ?abbr:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?colspan ?rowspan ?headers ?scope ?abbr () =
      _make ?colspan ?rowspan ?headers
        ?scope:(Belt.Option.map scope scopeToJs) ?abbr ()
  end

  let make ?aria
    ?colspan ?rowspan ?headers ?scope ?abbr
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_cell style option)
    ?(css_module:Css_Property.table_cell Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "th"
      (Util.merge_all [|
        Attributes.make ?colspan ?rowspan ?headers ?scope ?abbr ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Thead = struct
  type +'a t = ([> Html_Node.thead ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.tr | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_header_group style option)
    ?(css_module:Css_Property.table_header_group Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "thead"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Time = struct
  type +'a t = ([> Html_Node.time ] as 'a) Html_Node.t

  type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

  module Attributes = struct
    external _make: datetime:string -> unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ~datetime () =
      _make ~datetime:(Js.Date.toISOString datetime) ()
  end

  let make ?aria ~datetime
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "time"
      (Util.merge_all [|
        Attributes.make ~datetime ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Title = struct
  type +'a t = ([> Html_Node.title ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
          ?title ?translate ();
        Html_Events.Global.make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut
          ?on_dblclick ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
          ?on_dragover ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown
          ?on_keypress ?on_keyup ?on_mousedown ?on_mouseenter ?on_mouseleave
          ?on_mousemove ?on_mouseout ?on_mouseover ?on_mouseup ?on_wheel ?on_paste
          ?on_scroll ()
      |])
      [|Declaredom.make_text child|]
    |> Internal.make
end


module Tr = struct
  type +'a t = ([> Html_Node.tr ] as 'a) Html_Node.t

  type child =
    [ Html_Node.th | Html_Node.td | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.table_row style option)
    ?(css_module:Css_Property.table_row Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "tr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Track = struct
  type +'a t = ([> Html_Node.track ] as 'a) Html_Node.t

  module Attributes = struct
    type kind =
      [ `subtitles | `captions | `descriptions | `chapters | `metadata ]
      [@@bs.deriving jsConverter]

    external _make:
      ?kind:string ->
      ?src:string ->
      ?srclang:string ->
      ?label:string ->
      ?default:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?kind ?src ?srclang ?label ?default () =
      _make ?kind:(Belt.Option.map kind kindToJs)
        ?src ?srclang ?label
        ?default:(Belt.Option.map default Util.string_of_unit) ()
  end

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?kind ~src ?srclang ?label ?default
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    (): _ t
    =
    Declaredom.make_empty "track"
      (Util.merge_all [|
        Attributes.make ?kind ~src ?srclang ?label ?default ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ()
      |])
      ()
    |> Internal.make
end


module U = struct
  type +'a t = ([> Html_Node.u ] as 'a) Html_Node.t

  type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "u"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Ul = struct
  type +'a t = ([> Html_Node.ul ] as 'a) Html_Node.t

  type child =
    [ Html_Node.li | Html_Node.Element.script_supporting
    | Html_Node.fragment ] Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.list
           | Html_Attributes.Aria.directory
           | Html_Attributes.Aria.group
           | Html_Attributes.Aria.listbox
           | Html_Attributes.Aria.presentation
           | Html_Attributes.Aria.menubar
           | Html_Attributes.Aria.radiogroup
           | Html_Attributes.Aria.tablist
           | Html_Attributes.Aria.toolbar
           | Html_Attributes.Aria.tree
           ] Html_Attributes.Aria.t option)
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.block style option)
    ?(css_module:Css_Property.block Css_Module.t option)
    (children:child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "ul"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Var = struct
  type +'a t = ([> Html_Node.var ] as 'a) Html_Node.t

  type +'a child = [ 'a Html_Node.phrasing | Html_Node.other ] Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "var"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Video = struct
  type +'a t = ([> Html_Node.video ] as 'a) Html_Node.t

  type +'a child =
    [ Html_Node.track | Html_Node.source | Html_Node.fragment ] Html_Node.t

  module Attributes = struct
    external _make:
      ?src:string ->
      ?crossorigin:string ->
      ?poster:string ->
      ?preload:string ->
      ?autoplay:string ->
      ?playsinline:string ->
      ?loop:string ->
      ?muted:string ->
      ?controls:string ->
      ?width:int ->
      ?height:int ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?src ?crossorigin ?poster ?preload ?autoplay ?playsinline
      ?loop ?muted ?controls ?width ?height () =
      _make ?src
        ?crossorigin:(Belt.Option.map crossorigin Html_Attributes.CrossOrigin.show)
        ?poster
        ?preload:(Belt.Option.map preload Html_Attributes.Preload.show)
        ?autoplay:(Belt.Option.map autoplay Util.string_of_unit)
        ?playsinline:(Belt.Option.map playsinline Util.string_of_unit)
        ?loop:(Belt.Option.map loop Util.string_of_unit)
        ?muted:(Belt.Option.map muted Util.string_of_unit)
        ?controls:(Belt.Option.map controls Util.string_of_unit)
        ?width ?height ()
  end

  let make
    ?(aria:Html_Attributes.Aria.application Html_Attributes.Aria.t option)
    ?src ?crossorigin ?poster ?preload ?autoplay ?playsinline ?loop ?muted
    ?controls ?width ?height
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?(style:Css_Property.inline style option)
    ?(css_module:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let class_name = Css_Module.get_class ?class_name ?css_module ()
    in
    Declaredom.make "video"
      (Util.merge_all [|
        Attributes.make ?src ?crossorigin ?poster ?preload ?autoplay
          ?playsinline ?loop ?muted ?controls ?width ?height ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
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
end


module Wbr = struct
  type +'a t = ([> Html_Node.wbr ] as 'a) Html_Node.t

  let make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    (): _ t
    =
    Declaredom.make_empty "wbr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
          ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
          ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
          ?title ?translate ()
      |])
      ()
    |> Internal.make
end


module Text = struct
  type +'a t = ([> Html_Node.text ] as 'a) Html_Node.t

  let make (text: string): _ t = Internal.make @@ Declaredom.make_text text
end


module Fragment = struct
  type +'a t = ([> Html_Node.fragment ] as 'a) Html_Node.t

  type (+'a, +'b) child =
    ([< 'b Html_Node.content | Html_Node.other > `fragment ] as 'a) Html_Node.t

  let make (children:('a, 'b) child array): ('a, 'b) child =
    children
    |> Js.Array.map Html_Node.to_node
    |> Declaredom.make_fragment
    |> Internal.make
end
