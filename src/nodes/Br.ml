type 'a t = [> Node.br ] as 'a

type child = [ Node.phrasing | Node.other ]

let make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style
  ?onClick
  (): 'a t
  = 
  FFI.make' "br"
    (Global.make
      (Global.Attributes.make ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex ?title ?style ())
      (Global.Events.make ?onClick ())
    )
    ()
  |> (fun e -> `br e)

