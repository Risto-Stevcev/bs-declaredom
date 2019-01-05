(**
 * This module defines HTML nodes
 *
 * The types correspond to the {{: https://www.w3.org/TR/html52/fullindex.html#element-content-categories} content categories}
 * so that only valid children are around for an element
 *
 * See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} HTML 5.2 elements table} for reference
 *)

type 'node t

module Type = struct
  type a and audio and abbr and br and div and button and header and h1 and span
   and canvas and embed and iframe and img and object_ and video

  type custom and text and fragment
end


module Node = struct
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

   and text = [ `text of Type.text t ]
   and fragment = [ `fragment of Type.fragment t ]
   and custom = [ `custom of Type.custom t ]
end

include Node



module ContentCategory = struct
  (** Elements with no children *)
  type empty = br

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
end

include ContentCategory


module Convert = struct
  external node: 'a t -> Dom.node = "%identity"
end



let to_dom_node: [< content] -> Dom.node = function
| `a x          -> Convert.node x
| `br x         -> Convert.node x
| `div x        -> Convert.node x
| `header x     -> Convert.node x
| `h1 x         -> Convert.node x
| `abbr x       -> Convert.node x
| `audio x      -> Convert.node x
| `button x     -> Convert.node x
| `span x       -> Convert.node x
| `custom x     -> Convert.node x
| `text x       -> Convert.node x
| `fragment x   -> Convert.node x
| `img x        -> Convert.node x
