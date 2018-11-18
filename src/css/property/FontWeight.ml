(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

type 'a t = [> Css.Property.font_weight ] as 'a

external _make:
  string -> Css.Property.Type.font_weight Css.Property.t = "%identity"

let make value: 'a t = `font_weight (_make @@ Css.Value.FontWeight.show value)
