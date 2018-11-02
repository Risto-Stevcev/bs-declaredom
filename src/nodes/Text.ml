type 'a t = [> `text of Node.text Node.t ] as 'a

let make (text: string): 'a t =
  FFI.make' "text" (Global.empty ()) text
  |> (fun e -> `text e)
