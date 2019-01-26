module Internal = struct
  external source: Dom.node -> Dom.node Callbag.t -> unit = "source" [@@bs.send]
end

type +'a t = ([> [> `callbag] Html_Node.custom ] as 'a) Html_Node.t

let make ?aria
  ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
  ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
  ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
  ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
  ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
  ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
  ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
  callbag: _ t
  =
  let callbag_element =
    Declaredom.make_empty "x-callbag"
    (Util.merge_all [|
      Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
      Html_Attributes.Global.make ?accessKey ?className ?classSet
        ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
        ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown
          ?onKeyPress ?onKeyUp ?onMouseDown ?onMouseEnter ?onMouseLeave
          ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPaste
          ?onScroll ()
    |])
    ()
  in
  callbag
  |> (CallbagBasics.map Html_Node.to_node)
  |> Internal.source callbag_element;
  Obj.magic callbag_element


let jsx ?aria
  ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
  ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
  ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
  ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
  ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
  ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
  ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
  ?callbag () =
  make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    (Js.Option.getWithDefault (CallbagBasics.from_array [||]) callbag)
