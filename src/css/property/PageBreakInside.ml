(** {{: https://www.w3.org/TR/CSS22/page.html#break-inside } Break inside elements} *)

type 'a orphans = [> Css_Property.orphans ] as 'a
 and 'a widows  = [> Css_Property.widows  ] as 'a

module Value = struct
  type t = [ Css_Value.Global.t | `lines of int ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Css_Value.Global.show global
  | `lines lines ->
    string_of_int lines
end

external _make: string -> _ Css_Property.t = "%identity"

let orphans (value: Value.t): _ orphans = `orphans (_make @@ Value.show value)
let widows (value: Value.t): _ widows = `widows (_make @@ Value.show value)
