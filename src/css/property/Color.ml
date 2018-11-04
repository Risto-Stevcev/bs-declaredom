type 'a t = [> Css.Property.color ] as 'a

type value = [ `color of string | `inherit_ ]

let valueToJs: value -> string = function
| `color color -> color
| `inherit_ -> "inherit"

external _make:
  color:string -> Css.Property.Type.color Css.Property.t = "" [@@bs.obj]

let make value: 'a t = `color (_make ~color:(valueToJs value))
