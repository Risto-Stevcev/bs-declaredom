(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font size} *)

type 'a t = [> Css.Property.font_size ] as 'a

external _make:
  fontSize:string -> Css.Property.Type.font_size Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `font_size (_make ~fontSize:(Css.Value.FontSize.show value))
