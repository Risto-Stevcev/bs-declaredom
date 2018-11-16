type 'a t = [> Node.fragment ] as 'a

type child = Node.content

let make (children:child array): 'a t = 
  FFI.make' "fragment"
    (Js.Obj.empty () |> Obj.magic)
    (children |> Js.Array.map (fun e -> Node.unwrap (e :> Node.content)))
  |> (fun e -> `fragment e)
