type 'a t = [> Css.Property.float_ ] as 'a

module Value = struct
  type value = [ `left | `right | `none ] [@@bs.deriving jsConverter]

  type t = [ Css.Value.Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Css.Value.Global.show value
  | (`none | `left | `right ) as value -> 
    valueToJs value
end

external _make: string -> Css.Property.Type.float_ Css.Property.t = "%identity"

let make value: 'a t = `float (_make @@ Value.show value)
