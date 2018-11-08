(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font style} *)

type 'a t = [> Css.Property.font_style ] as 'a

external _make:
  fontStyle:string ->
  Css.Property.Type.font_style Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `font_style (_make ~fontStyle:(Css.Value.FontStyle.show value))
