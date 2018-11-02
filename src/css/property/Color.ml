type 'a t = [> `color of Css.Property.color Css.Property.t ] as 'a

type value = [ `color of string | `inherit_ ]

let valueToJs: value -> string = function
| `color color -> color
| `inherit_ -> "inherit"

external _make:
  color:string -> Css.Property.color Css.Property.t = "" [@@bs.obj]

let make value: 'a t = `color (_make ~color:(valueToJs value))
