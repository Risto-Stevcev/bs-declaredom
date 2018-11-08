(** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter spacing} *)

type 'a t = [> Css.Property.letter_spacing ] as 'a

module Value = struct
  type t = [ Css.Value.Global.t | Css.Value.Length.t | `normal ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Css.Value.Global.show value
  | `length _ as length ->
    Css.Value.Length.show length
  | `normal ->
    "normal"
end

external to_json:
  Css.Property.letter_spacing Css.Property.t ->
  <letter_spacing: string> Js.t = "%identity"

external _make:
  letterSpacing:string ->
  Css.Property.Type.letter_spacing Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `letter_spacing (_make ~letterSpacing:(Value.show value))
