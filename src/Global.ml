type t

module Attributes = struct
  type t

  external _make:
    ?id:string ->
    ?className:string ->
    ?classSet:bool Js.Dict.t ->
    ?contentEditable:bool ->
    ?dataset:string Js.Dict.t ->
    ?draggable:bool ->
    ?tabIndex:int ->
    ?title:string ->
    ?style:string Js.Dict.t ->
    unit ->
    t = "" [@@bs.obj]

  let make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style () =
    let style = 
      style |. Belt.Option.mapWithDefault (Js.Dict.empty ()) Style.show_dict 
    in
    _make
      ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
      ?title ~style ()
end


module Events = struct
  type t

  external make:
    ?onAbort:(Dom.event -> unit) ->
    ?onBlur:(Dom.event -> unit) ->
    ?onError:(Dom.event -> unit) ->
    ?onFocus:(Dom.event -> unit) ->
    ?onCancel:(Dom.event -> unit) ->
    ?onCanPlay:(Dom.event -> unit) ->
    ?onCanPlayThrough:(Dom.event -> unit) ->
    ?onChange:(Dom.event -> unit) ->
    ?onClick:(Dom.event -> unit) ->
    ?onClose:(Dom.event -> unit) ->
    ?onContextMenu:(Dom.event -> unit) ->
    ?onCueChange:(Dom.event -> unit) ->
    ?onDblClick:(Dom.event -> unit) ->
    ?onDrag:(Dom.event -> unit) ->
    ?onDragEnd:(Dom.event -> unit) ->
    ?onDragEnter:(Dom.event -> unit) ->
    ?onDragExit:(Dom.event -> unit) ->
    ?onDragLeave:(Dom.event -> unit) ->
    ?onDragOver:(Dom.event -> unit) ->
    ?onDragStart:(Dom.event -> unit) ->
    ?onDrop:(Dom.event -> unit) ->
    ?onDurationChange:(Dom.event -> unit) ->
    ?onEmptied:(Dom.event -> unit) ->
    ?onEnded:(Dom.event -> unit) ->
    ?onGotPointerCapture:(Dom.event -> unit) ->
    ?onInput:(Dom.event -> unit) ->
    ?onInvalid:(Dom.event -> unit) ->
    ?onKeyDown:(Dom.event -> unit) ->
    ?onKeyPress:(Dom.event -> unit) ->
    ?onKeyUp:(Dom.event -> unit) ->
    ?onLoad:(Dom.event -> unit) ->
    ?onLoadedData:(Dom.event -> unit) ->
    ?onLoadedMetaData:(Dom.event -> unit) ->
    ?onLoadEnd:(Dom.event -> unit) ->
    ?onLoadStart:(Dom.event -> unit) ->
    ?onLostPointerCapture:(Dom.event -> unit) ->
    ?onMouseDown:(Dom.event -> unit) ->
    ?onMouseEnter:(Dom.event -> unit) ->
    ?onMouseLeave:(Dom.event -> unit) ->
    ?onMouseMove:(Dom.event -> unit) ->
    ?onMouseOut:(Dom.event -> unit) ->
    ?onMouseOver:(Dom.event -> unit) ->
    ?onMouseUp:(Dom.event -> unit) ->
    ?onWheel:(Dom.event -> unit) ->
    ?onPause:(Dom.event -> unit) ->
    ?onPlay:(Dom.event -> unit) ->
    ?onPointerDown:(Dom.event -> unit) ->
    ?onPointerMove:(Dom.event -> unit) ->
    ?onPointerUp:(Dom.event -> unit) ->
    ?onPointerCancel:(Dom.event -> unit) ->
    ?onPointerOver:(Dom.event -> unit) ->
    ?onPointerOut:(Dom.event -> unit) ->
    ?onPointerEnter:(Dom.event -> unit) ->
    ?onPointerLeave:(Dom.event -> unit) ->
    ?onReset:(Dom.event -> unit) ->
    ?onResize:(Dom.event -> unit) ->
    ?onScroll:(Dom.event -> unit) ->
    ?onSelect:(Dom.event -> unit) ->
    ?onSelectStart:(Dom.event -> unit) ->
    ?onSelectionChange:(Dom.event -> unit) ->
    ?onSubmit:(Dom.event -> unit) ->
    ?onTransitionCancel:(Dom.event -> unit) ->
    ?onTransitionEnd:(Dom.event -> unit) ->
    unit ->
    t = "" [@@bs.obj]
end


external assign: (_ [@bs.as {json|{}|json}]) -> 'a -> 'b -> 'c = ""
[@@bs.scope "Object"] [@@bs.val] 

let make (attrs: Attributes.t) (events: Events.t): t = assign attrs events

let empty () = make (Attributes.make ()) (Events.make ())
