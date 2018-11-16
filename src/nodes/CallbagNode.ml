type 'a t = [> Node.custom ] as 'a

let make cb: 'a t = 
  FFI.make' "x-callbag" (Global.empty ()) ()
  |> FFI.Unsafe.source cb
  |> (fun e -> `custom e)
