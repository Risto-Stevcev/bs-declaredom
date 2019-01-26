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
  (**
   {{: https://html.spec.whatwg.org/multipage/media.html#mediaevents} Media Events}
   ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#media-elements-event-summary} W3C})
   *)

  external make:
    ?onAbort:(Dom.progressEvent -> unit) ->
    ?onCanPlay:(Dom.event -> unit) ->
    ?onCanPlayThrough:(Dom.event -> unit) ->
    ?onCueChange:(Dom.event -> unit) ->
    ?onDurationChange:(Dom.event -> unit) ->
    ?onEmptied:(Dom.event -> unit) ->
    ?onEnded:(Dom.event -> unit) ->
    ?onError:(Dom.progressEvent -> unit) ->
    ?onLoadedMetaData:(Dom.event -> unit) ->
    ?onLoadedData:(Dom.event -> unit) ->
    ?onLoadStart:(Dom.progressEvent -> unit) ->
    ?onPause:(Dom.event -> unit) ->
    ?onPlay:(Dom.event -> unit) ->
    ?onPlaying:(Dom.event -> unit) ->
    ?onProgress:(Dom.progressEvent -> unit) ->
    ?onRateChange:(Dom.event -> unit) ->
    ?onResize:(Dom.event -> unit) ->
    ?onSeeked:(Dom.event -> unit) ->
    ?onSeeking:(Dom.event -> unit) ->
    ?onSuspend:(Dom.progressEvent -> unit) ->
    ?onStalled:(Dom.progressEvent -> unit) ->
    ?onTimeUpdate:(Dom.event -> unit) ->
    ?onVolumeChange:(Dom.event -> unit) ->
    ?onWaiting:(Dom.event -> unit) ->
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


module Form = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Form Events} *)

  external make:
    ?onFormData:(Dom.event -> unit) ->
    ?onReset:(Dom.event -> unit) ->
    ?onSubmit:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module FormControls = struct
  (**
   {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Form Control Events}
   ({{: https://html.spec.whatwg.org/multipage/forms.html#form-associated-element} Form-Associated Elements})
   *)

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


module DragDrop = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/dnd.html#dndevents} Drag And Drop Events}
   ({{: https://www.w3.org/TR/html52/editing.html#events-summary} W3C})
   *)

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


module Resource = struct
  external make:
    ?onLoad:(Dom.event -> unit) ->
    ?onLoadStart:(Dom.event -> unit) ->
    ?onLoadEnd:(Dom.event -> unit) ->
    ?onSecurityPolicyViolation:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Global = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/indices.html#ix-event-handlers} Global Events}
   ({{: https://www.w3.org/TR/html52/fullindex.html#events-table} W3C})

   {e NOTE}: According to the specs the global event handlers are valid for all
   html elements, but in practice only a subset of them are truly global. The
   remaining handlers are only included for elements that apply to them:

   - {!Html_Nodes.Audio} <video> ({!Media}):
     abort, canplay, canplaythrough, cuechange, durationchange, emptied, error,
     loadeddata, loadedmetadata, play, playing, progress, ratechange, seeked,
     seeking, stalled, suspend, timeupdate, volumechange, waiting
   - {!Html_Nodes.Body}:
     languagechange, message, messageerror, online, offline, pageshow, pagehide,
     popstate, resize, rejectionhandled, storage, unhandledrejection, unload
   - <details>: toggle
   - <dialog>: cancel, close
   - <script>: error
   - <img>: progress
   - <form> ({!Form}): formdata, reset, submit
   - <button> <fieldset> <input> <object> <output> <select> <textarea> ({!FormControls}):
     change, input, invalid
   - {!Html_Nodes.Audio} <embed> <iframe> <img> <link> <script> <style> <video> ({!Resource}):
     load, loadstart, loadend, securitypolicyviolation
   *)

  let make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll () =
    Util.merge_all [|
      Clipboard.make ?onCopy ?onCut ?onPaste ();
      DragDrop.make ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
        ?onDragOver ?onDragStart ?onDrop ();
      UIEvent.Focus.make ?onBlur ?onFocus ();
      UIEvent.Input.make ?onInput ();
      UIEvent.Keyboard.make ?onKeyDown ?onKeyPress ?onKeyUp ();
      UIEvent.Mouse.make ?onAuxClick ?onClick ?onDblClick ?onMouseDown
        ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut ?onMouseOver
        ?onMouseUp ();
      UIEvent.UI.make ?onScroll ();
      UIEvent.Wheel.make ?onWheel ();
    |]
end
