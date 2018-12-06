(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

type 'a t = [> Css_Property.font_weight ] as 'a

external _make:
  string -> Css_Property.Type.font_weight Css_Property.t = "%identity"

let make value: 'a t = `font_weight (_make @@ Css_Value.FontWeight.show value)
