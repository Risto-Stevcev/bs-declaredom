type 'a t = [> Node.text ] as 'a

let make (text: string): 'a t =
  FFI.make_text text
  |> (fun e -> `text e)
