(** {{: https://www.w3.org/TR/CSS22/visuren.html#flow-control } Clear} *)

type 'a t = [> Css.Property.clear ] as 'a

module Value = struct
  type value = [ `left | `right | `both | `none ] [@@bs.deriving jsConverter]

  type t = [ Css.Value.Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Css.Value.Global.show value
  | (`none | `left | `right | `both) as value -> 
    valueToJs value
end

external _make: string -> Css.Property.Type.clear Css.Property.t = "%identity"

let make value: 'a t = `clear (_make @@ Value.show value)
