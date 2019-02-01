(** HTML Events *)

type t = Declaredom.property Js.Dict.t

module UIEvent = struct
  (** {{: https://www.w3.org/TR/uievents/} UI Events} *)

  module UI = struct
    (** {{: https://www.w3.org/TR/uievents/#events-uievent-types} UI Events} *)
    (**
     * - on_scroll has not been described in the WD yet, see this older
     *   {{: https://www.w3.org/TR/2014/WD-DOM-Level-3-Events-20140925/#interface-UIEvent} spec}
     * - on_show has not been described in the WD yet, see the
     *   {{: https://developer.mozilla.org/en-US/docs/Web/Events/show} MDN doc}
     *)

    external make:
      ?on_load:(Dom.uiEvent -> unit) ->
      ?on_unload:(Dom.uiEvent -> unit) ->
      ?on_abort:(Dom.uiEvent -> unit) ->
      ?on_error:(Dom.uiEvent -> unit) ->
      ?on_select:(Dom.uiEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Focus = struct
    (** {{: https://www.w3.org/TR/uievents/#events-focus-types} Focus Events} *)

    external make:
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_focusin:(Dom.focusEvent -> unit) ->
      ?on_focusout:(Dom.focusEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Mouse = struct
    (** {{: https://www.w3.org/TR/uievents/#events-mouseevents} Mouse Events} *)

    external make:
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Wheel = struct
    (** {{: https://www.w3.org/TR/uievents/#events-wheelevents} Wheel Events} *)

    external make:
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Input = struct
    (** {{: https://www.w3.org/TR/uievents/#events-inputevents} Input Events} *)

    external make:
      ?on_beforeinput:(Dom.inputEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Keyboard = struct
    (** {{: https://www.w3.org/TR/uievents/#events-keyboardevents} Keyboard Events} *)

    external make:
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      unit ->
      t = "" [@@bs.obj]
  end


  module Composition = struct
    (** {{: https://www.w3.org/TR/uievents/#events-compositionevents} Composition Events} *)

    external make:
      ?on_compositionstart:(Dom.compositionEvent -> unit) ->
      ?on_compositionupdate:(Dom.compositionEvent -> unit) ->
      ?on_compositionend:(Dom.compositionEvent -> unit) ->
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
    ?on_abort:(Dom.progressEvent -> unit) ->
    ?on_canplay:(Dom.event -> unit) ->
    ?on_canplaythrough:(Dom.event -> unit) ->
    ?on_cuechange:(Dom.event -> unit) ->
    ?on_durationchange:(Dom.event -> unit) ->
    ?on_emptied:(Dom.event -> unit) ->
    ?on_ended:(Dom.event -> unit) ->
    ?on_error:(Dom.progressEvent -> unit) ->
    ?on_loadedmetadata:(Dom.event -> unit) ->
    ?on_loadeddata:(Dom.event -> unit) ->
    ?on_loadstart:(Dom.progressEvent -> unit) ->
    ?on_pause:(Dom.event -> unit) ->
    ?on_play:(Dom.event -> unit) ->
    ?on_playing:(Dom.event -> unit) ->
    ?on_progress:(Dom.progressEvent -> unit) ->
    ?on_ratechange:(Dom.event -> unit) ->
    ?on_resize:(Dom.event -> unit) ->
    ?on_seeked:(Dom.event -> unit) ->
    ?on_seeking:(Dom.event -> unit) ->
    ?on_suspend:(Dom.progressEvent -> unit) ->
    ?on_stalled:(Dom.progressEvent -> unit) ->
    ?on_timeupdate:(Dom.event -> unit) ->
    ?on_volumechange:(Dom.event -> unit) ->
    ?on_waiting:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Clipboard = struct
  (** {{: https://www.w3.org/TR/clipboard-apis/#clipboard-event-definitions} Clipboard Events} *)

  external make:
    ?on_clipboardchange:(Dom.clipboardEvent -> unit) ->
    ?on_copy:(Dom.clipboardEvent -> unit) ->
    ?on_cut:(Dom.clipboardEvent -> unit) ->
    ?on_paste:(Dom.clipboardEvent -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Script = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Script Events} *)

  external make:
    ?on_afterscriptexecute:(Dom.event -> unit) ->
    ?on_beforescriptexecute:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Dialog = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Dialog Events} *)

  external make:
    ?on_cancel:(Dom.event -> unit) ->
    ?on_close:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Img = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Img Events} *)

  external make:
    ?on_loadstart:(Dom.progressEvent -> unit) ->
    ?on_loadend:(Dom.progressEvent -> unit) ->
    ?on_progress:(Dom.progressEvent -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Details = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Details Events} *)

  external make:
    ?on_toggle:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Form = struct
  (** {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Form Events} *)

  external make:
    ?on_formdata:(Dom.event -> unit) ->
    ?on_reset:(Dom.event -> unit) ->
    ?on_submit:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module FormControls = struct
  (**
   {{: https://www.w3.org/TR/html52/fullindex.html#events-table} Form Control Events}
   ({{: https://html.spec.whatwg.org/multipage/forms.html#form-associated-element} Form-Associated Elements})
   *)

  external make:
    ?on_change:(Dom.event -> unit) ->
    ?on_input:(Dom.event -> unit) ->
    ?on_invalid:(Dom.event -> unit) ->
    ?on_select:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module TextTrack = struct
  (** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#event-handlers-for-objects-of-the-text-track-apis} Text Track Events} *)

  external make:
    ?on_change:(Dom.event -> unit) ->
    ?on_addtrack:(Dom.event -> unit) ->
    ?on_removetrack:(Dom.event -> unit) ->
    ?on_cuechange:(Dom.event -> unit) ->
    ?on_enter:(Dom.event -> unit) ->
    ?on_exit:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module DragDrop = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/dnd.html#dndevents} Drag And Drop Events}
   ({{: https://www.w3.org/TR/html52/editing.html#events-summary} W3C})
   *)

  external make:
    ?on_dragstart:(Dom.dragEvent -> unit) ->
    ?on_drag:(Dom.dragEvent -> unit) ->
    ?on_dragenter:(Dom.dragEvent -> unit) ->
    ?on_dragexit:(Dom.dragEvent -> unit) ->
    ?on_dragleave:(Dom.dragEvent -> unit) ->
    ?on_dragover:(Dom.dragEvent -> unit) ->
    ?on_drop:(Dom.dragEvent -> unit) ->
    ?on_dragend:(Dom.dragEvent -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


module Resource = struct
  external make:
    ?on_load:(Dom.event -> unit) ->
    ?on_loadstart:(Dom.event -> unit) ->
    ?on_loadend:(Dom.event -> unit) ->
    ?on_securitypolicyviolation:(Dom.event -> unit) ->
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
   - <fieldset> <input> <object> <output> <select> <textarea> ({!FormControls}):
     change, input, invalid
   - {!Html_Nodes.Audio} <embed> <iframe> <img> <link> <script> <style> <video> ({!Resource}):
     load, loadstart, loadend, securitypolicyviolation
   *)

  let make ?on_auxclick ?on_blur ?on_click ?on_copy ?on_cut ?on_dblclick
    ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave ?on_dragover
    ?on_dragstart ?on_drop ?on_focus ?on_input ?on_keydown ?on_keypress ?on_keyup
    ?on_mousedown ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout
    ?on_mouseover ?on_mouseup ?on_wheel ?on_paste ?on_scroll () =
    Util.merge_all [|
      Clipboard.make ?on_copy ?on_cut ?on_paste ();
      DragDrop.make ?on_drag ?on_dragend ?on_dragenter ?on_dragexit ?on_dragleave
        ?on_dragover ?on_dragstart ?on_drop ();
      UIEvent.Focus.make ?on_blur ?on_focus ();
      UIEvent.Input.make ?on_input ();
      UIEvent.Keyboard.make ?on_keydown ?on_keypress ?on_keyup ();
      UIEvent.Mouse.make ?on_auxclick ?on_click ?on_dblclick ?on_mousedown
        ?on_mouseenter ?on_mouseleave ?on_mousemove ?on_mouseout ?on_mouseover
        ?on_mouseup ();
      UIEvent.UI.make ?on_scroll ();
      UIEvent.Wheel.make ?on_wheel ();
    |]
end
