(**
 HTML Elements
 
 Includes nodes like text nodes and fragments.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} full element table} 
 and {{: https://www.w3.org/TR/html52/fullindex.html#events-table} events table} 
 for reference.

 {e NOTE}: If you create a node outside of a specific context, like for example 
 some top-level declaration of an element, you need to annotate it's type.
 
 For example:

 {[
 let hello: Html_Node.div = Node.div ~id:"foo" [|
   Node.span [|Node.text "Hello World!"|]
 |]
 ]}
 *)


(* TODO: hide *)
module Internal = struct
  external make: Dom.node -> _ Html_Node.t = "%identity"
end


module A = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-a} A} *)
  (** ({{: https://www.w3.org/TR/wai-aria-1.1/#link} aria}) *)

  type +'a t = ([> Html_Node.a ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.transparent Html_Node.t

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
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
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
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make
      ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Abbr = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-abbr} Abbr} *)

  type +'a t = ([> Html_Node.abbr ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "abbr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Address = struct
  (** {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-address} Address} *)

  type +'a t = ([> Html_Node.address ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  let make ?(aria:Html_Attributes.Aria.group Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "address"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Area = struct
  (** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-area} Area} *)

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

    let make ?alt ?coords  ?download ?href ?hreflang ?rel ?shape ?target ?_type
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

  let make ?alt ?coords  ?download ?href ?hreflang ?rel ?shape ?target ?_type
    ?referrerpolicy 
    ?(aria:Html_Attributes.Aria.link Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    (): _ t
    =
    Declaredom.make_empty "area"
      (Util.merge_all [|
        Attributes.make ?alt ?coords  ?download ?href ?hreflang ?rel ?shape ?target ?_type
          ?referrerpolicy ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      ()
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?children:_ () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ()
end


module Article = struct
  (** {{: https://www.w3.org/TR/html52/sections.html#elementdef-article} Article} *)

  type +'a t = ([> Html_Node.article ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.article
           | Html_Attributes.Aria.application
           | Html_Attributes.Aria.document
           | Html_Attributes.Aria.feed
           | Html_Attributes.Aria.main
           | Html_Attributes.Aria.region
           ] Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "article"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Aside = struct
  (** {{: https://www.w3.org/TR/html52/sections.html#elementdef-aside} Aside} *)

  type +'a t = ([> Html_Node.aside ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  let make
    ?(aria:[< Html_Attributes.Aria.complementary
           | Html_Attributes.Aria.feed
           | Html_Attributes.Aria.note
           | Html_Attributes.Aria.search
           | Html_Attributes.Aria.presentation
           ] Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "aside"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Audio = struct
  (** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-audio} Audio} *)

  type +'a t = ([> Html_Node.audio ] as 'a) Html_Node.t

  type +'a child = [Html_Node.source | 'a Html_Node.transparent] Html_Node.t

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
        ?autoplay:(Belt.Option.map autoplay string_of_bool)
        ?loop:(Belt.Option.map loop string_of_bool)
        ?muted:(Belt.Option.map muted string_of_bool)
        ?controls:(Belt.Option.map controls Util.string_of_unit)
        ()
  end

  let make
    ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls
    ?(aria:Html_Attributes.Aria.application Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    (children:_ child array): _ t
    =
    Declaredom.make "audio"
      (Util.merge_all [|
        Attributes.make ?src ?crossorigin ?preload ?autoplay ?loop ?muted ?controls ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module B = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-b} B} *)

  type +'a t = ([> Html_Node.b ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "b"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Base = struct
  (** {{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-base} Base} *)

  type +'a t = ([> Html_Node.base ] as 'a) Html_Node.t

  module Attributes = struct
    external _make:
      ?href:string -> ?target:string -> unit -> Html_Attributes.t = "" [@@bs.obj]

    let make ?href ?target () =
      _make ?href ?target:(Belt.Option.map target Html_Attributes.Target.show) ()
  end

  let make ?href ?target
    ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    (): _ t
    =
    Declaredom.make_empty "base"
      (Util.merge_all [|
        Attributes.make ?href ?target ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      ()
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?children:_ () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ()
end


module Bdi = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdi} Bdi} *)

  type +'a t = ([> Html_Node.bdi ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "bdi"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Bdo = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdo} Bdo} *)

  type +'a t = ([> Html_Node.bdo ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "bdo"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end



module Blockquote = struct
  (** {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-blockquote} Blockquote} *)

  type +'a t = ([> Html_Node.blockquote ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  module Attributes = struct
    external make: ?cite:string -> unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?cite ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "blockquote"
      (Util.merge_all [|
        Attributes.make ?cite ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Body = struct
  (** {{: https://www.w3.org/TR/html52/sections.html#elementdef-body} Body} *)

  type +'a t = ([> Html_Node.body ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  module Attributes = struct
    external make:
      ?onAfterPrint:(Dom.event -> unit) ->
      ?onBeforePrint:(Dom.event -> unit) ->
      ?onBeforeUnload:(Dom.event -> unit) ->
      ?onHashChange:(Dom.event -> unit) ->
      ?onLanguageChange:(Dom.event -> unit) ->
      ?onMessage:(Dom.event -> unit) ->
      ?onOffline:(Dom.event -> unit) ->
      ?onOnline:(Dom.event -> unit) ->
      ?onPageHide:(Dom.event -> unit) ->
      ?onPageShow:(Dom.event -> unit) ->
      ?onPopState:(Dom.event -> unit) ->
      ?onRejectionHandled:(Dom.event -> unit) ->
      ?onStorage:(Dom.event -> unit) ->
      ?onUnhandledRejection:(Dom.event -> unit) ->
      ?onUnload:(Dom.event -> unit) ->
      unit -> Html_Attributes.t = "" [@@bs.obj]
  end

  let make ?onAfterPrint ?onBeforePrint ?onBeforeUnload ?onHashChange 
    ?onLanguageChange ?onMessage ?onOffline ?onOnline ?onPageHide ?onPageShow 
    ?onPopState ?onRejectionHandled ?onStorage ?onUnhandledRejection ?onUnload 
    ?(aria:Html_Attributes.Aria.document Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "body"
      (Util.merge_all [|
        Attributes.make ?onAfterPrint ?onBeforePrint ?onBeforeUnload ?onHashChange 
          ?onLanguageChange ?onMessage ?onOffline ?onOnline ?onPageHide ?onPageShow 
          ?onPopState ?onRejectionHandled ?onStorage ?onUnhandledRejection ?onUnload 
          ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end





module Br = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-br} Br} *)

  type +'a t = ([> Html_Node.br ] as 'a) Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    (): _ t
    =
    Declaredom.make_empty "br"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      ()
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?children:_ () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ()
end


module Div = struct
  (** {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-div} Div} *)

  type +'a t = ([> Html_Node.div ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "div"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Span = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-span} Span} *)

  type +'a t = ([> Html_Node.span ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "span"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Title = struct
  (** {{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-title} Title} *)

  type +'a t = ([> Html_Node.title ] as 'a) Html_Node.t

  type child = Html_Node.text Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    child: _ t
    =
    Declaredom.make "title"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (Declaredom.make_text child)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(children=[]) () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting
      (List.fold_left (fun acc e -> acc ^ e) "" children)
end


module Text = struct
  (** {{: https://www.w3.org/TR/dom/#interface-text} Text node} *)

  type +'a t = ([> Html_Node.text ] as 'a) Html_Node.t

  let make (text: string): _ t = Declaredom.make_text text

  let jsx ?(children=[]) () = make @@ List.fold_left (^) "" children
end


module Fragment = struct
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
