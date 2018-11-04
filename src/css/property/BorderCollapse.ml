(** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} *)

type 'a t = [> Css.Property.border_collapse ] as 'a

module Value = struct
  type t = [ Css_Value.Global.t | `collapse | `separate ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
  | `collapse -> "collapse"
  | `separate -> "separate"
end

external to_json:
  Css.Property.border_collapse Css.Property.t ->
  <borderCollapse: string> Js.t = "%identity"

external _make:
  borderCollapse:string ->
  Css.Property.Type.border_collapse Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `border_collapse (_make ~borderCollapse:(Value.show value))
