(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

type 'a t = [> Css.Property.font_weight ] as 'a

external _make:
  fontWeight:string -> Css.Property.Type.font_weight Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `font_weight (_make ~fontWeight:(Css.Value.FontWeight.show value))
