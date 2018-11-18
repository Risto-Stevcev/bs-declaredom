type 'a t = [> Css.Property.color ] as 'a

type value = [ `color of string | `inherit_ ]

let show: value -> string = function
| `color color -> color
| `inherit_ -> "inherit"

external _make: string -> Css.Property.Type.color Css.Property.t = "%identity"

let make value: 'a t = `color (_make @@ show value)
