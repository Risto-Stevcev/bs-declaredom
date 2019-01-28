(**
 HTML Elements
 
 Includes nodes like text nodes and fragments.

 See the {{: https://html.spec.whatwg.org/multipage/indices.html#elements-3} full element table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#index-elements} W3C}) 
 and the {{: https://html.spec.whatwg.org/multipage/indices.html#events-2} events table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#events-table} W3C})
 for reference.
 *)


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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "a"
      (Util.merge_all [|
        Attributes.make ?href ?target ?download ?rel ?rev ?hreflang ?_type
          ?referrerpolicy ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make 
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable
    ?dataSet ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId
    ?itemProp ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?style ?cssModule ?children () =
    make
      ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable
      ?dataSet ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId
      ?itemProp ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "abbr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "address"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll (): _ t =
    Declaredom.make_empty "area"
      (Util.merge_all [|
        Attributes.make ?alt ?coords ?download ?href ?hreflang ?rel ?shape
          ?target ?_type ?referrerpolicy ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      ()
    |> Internal.make


  let jsx ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
    ?referrerpolicy 
    ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?children:_ () =
    make ?alt ?coords ?download ?href ?hreflang ?rel ?shape ?target ?_type
      ?referrerpolicy 
      ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll ()
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "article"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "aside"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
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
    type crossorigin =
      [ `anonymous | `use_credentials [@bs.as "use-credentials"] ]
      [@@bs.deriving jsConverter]

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
      _make ?src ?crossorigin:(Belt.Option.map crossorigin crossoriginToJs)
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onLoad ?onLoadEnd ?onSecurityPolicyViolation
    ?onAbort ?onCanPlay ?onCanPlayThrough ?onCueChange ?onDurationChange
    ?onEmptied ?onEnded ?onError ?onLoadedMetaData ?onLoadedData ?onLoadStart
    ?onPause ?onPlay ?onPlaying ?onProgress ?onRateChange ?onResize ?onSeeked
    ?onSeeking ?onSuspend ?onStalled ?onTimeUpdate ?onVolumeChange ?onWaiting 
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    (children:_ child array): _ t
    =
    Declaredom.make "audio"
      (Util.merge_all [|
        Attributes.make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
          ?title ?translate ();
        Html_Events.Resource.make ?onLoad ?onLoadEnd ?onSecurityPolicyViolation ();
        Html_Events.Media.make ?onAbort ?onCanPlay ?onCanPlayThrough
          ?onCueChange ?onDurationChange ?onEmptied ?onEnded ?onError
          ?onLoadedMetaData ?onLoadedData ?onLoadStart ?onPause ?onPlay
          ?onPlaying ?onProgress ?onRateChange ?onResize ?onSeeked ?onSeeking
          ?onSuspend ?onStalled ?onTimeUpdate ?onVolumeChange ?onWaiting ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onLoadStart ?onProgress ?onSuspend ?onAbort ?onError ?onEmptied ?onStalled
    ?onLoadedMetaData ?onLoadedData ?onCanPlay ?onCanPlayThrough ?onPlaying
    ?onWaiting ?onSeeking ?onSeeked ?onEnded ?onDurationChange ?onTimeUpdate
    ?onPlay ?onPause ?onRateChange ?onResize ?onVolumeChange
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?children () =
    make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onLoadStart ?onProgress ?onSuspend ?onAbort ?onError ?onEmptied ?onStalled
      ?onLoadedMetaData ?onLoadedData ?onCanPlay ?onCanPlayThrough ?onPlaying
      ?onWaiting ?onSeeking ?onSeeked ?onEnded ?onDurationChange ?onTimeUpdate
      ?onPlay ?onPause ?onRateChange ?onResize ?onVolumeChange
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
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
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "b"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll (): _ t
    =
    Declaredom.make_empty "base"
      (Util.merge_all [|
        Attributes.make ?href ?target ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      ()
    |> Internal.make

  let jsx ?href ?target
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?children:_ () =
    make ?href ?target
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll ()
end


module Bdi = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdi-element} The Bdi Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdi} W3C})
   *)

  type +'a t = ([> Html_Node.bdi ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "bdi"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Bdo = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdo-element} The Bdo Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdo} W3C})
   *)

  type +'a t = ([> Html_Node.bdo ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "bdo"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
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
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "blockquote"
      (Util.merge_all [|
        Attributes.make ?cite ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?cite
    ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?cite
      ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
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
      ?onAfterPrint:(Dom.event -> unit) ->
      ?onBeforePrint:(Dom.event -> unit) ->
      ?onBeforeUnload:(Dom.event -> unit) ->
      ?onHashChange:(Dom.event -> unit) ->
      ?onLanguageChange:(Dom.event -> unit) ->
      ?onMessage:(Dom.event -> unit) ->
      ?onMessageError:(Dom.event -> unit) ->
      ?onOffline:(Dom.event -> unit) ->
      ?onOnline:(Dom.event -> unit) ->
      ?onPageHide:(Dom.event -> unit) ->
      ?onPageShow:(Dom.event -> unit) ->
      ?onPopState:(Dom.event -> unit) ->
      ?onResize:(Dom.event -> unit) ->
      ?onRejectionHandled:(Dom.event -> unit) ->
      ?onStorage:(Dom.event -> unit) ->
      ?onUnhandledRejection:(Dom.event -> unit) ->
      ?onUnload:(Dom.event -> unit) ->
      unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?(aria:Html_Attributes.Aria.document Html_Attributes.Aria.t option)
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAfterPrint ?onBeforePrint ?onBeforeUnload ?onHashChange
    ?onLanguageChange ?onMessage ?onMessageError ?onOffline ?onOnline
    ?onPageHide ?onPageShow ?onPopState ?onResize ?onRejectionHandled ?onStorage
    ?onUnhandledRejection ?onUnload
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "body"
      (Util.merge_all [|
        Attributes.make ?onAfterPrint ?onBeforePrint ?onBeforeUnload ?onHashChange 
          ?onLanguageChange ?onMessage ?onMessageError ?onOffline ?onOnline
          ?onPageHide ?onPageShow ?onPopState ?onResize ?onRejectionHandled
          ?onStorage ?onUnhandledRejection ?onUnload ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAfterPrint ?onBeforePrint ?onBeforeUnload ?onHashChange 
    ?onLanguageChange ?onMessage ?onMessageError ?onOffline ?onOnline
    ?onPageHide ?onPageShow ?onPopState ?onResize ?onRejectionHandled
    ?onStorage ?onUnhandledRejection ?onUnload
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAfterPrint ?onBeforePrint ?onBeforeUnload ?onHashChange 
      ?onLanguageChange ?onMessage ?onMessageError ?onOffline ?onOnline
      ?onPageHide ?onPageShow ?onPopState ?onResize ?onRejectionHandled
      ?onStorage ?onUnhandledRejection ?onUnload
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Br = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-br-element} The Br Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-br} W3C})
   *)

  type +'a t = ([> Html_Node.br ] as 'a) Html_Node.t

  let make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll (): _ t
    =
    Declaredom.make_empty "br"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      ()
    |> Internal.make

  let jsx ?aria ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir
    ?draggable ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?children:_ () =
    make ?aria ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir
      ?draggable ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll ()
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
    type formmethod = [ `get | `post | `dialog ] [@@bs.deriving jsConverter]

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
      ?formvalidate ?formtarget ?name ?formelements ?type_ ?value () =
      make ?autofocus:(Belt.Option.map autofocus Util.string_of_unit)
        ?disabled:(Belt.Option.map disabled Util.string_of_unit)
        ?form ?formaction ?formenctype
        ?formmethod:(Belt.Option.map formmethod formmethodToJs)
        ?formnovalidate:(Belt.Option.map formvalidate Util.string_of_unit)
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline_block Style.t option)
    ?(cssModule:Css_Property.inline_block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "button"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "canvas"
      (Util.merge_all [|
        Attributes.make ?height ?width ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?height ?width
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?height ?width
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.table_caption Style.t option)
    ?(cssModule:Css_Property.table_caption Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "caption"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "cite"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "code"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Col = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/tables.html#the-col-element} The Col Element}
   ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-col} W3C})
   *)

  type +'a t = ([> Html_Node.col ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make_empty "col"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children:_ () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.table_column_group Style.t option)
    ?(cssModule:Css_Property.table_column_group Css_Module.t option)
    (children:child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "colgroup"
      (Util.merge_all [|
        Attributes.make ?span ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?span
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?span
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "data"
      (Util.merge_all [|
        Attributes.make ?value ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?value
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?value
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    (children:_ child array): _ t
    =
    Declaredom.make "datalist"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "dd"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "del"
      (Util.merge_all [|
        Attributes.make ?cite ?datetime ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?cite ?datetime
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?cite ?datetime
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "details"
      (Util.merge_all [|
        Attributes.make ?open_ ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?open_
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?open_
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "dfn"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "dialog"
      (Util.merge_all [|
        Attributes.make ?open_ ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?open_
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?open_
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "div"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "dl"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "dt"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "em"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make_empty "embed"
      (Util.merge_all [|
        Attributes.make ?src ?type_ ?width ?height ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      ()
    |> Internal.make


  let jsx ?aria ?src ?type_ ?width ?height
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children:_ () =
    make ?aria ?src ?type_ ?width ?height
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "fieldset"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "figcaption"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "figure"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
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
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "footer"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end




module Span = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-span-element} The Span Element}
   ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-span} W3C})
   *)

  type +'a t = ([> Html_Node.span ] as 'a) Html_Node.t

  type +'a child = ['a Html_Node.phrasing | Html_Node.other] Html_Node.t

  let make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "span"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?style ?cssModule ?children () =
    make ?aria ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
      ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Title = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/semantics.html#the-title-element} The Title Element}
   ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-title} W3C})
   *)

  type +'a t = ([> Html_Node.title ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    child: _ t
    =
    Declaredom.make "title"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make
          ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
          ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
          ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
          ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
      |])
      (Declaredom.make_text child)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(children=[]) () =
    make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?style ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
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
