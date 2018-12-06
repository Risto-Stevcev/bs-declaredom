(** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#the-img-element } The [img] element} *)

type 'a t = [> Node.img ] as 'a

type child =
  [ Node.flow | Node.phrasing | Node.embedded | Node.form | Node.interactive
  | Node.palpable ]

let make
  ?id ?className ?classSet ?contentEditable ?dataset ?draggable ?tabIndex
  ?title ?(style:Css_Property.replaced Style.t option)
  ?onClick ?(cssModule:Css_Property.replaced Css_Module.t option)
  (): 'a t
  =
  let name = Css_Module.getClass ?className ?cssModule ()
  in
  FFI.make'
    "img"
    (Global.make
      (Global.Attributes.make ?id ~className:name ?classSet ?contentEditable
                              ?dataset ?draggable ?tabIndex ?title ?style ())
      (Global.Events.make ?onClick ()))
    ()
  |> (fun e -> `img e)

