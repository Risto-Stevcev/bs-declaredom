(** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-float} Float} *)

type 'a t = [> Css_Property.float_ ] as 'a

module Value = struct
  type value = [ `left | `right | `none ] [@@bs.deriving jsConverter]

  type t = [ Css_Value.Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Css_Value.Global.show value
  | (`none | `left | `right ) as value -> 
    valueToJs value
end

external _make: string -> Css_Property.Type.float_ Css_Property.t = "%identity"

let make value: 'a t = `float (_make @@ Value.show value)
