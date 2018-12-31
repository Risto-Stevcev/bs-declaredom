type 'a t = [> Node.div ] as 'a

type child = [ Node.flow | Node.other ]

(* TODO: hide *)
module Display = struct
  (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-display} Display} *)

  type 'a t = [> Css_Property.display ] as 'a

  module Value = struct
    type value =
      [ `inline_block [@bs.as "inline-block"] | `flex
      | `inline_flex [@bs.as "inline-flex"] ]
      [@@bs.deriving jsConverter]

    type t = [ Css_Value.Global.t | value ]

    let show: t -> string = function
    | (`inherit_ | `initial | `unset) as global ->
      Css_Value.Global.show global
    | (`inline_block | `flex | `inline_flex) as value ->
      valueToJs value
  end

  let make value: 'a t = `display (Obj.magic @@ Value.show value)

  let css_module display css_module' =
    let {Css_Module.name; declaration} = Css_Module.make css_module'
    in
    { Css_Module.name
    ; declaration =
      Util.merge
        (Js.Dict.fromList [("display", make display)])
        declaration
    }

  let style display style' =
    Util.merge
      (Js.Dict.fromList [("display", make display)])
      (Style.to_display style')
end


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
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.block Style.t option)
  ?onClick ?(cssModule:Css_Property.block Css_Module.t option) children
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style Style.to_display)
    ?onClick ?cssModule:(Belt.Option.map cssModule Css_Module.make) children

(**
 * Inline-block: 
 * {{: https://www.w3.org/TR/CSS22/visuren.html#inline-boxes} Inline-boxes}
 * the element will create an inline-level box but is not an inline-box
 *)
(* TODO: for css_modules, it should allow creating `Css_Property.flex Css_module.t`,
 * so it `Css_Property.display` needs to split into `Css_Property.display_flex`, etc
 * and include that in the `type flex = ` group
 *)
let inline_block
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.any Style.t option)
  ?onClick ?(cssModule:Css_Property.any Css_Module.t option)
  (children:child array): 'a t
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style (Display.style `inline_block))
    ?onClick ?cssModule:(Belt.Option.map cssModule (Display.css_module `inline_block))
    children

let flex
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.flex Style.t option)
  ?onClick ?(cssModule:Css_Property.flex Css_Module.t option)
  (children:child array): 'a t
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style (Display.style `flex))
    ?onClick ?cssModule:(Belt.Option.map cssModule (Display.css_module `flex))
    children

let inline_flex
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.flex Style.t option)
  ?onClick ?(cssModule:Css_Property.flex Css_Module.t option)
  (children:child array): 'a t
  =
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style:(Belt.Option.map style (Display.style `inline_flex))
    ?onClick ?cssModule:(Belt.Option.map cssModule (Display.css_module `inline_flex))
    children
