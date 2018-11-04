let underscore_to_dash = Js.String.replaceByRe [%re "/_/g"] "-"

let camel_to_dash str =
  str
  |> Js.String.replaceByRe [%re "/([a-z]{1})([A-Z]{1})/g"] "$1-$2"
  |> Js.String.toLowerCase
