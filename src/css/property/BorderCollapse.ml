(** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} *)

type 'a t = [> Css_Property.border_collapse ] as 'a

module Value = struct
  type t = [ Css_Value.Global.t | `collapse | `separate ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
  | `collapse -> "collapse"
  | `separate -> "separate"
end

external _make:
  string -> Css_Property.Type.border_collapse Css_Property.t = "%identity"

let make value: 'a t = `border_collapse (_make @@ Value.show value)
