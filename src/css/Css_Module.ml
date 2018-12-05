(* TODO: fix comment *)
(**
 Motivation
  - CSS is supposed to decouple the structure (HTML) with it's
    representation (CSS), but selectors do exactly that: .foo h1,
    .bar [rel="foo"], .baz::nth-child(3n) etc
  - The HTML itself should be dealing with these kinds of relationships,
    not CSS
  - What's worse if that these are weak references. If something in the HTML
    structure changes, it can break the CSS. If an element changes from a 
    block to an inline element, it can prevent styles from rendering.
  - Theming should be handled at the application/component level like 
    css-modules, to avoid these weak references
 
  - modules
    - takes a list of \@media scoped rulesets
    - does not support css that's coupled with html, such as
      structural pseudoclasses
 *)

(* https://www.w3.org/TR/2011/REC-css3-selectors-20110929/ *)

(* Creates css modules -- scoped styles that are namespaced by it's class 
 * name
 *)
type 'a t = { name: string; declaration: 'a Js.Dict.t }

external hrtime: unit -> int * int = "" [@@bs.scope "process"] [@@bs.val]

let getClass ?(className="") ?(cssModule={name=""; declaration=Js.Dict.empty ()}) () =
  let {name} = cssModule in
  let separator = if className = "" || name = "" then "" else " " in
  Js.String.trim @@ className ^ separator ^ name

let make { name; declaration }: _ t =
  { name
  ; declaration =
      declaration |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display))
  }

let make' declaration =
  let (s, ms) = hrtime () in
  {name = "m"^ Js.Int.toString s ^"_"^ Js.Int.toString ms; declaration}
