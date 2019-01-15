module Internal = struct
  (* Erases type information *)

  module Style = struct
    external to_any:
      [< Css_Property.display] Js.Dict.t ->
      [> Css_Property.any] Js.Dict.t = "%identity"
  end

  module CssModule = struct
    external to_any:
      [< Css_Property.display] Css_Module.t ->
      [> Css_Property.any] Css_Module.t = "%identity"
  end

  module Node = struct
    external to_any:
      [< Html_Node.content] array ->
      [> Html_Node.fragment] array = "%identity"
  end
end


(* TODO:
 * - Document motivation for why overrides are only offered for generic elements
 * - Add the generic sectioning element <section>, offer same overrides as <div>
 *)


module Div = struct
  let flex
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
    ?(style:Css_Property.Override.flex Style.t option)
    ?(cssModule:Css_Property.Override.flex Css_Module.t option)
    (children: Html_Node.flex_item array) =
    Html_Nodes.Div.make
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
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_flex
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
    ?(style:Css_Property.Override.inline_flex Style.t option)
    ?(cssModule:Css_Property.Override.inline_flex Css_Module.t option)
    (children: Html_Node.flex_item array) =
    Html_Nodes.Div.make
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
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_block
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
    ?(style:Css_Property.Override.inline_block Style.t option)
    ?(cssModule:Css_Property.Override.inline_block Css_Module.t option)
    children =
    Html_Nodes.Div.make
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
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      children


  module Jsx = struct
    let flex
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
      flex
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


    let inline_flex
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
      inline_flex
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


    let inline_block
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
      inline_block
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
end


module Span = struct
  let inline_block
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
    ?(style:Css_Property.Override.inline_block Style.t option)
    ?(cssModule:Css_Property.Override.inline_block Css_Module.t option)
    children =
    Html_Nodes.Span.make
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
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      children


  module Jsx = struct
    let inline_block
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
      inline_block  
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
end


(** Sets a css module for a flex item *)
let flex_module
  (cssModule: Css_Property.flex_item Css_Module.t) (value: Html_Node.flex_item):
  Html_Node.flex_item =
  match (
    value |> Html_Node.to_node |> Webapi.Dom.Element.ofNode,
    Css_Module.get_class ~cssModule ()
  ) with
  | (Some element, Some module_name) ->
    let class_name = Webapi.Dom.Element.className element in
    Webapi.Dom.Element.setClassName element @@ class_name ^" "^ module_name;
    value
  | _ -> value
