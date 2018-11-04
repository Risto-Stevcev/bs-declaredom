let underscore_to_dash = Js.String.replaceByRe [%re "/_/g"] "-"

let camel_to_dash str =
  str
  |> Js.String.replaceByRe [%re "/([a-z]{1})([A-Z]{1})/g"] "$1-$2"
  |> Js.String.toLowerCase

let single_whitespace = Js.String.replaceByRe [%re "/\s+/g"] " "

let combine_styles styles =
  let value =
    styles
    |> Js.Array.joinWith " "
    |> single_whitespace
    |> Js.String.trim
  in
  if Js.String.length value > 0 then value else "inherit"
