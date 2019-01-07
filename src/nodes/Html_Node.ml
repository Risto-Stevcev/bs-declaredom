(**
 This module defines HTML nodes

 The types correspond to the {{: https://www.w3.org/TR/html52/fullindex.html#element-content-categories} content categories}
 so that only valid children are around for an element.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} HTML 5.2 elements table} for reference.
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

  type other = [ text | fragment ]
  type flow =
    [
    | a | div | span | br | custom | img | other
    ]
  type sectioning = [ header | other ]
  type heading = [ h1 | other ]
  type phrasing =
    [ abbr | span | br | custom | img | other ]
  type embedded = [ audio | img | other ]
  type interactive = [ a | img | other ]
  type form = [ button | img | other ]
  type palpable = [ custom | img | other ]
  type content =
    [
    | flow     | sectioning | heading | phrasing | embedded | interactive | form
    | palpable | other
    ]

  (**
   {e NOTE}: transparent is treated like content because there's no way to inherit
   the content model of parent -- the callee does not know about the caller
   *)
  type transparent = content
end

include ContentCategory


module Convert = struct
  external node: content -> Dom.node = "%identity"
end


let to_node: [< content] -> Dom.node = function
| `a _ as x         -> Convert.node (x :> content)
| `br _ as x        -> Convert.node (x :> content)
| `div _ as x       -> Convert.node (x :> content)
| `header _ as x    -> Convert.node (x :> content)
| `h1 _ as x        -> Convert.node (x :> content)
| `abbr _ as x      -> Convert.node (x :> content)
| `audio _ as x     -> Convert.node (x :> content)
| `button _ as x    -> Convert.node (x :> content)
| `span _ as x      -> Convert.node (x :> content)
| `custom _ as x    -> Convert.node (x :> content)
| `text _ as x      -> Convert.node (x :> content)
| `fragment _ as x  -> Convert.node (x :> content)
| `img _ as x       -> Convert.node (x :> content)
