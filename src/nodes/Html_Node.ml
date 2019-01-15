(**
 This module defines HTML nodes

 The types correspond to the {{: https://www.w3.org/TR/html52/fullindex.html#element-content-categories} content categories}
 so that only valid children are around for an element.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} HTML 5.2 elements table} for reference.
 *)

type 'node t

module Type = struct
  type a and audio and abbr and br and button and div and header and h1 and span
   and tbody
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
   and tbody = [ `tbody of Type.tbody t ]

   and text = [ `text of Type.text t ]
   and fragment = [ `fragment of Type.fragment t ]
   and custom = [ `custom of Type.custom t ]

  (** Elements with no children *)
  type empty = br

  type other = [ text | fragment ]
end

include Node



module ContentCategory = struct
  type none = tbody
  type script_supporting (* = [ script | template ] *)
  type flow =
    [ a | div | span | br | custom | img | fragment ]
  type sectioning = [ header | fragment ]
  type heading = [ h1 | fragment ]
  type phrasing =
    [ abbr | span | br | custom | img | other ]
  type embedded = [ audio | img | fragment ]
  type interactive = [ a | img | fragment ]
  type form = [ button | img | fragment ]
  type palpable = [ custom | img | fragment ]

  type content =
    [ flow     | sectioning | heading | phrasing | embedded | interactive | form
    | palpable | other | none ]

  module FlexItem = struct
    type flex_item =
      [ flow     | sectioning | heading | phrasing | embedded | interactive | form
      | palpable | other ]
  end

  include FlexItem

  (**
   {e NOTE}: transparent is treated like content because there's no way to inherit
   the content model of parent -- the callee does not know about the caller
   *)
  type transparent = content
end

include ContentCategory


module Convert = struct
  external node: 'a t -> Dom.node = "%identity"
end


let to_node (value: [< content]): Dom.node =
match (value :> content) with
| `a x         -> Convert.node x
| `br x        -> Convert.node x
| `div x       -> Convert.node x
| `header x    -> Convert.node x
| `h1 x        -> Convert.node x
| `abbr x      -> Convert.node x
| `audio x     -> Convert.node x
| `button x    -> Convert.node x
| `span x      -> Convert.node x
| `tbody x     -> Convert.node x
| `custom x    -> Convert.node x
| `text x      -> Convert.node x
| `fragment x  -> Convert.node x
| `img x       -> Convert.node x
