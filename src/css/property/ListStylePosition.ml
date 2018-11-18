(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-position} *)

type 'a t = [> Css.Property.list_style_position ] as 'a

external _make:
  string -> Css.Property.Type.list_style_position Css.Property.t = "%identity"

let make value: 'a t =
  `list_style_position (_make @@ Css.Value.ListStylePosition.show value)
