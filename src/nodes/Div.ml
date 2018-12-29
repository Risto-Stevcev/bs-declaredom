type 'a t = [> Node.div ] as 'a

type child = [ Node.flow | Node.other ]

let _make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.display Style.t option)
  ?onClick ?(cssModule:Css_Property.display Css_Module.t option)
  (children:child array): 'a t
  =
  let name = Css_Module.getClass ?className ?cssModule ()
  in
  FFI.make' "div"
    (Global.make
      (Global.Attributes.make ?id ~className:name ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style ())
      (Global.Events.make ?onClick ())
    )
    (children |> Js.Array.map (fun e -> Node.unwrap (e :> Node.content)))
  |> (fun e -> `div e)


let make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
  ?onClick ?(cssModule:Css_Property.block Css_Module.t option) children
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style ?onClick ?cssModule:(Belt.Option.map cssModule Css_Module.make) children

(**
 * {{: https://www.w3.org/TR/CSS22/visuren.html#inline-boxes} Inline-boxes}
 * The element will create an inline-level box but is not an inline-box
 *)
let inline_block
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.any Style.t option)
  ?onClick ?(cssModule:Css_Property.any Css_Module.t option)
  (children:child array): 'a t
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style Style.to_display)
    ?onClick ?cssModule:(Belt.Option.map cssModule Css_Module.make) children

let flex
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.flex Style.t option)
  ?onClick ?(cssModule:Css_Property.flex Css_Module.t option)
  (children:child array): 'a t
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style Style.to_display)
    ?onClick ?cssModule:(Belt.Option.map cssModule Css_Module.make) children

let inline_flex
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.flex Style.t option)
  ?onClick ?(cssModule:Css_Property.flex Css_Module.t option)
  (children:child array): 'a t
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style Style.to_display)
    ?onClick ?cssModule:(Belt.Option.map cssModule Css_Module.make) children
