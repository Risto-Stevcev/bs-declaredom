type 'a t = [> Node.div ] as 'a

type child = [ Node.flow | Node.other ]

module type V = sig
  type t
  val tToJs : t -> string
  val tFromJs : string -> t option
end
module F: V = struct
  type t = [
     | `A0
     | `A1  [@bs.as "c"]
     | `A2
     | `A3  [@bs.as "d"]
     | `A4
  ]
  [@@bs.deriving jsConverter]
end

let make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
  ?onClick ?(cssModule:Css_Property.block Css_Module.t option)
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


