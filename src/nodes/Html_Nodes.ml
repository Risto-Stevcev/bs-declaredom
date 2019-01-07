(**
 HTML Elements
 
 Includes nodes like text nodes and fragments.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} full element table} 
 and {{: https://www.w3.org/TR/html52/fullindex.html#events-table} events table} 
 for reference.

 {e NOTE}: If you create a node outside of a specific context, like for example 
 some top-level declaration of an element, you need to annotate it's type.
 
 For example:

 {C
 let hello: Html_Node.div = Node.div ~id:"foo" [|
   Node.span [|Node.text "Hello World!"|]
 |]
 }
 
 *)


(* TODO: hide *)
module Internal = struct
  external make: Dom.node -> _ Html_Node.t = "%identity"
end


module A = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-a} A} *)
  (** ({{: https://www.w3.org/TR/wai-aria-1.1/#link} aria}) *)

  type 'a t = [> Html_Node.a ] as 'a

  type child = Html_Node.transparent

  module Attributes = struct
    module Target = struct
      (** {{: https://www.w3.org/TR/html52/browsers.html#browsing-context-names} Browsing context} *)

      type value =
        [ `blank | `self | `parent | `top ] [@@bs.deriving jsConverter]

      type t = [ value | `browsing_context of string ]

      let show: t -> string = function
      | (`blank | `self | `parent | `top) as value ->
        valueToJs value
      | `browsing_context name ->
        name
    end

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
        ?target:(Belt.Option.map target Target.show)
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
    ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
    (children:child array): 'a t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "a"
      (Util.merge_all [|
        Attributes.make ?href ?target ?download ?rel ?rev ?hreflang ?_type
          ?referrerpolicy ();
        Html_Attributes.Aria.Expanded.make ?aria_expanded ();
        Html_Attributes.Aria.Global.make ?aria_atomic ?aria_busy ?aria_controls
          ?aria_current ?aria_describedby ?aria_details ?aria_disabled
          ?aria_dropeffect ?aria_errormessage ?aria_flowto ?aria_grabbed
          ?aria_haspopup ?aria_hidden ?aria_invalid ?aria_keyshortcuts
          ?aria_label ?aria_labelledby ?aria_live ?aria_owns ?aria_relevant
          ?aria_roledescription ();
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
    |> (fun e -> `a (Internal.make e))


  let jsx
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
      ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
      ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription
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


module Div = struct
  (** {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-div} Div} *)

  type 'a t = [> Html_Node.div ] as 'a

  type child = Html_Node.flow

  let make
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
    (children:child array): 'a t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "div"
      (Util.merge_all [|
        Html_Attributes.Aria.Global.make ?aria_atomic ?aria_busy ?aria_controls
          ?aria_current ?aria_describedby ?aria_details ?aria_disabled
          ?aria_dropeffect ?aria_errormessage ?aria_flowto ?aria_grabbed
          ?aria_haspopup ?aria_hidden ?aria_invalid ?aria_keyshortcuts
          ?aria_label ?aria_labelledby ?aria_live ?aria_owns ?aria_relevant
          ?aria_roledescription ();
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
    |> (fun e -> `div (Internal.make e))


  let jsx
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription
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

  type 'a t = [> Html_Node.span ] as 'a

  type child = Html_Node.phrasing

  let make
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
    (children:child array): 'a t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "span"
      (Util.merge_all [|
        Html_Attributes.Aria.Global.make ?aria_atomic ?aria_busy ?aria_controls
          ?aria_current ?aria_describedby ?aria_details ?aria_disabled
          ?aria_dropeffect ?aria_errormessage ?aria_flowto ?aria_grabbed
          ?aria_haspopup ?aria_hidden ?aria_invalid ?aria_keyshortcuts
          ?aria_label ?aria_labelledby ?aria_live ?aria_owns ?aria_relevant
          ?aria_roledescription ();
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
    |> (fun e -> `span (Internal.make e))


  let jsx
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription
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

  type 'a t = [> Html_Node.br ] as 'a

  let make
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
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
    (): 'a t
    =
    Declaredom.make_empty "br"
      (Util.merge_all [|
        Html_Attributes.Aria.Global.make ?aria_atomic ?aria_busy ?aria_controls
          ?aria_current ?aria_describedby ?aria_details ?aria_disabled
          ?aria_dropeffect ?aria_errormessage ?aria_flowto ?aria_grabbed
          ?aria_haspopup ?aria_hidden ?aria_invalid ?aria_keyshortcuts
          ?aria_label ?aria_labelledby ?aria_live ?aria_owns ?aria_relevant
          ?aria_roledescription ();
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
    |> (fun e -> `br (Internal.make e))

  let jsx = make
end


module Text = struct
  (** {{: https://www.w3.org/TR/dom/#interface-text} Text node} *)

  type 'a t = [> Html_Node.text ] as 'a

  let make (text: string): 'a t =
    Declaredom.make_text text
    |> (fun e -> `text e)
end


module Fragment = struct
  (*
type 'a t = [> Node.fragment ] as 'a

type child = Node.content

let make (children:child array): 'a t = 
  FFI.make' "fragment"
    (Js.Obj.empty () |> Obj.magic)
    (children |> Js.Array.map (fun e -> Node.unwrap (e :> Node.content)))
  |> (fun e -> `fragment e)
   *)
end
