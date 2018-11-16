type 'a t = [> Node.text ] as 'a

let make (text: string): 'a t =
  FFI.make' "text" (Global.empty ()) text
  |> (fun e -> `text e)
