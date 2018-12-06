(** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter spacing} *)

type 'a t = [> Css_Property.letter_spacing ] as 'a

module Value = struct
  type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Css_Value.Global.show value
  | `length _ as length ->
    Css_Value.Length.show length
  | `normal ->
    "normal"
end

external _make:
  string -> Css_Property.Type.letter_spacing Css_Property.t = "%identity"

let make value: 'a t = `letter_spacing (_make @@ Value.show value)
