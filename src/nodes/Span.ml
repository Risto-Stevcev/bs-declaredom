type 'a t = [> `span of Node.span Node.t ] as 'a

type child = [ Node.phrasing | Node.other ]

let make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
  ?onClick ?(cssModule:Css.Property.inline Css.Module.t option)
  (children:child array): 'a t
  =
  let name = Css.Module.getClass ?className ?cssModule ()
  in
  FFI.make' "span"
    (Global.make
      (Global.Attributes.make ?id ~className:name ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style ())
      (Global.Events.make ?onClick ())
    )
    (children |> Js.Array.map (fun e -> Node.unwrap (e :> Node.content)))
  |> (fun e -> `span e)

