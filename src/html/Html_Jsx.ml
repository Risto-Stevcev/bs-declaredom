let a
  ?aria
  ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable
  ?dataset ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid
  ?itemprop ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.A.make
    ?aria
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable
    ?dataset ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid
    ?itemprop ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let abbr ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Abbr.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let address ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Address.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let aria ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
  ?referrerpolicy
  ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children:_ () =
  Html_Nodes.Area.make ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
    ?referrerpolicy
    ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll ()


let article ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Article.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let aside
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Aside.make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let audio ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
  Html_Nodes.Audio.make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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


let b
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.B.make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let base ?href ?target
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children:_ () =
  Html_Nodes.Base.make ?href ?target
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll ()


let bdi
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Bdi.make
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let bdo
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Bdo.make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable
    ?dataset ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let blockquote ?cite
  ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Blockquote.make ?cite
    ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let body ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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
  Html_Nodes.Body.make ?aria ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable
    ?dataset ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
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


let br ?aria ?accesskey ?class_name ?class_set ?contenteditable ?dataset ?dir
  ?draggable ?hidden ?id ?lang ?slot ?spellcheck ?tabindex ?title ?translate
  ?children:_ () =
  Html_Nodes.Br.make ?aria ?accesskey ?class_name ?class_set ?contenteditable ?dataset ?dir
    ?draggable ?hidden ?id ?lang ?slot ?spellcheck ?tabindex ?title ?translate
    ()


let button ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Button.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let canvas ?aria ?height ?width
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Canvas.make ?aria ?height ?width
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let caption ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Caption.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let cite ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Cite.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let code ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Code.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let col ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children:_ () =
  Html_Nodes.Col.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    ()


let colgroup ?aria ?span
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Colgroup.make ?aria ?span
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let data ?aria ?value
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Data.make ?aria ?value
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let datalist ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children () =
  Html_Nodes.Datalist.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let dd ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Dd.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let del ?aria ?cite ?datetime
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Del.make ?aria ?cite ?datetime
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let details ?aria ?_open
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Details.make ?aria ?_open
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let dfn ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Dfn.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let dialog ?aria ?_open
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Dialog.make ?aria ?_open
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let div ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Div.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let dl ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Dl.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let dt ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Dt.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let em ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Em.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let embed ?aria ?src ?_type ?width ?height
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children:_ () =
  Html_Nodes.Embed.make ?aria ?src ?_type ?width ?height
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    ()


let fieldset ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Fieldset.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let figcaption ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Figcaption.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let figure ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Figure.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let footer ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Footer.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let form ?aria ?accept_charset ?action ?autocomplete ?enctype ?_method ?name
  ?novalidate ?target
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Form.make ?aria ?accept_charset ?action ?autocomplete ?enctype ?_method ?name
    ?novalidate ?target
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let h1 ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.H1.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let h2 ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.H2.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let h3 ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.H3.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let h4 ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.H4.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let h5 ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.H5.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let h6 ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.H6.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let head ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children () =
  Html_Nodes.Head.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let header ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Header.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let hgroup ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Hgroup.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let hr ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children:_ () =
  Html_Nodes.Hr.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    ()


let html ?aria ?manifest
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children () =
  Html_Nodes.Html.make ?aria ?manifest
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let i ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.I.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let iframe ?aria
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
  ?style ?css_module ?children:_ () =
  Html_Nodes.Iframe.make ?aria
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
    ?style ?css_module
    ()


let img ?aria ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap ?width
  ?height ?referrerpolicy ?decoding
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children:_ () =
  Html_Nodes.Img.make ?aria ?alt ?src ?srcset ?sizes ?crossorigin ?usemap ?ismap ?width
    ?height ?referrerpolicy ?decoding
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    ()


let input ?aria ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
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
  ?style ?css_module ?children:_ () =
  Html_Nodes.Input.make ?aria ?accept ?alt ?autocomplete ?autofocus ?checked ?dirname ?disabled
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
    ?style ?css_module
    ()


