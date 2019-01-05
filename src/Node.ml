
let a = Html_Nodes.A.make
and span = Html_Nodes.Span.make
and div = Html_Nodes.Div.make
and br = Html_Nodes.Br.make
and text = Html_Nodes.Text.make



(** TODO: remove all after this *)
type 'node t

module Type = struct
  type a and audio and abbr and br and div and button and header and h1 and span
   and canvas and embed and iframe and img and object_ and video

  type custom and text and fragment
end

type a = [ `a of Type.a t ]
 and abbr = [ `abbr of Type.abbr t ]
 and audio = [ `audio of Type.audio t ]
 and br = [ `br of Type.br t ]
 and button = [ `button of Type.button t ]
 and canvas = [ `canvas of Type.canvas t ]
 and div = [ `div of Type.div t ]
 and embed = [ `embed of Type.embed t ]
 and h1 = [ `h1 of Type.h1 t ]
 and header = [ `header of Type.header t ]
 and iframe = [ `iframe of Type.iframe t ]
 and img = [ `img of Type.img t ]
 and object_ = [ `object_ of Type.object_ t ]
 and span = [ `span of Type.span t ]
 and video = [ `video of Type.video t ]


type custom = [ `custom of custom t ]
 and text = [ `text of text t ]
 and fragment = [ `fragment of fragment t ]


(**
 * {{: https://www.w3.org/TR/css-display-3/#replaced-element } Replaced element} 
 * ({{: https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element } see list})
 *)
type replaced = [ audio | canvas | embed | iframe | img | object_ | video ]

(** Non-replaced inline elements *)
type non_replaced = [ a | abbr | span ]
type inline = [ replaced | non_replaced ]
type block = div
type display = [ block | inline ]

(** Elements with no children *)
type empty = br

external generic: _ t -> unit t = "%identity"

type flow =
  [
  | a | div | span | br | custom | img
  ]
type sectioning = header
type heading = h1
type phrasing =
  [ abbr | span | br | custom | img ]
type embedded = [ audio | img ]
type interactive = [ a | img ]
type form = [ button | img ]
type palpable = [ custom | img ]
type other = [ text | fragment ]
type content =
  [
  | flow     | sectioning | heading | phrasing | embedded | interactive | form
  | palpable | other
  ]

(**
 * NOTE: transparent is treated like content because there's no way to inherit
 * the content model of parent -- the callee does not know about the caller
 *)
type transparent = content


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
  | `img img -> generic img

external dom: unit t -> Dom.element = "%identity"

let to_dom x = (x :> content) |> unwrap |> dom
