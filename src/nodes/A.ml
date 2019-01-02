(** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#the-a-element } The [a] element *)

type 'a t = [> Node.a ] as 'a

type child = [ Node.flow | Node.phrasing | Node.other ]

let make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title
  ?(style:Css_Property.non_replaced Style.t option)
  ?onClick
  (children:child array): 'a t
  = 
  FFI.make' "a"
    (Global.make
      (Global.Attributes.make ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style ())
      (Global.Events.make ?onClick ())
    )
    (children |> Js.Array.map (fun e -> Node.unwrap (e :> Node.content)))
  |> (fun e -> `a e)


(*
type a

type flow = [ `a of a Node.t | `b of unit Node.t ]
type content = [ `span of unit Node.t ]
type child = [ flow | content ]

external generalize: _ Node.t -> unit Node.t = "%identity"

let unwrap (x: child): 'a Node.t = match x with
 | `a a -> generalize a | `b b -> generalize b | `span span -> generalize span

let x: a Node.t = Obj.magic ()

let z: flow list = [`a (Obj.magic ()); `b (Obj.magic ()); `a (Obj.magic ())]
let z': child list = z |> List.map (fun e -> (e :> child))

let y: flow = `a x
let y': child = (y :> child)

let q (a: flow): int = let _ = unwrap (a :> child) in 123

module Make (T: Node.Type) = struct
  let make
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
    ?onClick
    (children:'node Node.t array): T.t Node.t
    = 
    FFI.make' "a"
      (Global.make
        (Global.Attributes.make ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style ())
        (Global.Events.make ?onClick ())
      )
      children

  let make_jsx
    ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
    ?onClick
    ?(children:'node Node.t list=[])
    (): T.t Node.t
    =
    make ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
      ?onClick
      (Js.List.toVector children)
end

module Generic = Make (struct type t = unit end)
module Concrete = Make (struct type t = a end)
*)