let ins ?aria ?cite ?datetime
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Ins.make ?aria ?cite ?datetime
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let kbd ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Kbd.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let label ?aria ?_for
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Label.make ?aria ?_for
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let legend ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Legend.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let li ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Li.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let link
  ?href ?crossorigin ?rel ?media ?integrity ?hreflang ?_type ?referrerpolicy
  ?sizes ?_as ?color
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?children:_ () =
  Html_Nodes.Link.make
    ?href ?crossorigin ?rel ?media ?integrity ?hreflang ?_type ?referrerpolicy
    ?sizes ?_as ?color
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ()


let main ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Main.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let map ?aria ?name
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Map.make ?aria ?name
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let mark ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Mark.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let meta ?aria ?name ?http_equiv ?content ?charset
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children:_ () =
  Html_Nodes.Meta.make ?aria ?name ?http_equiv ?content ?charset
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ()


let meter ?aria ?value ?min ?max ?low ?high ?optimum
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Meter.make ?aria ?value ?min ?max ?low ?high ?optimum
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let nav ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Nav.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let noscript ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children () =
  Html_Nodes.Noscript.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let object_ ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Object.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let ol ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Ol.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let optgroup ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Optgroup.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let option ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Option.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let output ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Output.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let p ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.P.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let param ?aria
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
  ?children:_ () =
  Html_Nodes.Param.make ?aria
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
    ()


let picture
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Picture.make
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let pre ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Pre.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let progress ?aria ?value ?max
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Progress.make ?aria ?value ?max
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let q ?aria ?cite
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Q.make ?aria ?cite
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let rb ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Rb.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let rp ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children () =
  Html_Nodes.Rp.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let rt ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Rt.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let rtc ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Rtc.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let ruby ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Ruby.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let samp ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Samp.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let script
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?children:_ () =
  Html_Nodes.Script.make
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ()

module Script = struct
  let inline
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
    ?(children=[]) () =
    Html_Nodes.Script.make_inline
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
      (List.fold_left (^) "" children)
end


let section ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Section.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let select ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Select.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let slot
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
  Html_Nodes.Slot.make
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


let small ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Small.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let source ?aria
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
  ?style ?css_module ?children:_ () =
  Html_Nodes.Source.make ?aria
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
    ?style ?css_module
    ()


let span ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Span.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let strong ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Strong.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let style ?aria ?media
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?(children=[]) () =
  Html_Nodes.Style.make ?aria ?media
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (List.fold_left (^) "" children)


let sub ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Sub.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let summery ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Summary.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let sup ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Sup.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let table ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Table.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let tbody ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Tbody.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let td ?aria ?colspan ?rowspan ?headers
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Td.make ?aria ?colspan ?rowspan ?headers
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let template
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?children () =
  Html_Nodes.Template.make
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let textarea
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
  ?style ?css_module ?children () =
  Html_Nodes.Textarea.make
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let tfoot ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Tfoot.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let th ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Th.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let thead ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Thead.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let time ?aria ~datetime
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Time.make ?aria ~datetime
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let title ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?(children=[]) () =
  Html_Nodes.Title.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    (List.fold_left (fun acc e -> acc ^ e) "" children)


let tr ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Tr.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let track ?aria
  ?kind ~src ?srclang ?label ?default
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?children:_ () =
  Html_Nodes.Track.make ?aria
    ?kind ~src ?srclang ?label ?default
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate ()


let u ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.U.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let ul ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Ul.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let var ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
  ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
  ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
  ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
  ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
  ?style ?css_module ?children () =
  Html_Nodes.Var.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let video ?aria
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
  ?style ?css_module ?children () =
  Html_Nodes.Video.make ?aria
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
    ?style ?css_module
    (Belt.Option.mapWithDefault children [||] Js.List.toVector)


let wbr ?aria
  ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
  ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
  ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
  ?title ?translate
  ?children:_ () =
  Html_Nodes.Wbr.make ?aria
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?tabindex
    ?title ?translate
    ()


let text ?(children=[]) () = Html_Nodes.Text.make @@ List.fold_left (^) "" children


let fragment ?children () =
  Html_Nodes.Fragment.make @@ Belt.Option.mapWithDefault children [||] Js.List.toVector
