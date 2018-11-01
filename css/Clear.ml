type 'a t = [> `clear of Css.Property.clear Css.Property.t ] as 'a

type value =
  [ Css.Value.Keyword.t | Css.Value.Global.t ]

let valueToJs: value -> string = function
| (`inherit_ | `initial | `unset) as value ->
  Css.Value.Global.tToJs value
| (`none | `left | `right | `both | `inline_start | `inline_end) as keyword -> 
  Css.Value.Keyword.tToJs keyword

external _make:
  clear:string -> Css.Property.clear Css.Property.t = "" [@@bs.obj]

let make value: 'a t = `clear (_make ~clear:(valueToJs value))
