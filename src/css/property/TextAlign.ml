type 'a t = [> `text_align of Css.Property.text_align Css.Property.t ] as 'a

type value =
  [ `left | `right | `center | `justify | `inherit_ ]
  [@@bs.deriving jsConverter]

external to_json:
  Css.Property.text_align Css.Property.t ->
  <textAlign: string> Js.t = "%identity"

external _make:
  textAlign:string -> Css.Property.text_align Css.Property.t = "" [@@bs.obj]

let make value: 'a t = `text_align (_make ~textAlign:(valueToJs value))
