module Internal = struct
  (* Erases type information *)

  module Style = struct
    external to_any:
      [< Css_Property.display] Style.t ->
      [> Css_Property.any] Style.t = "%identity"
  end

  module CssModule = struct
    external to_any:
      [< Css_Property.display] Css_Module.t ->
      [> Css_Property.any] Css_Module.t = "%identity"
  end

  module Node = struct
    external to_any:
      [< _ Html_Node.content] Html_Node.t array ->
      [< _ Html_Node.content] Html_Node.t array = "%identity"
  end
end


(* TODO:
 * - Document motivation for why overrides are only offered for generic elements
 * - Add the generic sectioning element <section>, offer same overrides as <div>
 *)


module Div = struct
  let flex ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.Override.flex Style.t option)
    ?(cssModule:Css_Property.Override.flex Css_Module.t option)
    (children:_ Html_Node.flex_item Html_Node.t array) =
    Html_Nodes.Div.make
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
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_flex ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll 
    ?(style:Css_Property.Override.inline_flex Style.t option)
    ?(cssModule:Css_Property.Override.inline_flex Css_Module.t option)
    (children:_ Html_Node.flex_item Html_Node.t array) =
    Html_Nodes.Div.make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      (Internal.Node.to_any children)


  let inline_block ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.Override.inline_block Style.t option)
    ?(cssModule:Css_Property.Override.inline_block Css_Module.t option)
    children =
    Html_Nodes.Div.make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      children


  module Jsx = struct
    let flex ?aria
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
      flex ?aria
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


    let inline_flex ?aria
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
      inline_flex ?aria
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


    let inline_block ?aria
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
      inline_block ?aria
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
end


module Span = struct
  let inline_block ?aria
    ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
    ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
    ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
    ?title ?translate
    ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
    ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
    ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
    ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
    ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
    ?(style:Css_Property.Override.inline_block Style.t option)
    ?(cssModule:Css_Property.Override.inline_block Css_Module.t option)
    children =
    Html_Nodes.Span.make ?aria
      ?accessKey ?autoCapitalize ?className ?classSet ?contentEditable ?dataSet
      ?dir ?draggable ?enterKeyHint ?hidden ?id ?inputMode ?is ?itemId ?itemProp
      ?itemRef ?itemScope ?itemType ?lang ?nonce ?spellCheck ?tabIndex
      ?title ?translate
      ?onAuxClick ?onBlur ?onClick ?onCopy ?onCut ?onDblClick
      ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver
      ?onDragStart ?onDrop ?onFocus ?onInput ?onKeyDown ?onKeyPress ?onKeyUp
      ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
      ?onMouseOver ?onMouseUp ?onWheel ?onPaste ?onScroll
      ?style:(Belt.Option.map style Internal.Style.to_any)
      ?cssModule:(Belt.Option.map cssModule Internal.CssModule.to_any)
      children


  module Jsx = struct
    let inline_block ?aria
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
      inline_block ?aria
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
end


(** Sets a css module for a flex item *)
let flex_module
  (cssModule:Css_Property.flex_item Css_Module.t)
  (value:'a Html_Node.flex_item Html_Node.t):
  'a Html_Node.flex_item Html_Node.t =
  match (
    value |> Html_Node.to_node |> Webapi.Dom.Element.ofNode,
    Css_Module.get_class ~cssModule ()
  ) with
  | (Some element, Some module_name) ->
    let class_name = Webapi.Dom.Element.className element in
    Webapi.Dom.Element.setClassName element @@ class_name ^" "^ module_name;
    value
  | _ -> value
