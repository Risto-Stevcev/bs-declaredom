type 'node t

type a
 and abbr
 and audio
 and br
 and div
 and button
 and header
 and h1
 and span

type custom

type text
 and fragment

type inline = [ `a of a t | `abbr of abbr t | `span of span t ]
type block = [ `div of div t ]
type display = [ block | inline ]

(* Elements with no children *)
type empty = [ `br of br t ]

external generic: _ t -> unit t = "%identity"


(*
(* TODO *)
module type Custom = sig
  type custom
  val unwrap: custom t -> unit t
end
module DefaultCustom = struct
  type custom
  external unwrap: custom t -> unit t = "%identity"
end
(* TODO: this is an example *)
module ExampleCustom = struct
  type callbag
  type custom = [ `callbag of callbag t ]
  let unwrap x = match x with
  | `callbag c -> generic c
end
type custom = ExampleCustom.custom
*)

type flow =
  [
  | `a of a t | `div of div t | `span of span t | `br of br t
  | `custom of custom t
  ]
type sectioning = [ `header of header t ]
type heading = [ `h1 of h1 t ]
type phrasing =
  [ `abbr of abbr t | `span of span t | `br of br t | `custom of custom t ]
type embedded = [ `audio of audio t ]
type interactive = [ `a of a t ]
type form = [ `button of button t ]
type palpable = [ `custom of custom t ]
type other = [ `text of text t | `fragment of fragment t ]
type content =
  [
  | flow     | sectioning | heading | phrasing | embedded | interactive | form
  | palpable | other
  ]


let unwrap: content -> unit t =
  function
  | `a a -> generic a
  | `br br -> generic br
  | `div div -> generic div
  | `header header -> generic header
  | `h1 h1 -> generic h1
  | `abbr abbr -> generic abbr
  | `audio audio -> generic audio
  | `button button -> generic button
  | `span span -> generic span
  | `custom custom -> generic custom
  | `text text -> generic text
  | `fragment fragment -> generic fragment

external dom: unit t -> Dom.element = "%identity"

let to_dom x = (x :> content) |> unwrap |> dom
