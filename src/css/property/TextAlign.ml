(** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text-align } *)

type 'a t = [> Css.Property.text_align ] as 'a

type value =
  [ `left | `right | `center | `justify | `inherit_ [@bs.as "inherit"] ]
  [@@bs.deriving jsConverter]

external _make:
  string -> Css.Property.Type.text_align Css.Property.t = "%identity"

let make value: 'a t = `text_align (_make @@ valueToJs value)
