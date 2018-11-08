(** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font family} *)

type 'a t = [> Css.Property.font_family ] as 'a

external _make:
  fontFamily:string ->
  Css.Property.Type.font_family Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `font_family (_make ~fontFamily:(Css.Value.FontFamily.show value))
