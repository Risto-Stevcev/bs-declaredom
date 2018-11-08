(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-image} *)

type 'a t = [> Css.Property.list_style_image ] as 'a

external to_json:
  Css.Property.list_style_image Css.Property.t ->
  <list_style_image: string> Js.t = "%identity"

external _make:
  listStyleImage:string ->
  Css.Property.Type.list_style_image Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  let show = Css.Value.ListStyleImage.show in
  `list_style_image (_make ~listStyleImage:(show value))
