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

  module Set = struct
    let style display declaration =
      Util.merge
        (Js.Dict.fromList [("display", make display)])
        (Style.to_display declaration)
  end

  module IsSet = struct
    let style declaration = Js.Dict.get declaration "display" <> None

    let css_module {Css_Module.declaration} = style declaration
  end

  let set_display display style css_module =
  match (style, css_module) with
  | (style, Some css_module) when IsSet.css_module css_module ->
    ( style |. Belt.Option.map Style.to_display
    , css_module |. Css_Module.make |. Some )
  | (Some style, css_module) when IsSet.style style ->
    ( style |. Style.to_display |. Some
    , css_module |. Belt.Option.map Css_Module.make )
  | (Some style, css_module) ->
    ( style |. Style.to_display |> Set.style display |. Some
    , css_module |. Belt.Option.map Css_Module.make )
  | (None, css_module) ->
    ( Set.style display (Js.Dict.empty ()) |. Some
    , css_module |. Belt.Option.map Css_Module.make )
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
      (Global.Attributes.make ?id ~className:name ?classSet ?contentEditable
        ?dataset ?draggable ?tabIndex ?title ?style ())
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
 * The element will create an inline-level box but is not an inline-box.
 * Both inline and block specific rules apply.
 *)
let inline_block
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.inline_block Style.t option)
  ?onClick ?(cssModule:Css_Property.inline_block Css_Module.t option)
  (children:child array): 'a t
  =
  let (style, cssModule) = Display.set_display `inline_block style cssModule
  in
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style ?onClick ?cssModule children

let flex
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.flex Style.t option)
  ?onClick ?(cssModule:Css_Property.flex Css_Module.t option)
  (children:child array): 'a t
  =
  let (style, cssModule) = Display.set_display `flex style cssModule
  in
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style ?onClick ?cssModule children

let inline_flex
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.flex Style.t option)
  ?onClick ?(cssModule:Css_Property.inline_flex Css_Module.t option)
  (children:child array): 'a t
  =
  let (style, cssModule) = Display.set_display `inline_flex style cssModule
  in
  _make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
    ?title ?style ?onClick ?cssModule children
