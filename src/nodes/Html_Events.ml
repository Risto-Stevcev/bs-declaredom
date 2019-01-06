(** HTML Events *)

type t = Declaredom.property Js.Dict.t

module UIEvent = struct
  (** {{: https://www.w3.org/TR/uievents/} UI Events} *)

  module UI = struct
    (** {{: https://www.w3.org/TR/uievents/#events-uievent-types} UI Events} *)
    (**
     * - onScroll has not been described in the WD yet, see this older
     *   {{: https://www.w3.org/TR/2014/WD-DOM-Level-3-Events-20140925/#interface-UIEvent} spec}
     * - onShow has not been described in the WD yet, see the
     *   {{: https://developer.mozilla.org/en-US/docs/Web/Events/show} MDN doc}
     *)

    external make:
      ?onLoad:(Dom.uiEvent -> unit) ->
      ?onUnload:(Dom.uiEvent -> unit) ->
      ?onAbort:(Dom.uiEvent -> unit) ->
      ?onError:(Dom.uiEvent -> unit) ->
      ?onSelect:(Dom.uiEvent -> unit) ->
      ?onScroll:(Dom.uiEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Focus = struct
    (** {{: https://www.w3.org/TR/uievents/#events-focus-types} Focus Events} *)

    external make:
      ?onBlur:(Dom.focusEvent -> unit) ->
      ?onFocus:(Dom.focusEvent -> unit) ->
      ?onFocusIn:(Dom.focusEvent -> unit) ->
      ?onFocusOut:(Dom.focusEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Mouse = struct
    (** {{: https://www.w3.org/TR/uievents/#events-mouseevents} Mouse Events} *)

    external make:
      ?onAuxClick:(Dom.mouseEvent -> unit) ->
      ?onClick:(Dom.mouseEvent -> unit) ->
      ?onDblClick:(Dom.mouseEvent -> unit) ->
      ?onMouseDown:(Dom.mouseEvent -> unit) ->
      ?onMouseEnter:(Dom.mouseEvent -> unit) ->
      ?onMouseLeave:(Dom.mouseEvent -> unit) ->
      ?onMouseMove:(Dom.mouseEvent -> unit) ->
      ?onMouseOut:(Dom.mouseEvent -> unit) ->
      ?onMouseOver:(Dom.mouseEvent -> unit) ->
      ?onMouseUp:(Dom.mouseEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Wheel = struct
    (** {{: https://www.w3.org/TR/uievents/#events-wheelevents} Wheel Events} *)

    external make:
      ?onWheel:(Dom.wheelEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Input = struct
    (** {{: https://www.w3.org/TR/uievents/#events-inputevents} Input Events} *)

    external make:
      ?onBeforeInput:(Dom.inputEvent -> unit) ->
      ?onInput:(Dom.inputEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Keyboard = struct
    (** {{: https://www.w3.org/TR/uievents/#events-keyboardevents} Keyboard Events} *)

    external make:
      ?onKeyDown:(Dom.keyboardEvent -> unit) ->
      ?onKeyPress:(Dom.keyboardEvent -> unit) ->
      ?onKeyUp:(Dom.keyboardEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Composition = struct
    (** {{: https://www.w3.org/TR/uievents/#events-compositionevents} Composition Events} *)

    external make:
      ?onCompositionStart:(Dom.compositionEvent -> unit) ->
      ?onCompositionUpdate:(Dom.compositionEvent -> unit) ->
      ?onCompositionEnd:(Dom.compositionEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end
end


module Media = struct
  (** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#media-elements-event-summary} Media Events} *)
  (** ({{: https://dev.w3.org/html5/pf-summary/video.html} additional info}) *)

  external make:
    ?onLoadStart:(Dom.progressEvent -> unit) ->
    ?onProgress:(Dom.progressEvent -> unit) ->
    ?onSuspend:(Dom.progressEvent -> unit) ->
    ?onAbort:(Dom.progressEvent -> unit) ->
    ?onError:(Dom.progressEvent -> unit) ->
    ?onEmptied:(Dom.event -> unit) ->
    ?onStalled:(Dom.progressEvent -> unit) ->
    ?onLoadedMetaData:(Dom.event -> unit) ->
    ?onLoadedData:(Dom.event -> unit) ->
    ?onCanPlay:(Dom.event -> unit) ->
    ?onCanPlayThrough:(Dom.event -> unit) ->
    ?onPlaying:(Dom.event -> unit) ->
    ?onWaiting:(Dom.event -> unit) ->
    ?onSeeking:(Dom.event -> unit) ->
    ?onSeeked:(Dom.event -> unit) ->
    ?onEnded:(Dom.event -> unit) ->
    ?onDurationChange:(Dom.event -> unit) ->
    ?onTimeUpdate:(Dom.event -> unit) ->
    ?onPlay:(Dom.event -> unit) ->
    ?onPause:(Dom.event -> unit) ->
    ?onRateChange:(Dom.event -> unit) ->
    ?onResize:(Dom.event -> unit) ->
    ?onVolumeChange:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Clipboard = struct
  (** {{: https://www.w3.org/TR/clipboard-apis/#clipboard-event-definitions} Clipboard Events} *)

  external make:
    ?onClipboardChange:(Dom.clipboardEvent -> unit) ->
    ?onCopy:(Dom.clipboardEvent -> unit) ->
    ?onCut:(Dom.clipboardEvent -> unit) ->
    ?onPaste:(Dom.clipboardEvent -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Script = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Script Events} *)

  external make:
    ?onAfterScriptExecute:(Dom.event -> unit) ->
    ?onBeforeScriptExecute:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Dialog = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Dialog Events} *)

  external make:
    ?onCancel:(Dom.event -> unit) ->
    ?onClose:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Form = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Form Events} *)

  external make:
    ?onReset:(Dom.event -> unit) ->
    ?onSubmit:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Img = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Img Events} *)

  external make:
    ?onLoadStart:(Dom.progressEvent -> unit) ->
    ?onLoadEnd:(Dom.progressEvent -> unit) ->
    ?onProgress:(Dom.progressEvent -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Details = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Details Events} *)

  external make:
    ?onToggle:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module FormControls = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Form Control Events} *)

  external make:
    ?onChange:(Dom.event -> unit) ->
    ?onInput:(Dom.event -> unit) ->
    ?onInvalid:(Dom.event -> unit) ->
    ?onSelect:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module TextTrack = struct
  (** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#event-handlers-for-objects-of-the-text-track-apis} Text Track Events} *)

  external make:
    ?onChange:(Dom.event -> unit) ->
    ?onAddTrack:(Dom.event -> unit) ->
    ?onRemoveTrack:(Dom.event -> unit) ->
    ?onCueChange:(Dom.event -> unit) ->
    ?onEnter:(Dom.event -> unit) ->
    ?onExit:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Drag = struct
  (** {{: https://www.w3.org/TR/html52/editing.html#events-summary} Drag Events} *)

  external make:
    ?onDragStart:(Dom.dragEvent -> unit) ->
    ?onDrag:(Dom.dragEvent -> unit) ->
    ?onDragEnter:(Dom.dragEvent -> unit) ->
    ?onDragExit:(Dom.dragEvent -> unit) ->
    ?onDragLeave:(Dom.dragEvent -> unit) ->
    ?onDragOver:(Dom.dragEvent -> unit) ->
    ?onDrop:(Dom.dragEvent -> unit) ->
    ?onDragEnd:(Dom.dragEvent -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Global = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Global Events} *)
  (* TODO: Some of these events are only meaningful for certain elements *)

  let make ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting () =
    Util.merge_all [|
      Details.make ?onToggle ();
      Dialog.make ?onCancel ?onClose ();
      Drag.make ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
        ?onDragOver ?onDragStart ?onDrop ();
      Form.make ?onReset ?onSubmit ();
      FormControls.make ?onChange ?onInvalid ();
      Img.make ?onLoadEnd ?onLoadStart ();
      Media.make ?onCanPlay ?onCanPlayThrough ?onDurationChange ?onEmptied
        ?onEnded ?onLoadedData ?onLoadedMetaData ?onPause ?onPlay ?onPlaying
        ?onProgress ?onRateChange ?onResize ?onSeeked ?onSeeking ?onStalled
        ?onSuspend ?onTimeUpdate ?onVolumeChange ?onWaiting ();
      TextTrack.make ?onCueChange ();
      UIEvent.Focus.make ?onBlur ?onFocus ();
      UIEvent.Input.make ?onInput ();
      UIEvent.Keyboard.make ?onKeyDown ?onKeyPress ?onKeyUp ();
      UIEvent.Mouse.make ?onAuxClick ?onClick ?onDblClick ?onMouseDown
        ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut ?onMouseOver
        ?onMouseUp ();
      UIEvent.UI.make ?onAbort ?onError ?onLoad ?onSelect ?onScroll ();
      UIEvent.Wheel.make ?onWheel ();
    |]
end
