(** Utitily functions for declaredom *)

let underscore_to_dash = Js.String.replaceByRe [%re "/_/g"] "-"

let single_whitespace = Js.String.replaceByRe [%re "/\\s+/g"] " "

let combine_styles styles =
  let styles' =
    styles
    |> Js.Array.filter Js.Option.isSome 
    |> Js.Array.map Js.Option.getExn
    |> Js.Array.joinWith " "
  in
  if styles' = "" then "initial" else styles'

let join_with xs separator =
  xs
  |. Belt.List.reduce "" (fun acc e -> if acc="" then e else acc ^separator^ e)

let string_of_unit () = ""

external merge:
  (_ [@bs.as {json|{}|json}]) ->
  'a Js.Dict.t -> 'a Js.Dict.t -> 'a Js.Dict.t = "assign"
  [@@bs.scope ("Object")] [@@bs.val]

external merge_all:
  'a Js.Dict.t array -> 'a Js.Dict.t = "assign"
  [@@bs.scope ("Object")] [@@bs.splice] [@@bs.val]
