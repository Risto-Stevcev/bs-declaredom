module Internal = struct
  external source: Dom.node -> Dom.node Callbag.t -> unit = "source" [@@bs.send]
end

type 'a t = [> Html_Node.custom ] as 'a

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
  callbag: 'a t
  =
  let callbag_element =
    Declaredom.make_empty "x-callbag"
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
  in
  callbag
  |> (CallbagBasics.map Html_Node.to_node)
  |> Internal.source callbag_element;
  `custom (Obj.magic callbag_element)


(* TODO: add to mli *)
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
  ?onVolumeChange ?onWaiting ?callbag () =
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
    ?onVolumeChange ?onWaiting
    (Js.Option.getWithDefault (CallbagBasics.from_array [||]) callbag)
