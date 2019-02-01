module Internal = struct
  external source: Dom.node -> Dom.node Callbag.t -> unit = "source" [@@bs.send]
end

type +'a t = ([> [> `callbag] Html_Node.custom ] as 'a) Html_Node.t

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
  callbag: _ t
  =
  let callbag_element =
    Declaredom.make_empty "x-callbag"
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
  in
  callbag
  |> (CallbagBasics.map Html_Node.to_node)
  |> Internal.source callbag_element;
  Obj.magic callbag_element


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
  ?callbag () =
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
    (Js.Option.getWithDefault (CallbagBasics.from_array [||]) callbag)
