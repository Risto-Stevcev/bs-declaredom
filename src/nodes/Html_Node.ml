(**
 This module defines HTML nodes

 The types correspond to the {{: https://www.w3.org/TR/html52/fullindex.html#element-content-categories} content categories}
 so that only valid children are around for an element.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} HTML 5.2 elements table} for reference.
 *)

type +'node t


module Node = struct
  type a = [ `a ]
   and br = [ `br ]
   and div = [ `div ]
   and span = [ `span ]
   and title = [ `title ]

   and text = [ `text ]
   and fragment = [ `fragment ]
   and custom = [ `custom ]

  (** Elements with no children *)
  type empty = br

  type other = [ text | fragment ]
end

include Node



module ContentCategory = struct
  type metadata = title
  type script_supporting (* = [ script | template ] *)
  type flow =
    [ a | div | span | br | custom | fragment ]
  type sectioning = fragment
  type heading = fragment
  type phrasing =
    [ span | br | custom  | other ]
  type embedded = fragment
  type interactive = [ a | fragment ]
  type form = fragment
  type palpable = [ custom | fragment ]

  type content =
    [ flow | sectioning | heading | phrasing | embedded
    | interactive | form | palpable | metadata | other ]

  type flex_item = content

  (**
   {e NOTE}: transparent is treated like content because there's no way to inherit
   the content model of parent -- the callee does not know about the caller
   *)
  type transparent = content
end

include ContentCategory


external to_node: _ t -> Dom.node = "%identity"
