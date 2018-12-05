(** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text-align } *)

type 'a t = [> Css_Property.text_align ] as 'a

type value =
  [ `left | `right | `center | `justify | `inherit_ [@bs.as "inherit"] ]
  [@@bs.deriving jsConverter]

external _make:
  string -> Css_Property.Type.text_align Css_Property.t = "%identity"

let make value: 'a t = `text_align (_make @@ valueToJs value)
