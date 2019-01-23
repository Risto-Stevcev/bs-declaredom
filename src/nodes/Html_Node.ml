(**
 This module defines HTML nodes

 The types correspond to the {{: https://www.w3.org/TR/html52/fullindex.html#element-content-categories} content categories}
 so that only valid children are around for an element.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} HTML 5.2 elements table} for reference.
 *)

type +'node t


module Node = struct
  type a = [ `a ]
   and abbr = [ `abbr ]
   and address = [ `address ]
   and area = [ `area ]
   and article = [ `article ]
   and aside = [ `aside ]
   and audio = [ `audio ]
   and b = [ `b ]
   and base = [ `base ]
   and bdi = [ `bdi ]
   and bdo = [ `bdo ]
   and blockquote = [ `blockquote ]
   and body = [ `body ]
   and br = [ `br ]
   and div = [ `div ]
   and source = [ `source ]
   and span = [ `span ]
   and title = [ `title ]

   and text = [ `text ]
   and fragment = [ `fragment ]
   and +'a custom = [ `custom of 'a ]

  (** Elements with no children *)
  type empty = br

  type other = [ text | fragment ]
end

include Node



module ContentCategory = struct
  type none = source
  type metadata = [ base | title ]
  type script_supporting (* = [ script | template ] *)
  type 'a flow =
    [ a | abbr | address | area | article | aside | audio | b | bdi | bdo
    | blockquote
    | br | div | span | 'a custom | fragment ]
  type sectioning = fragment
  type sectioning_root = [ blockquote | body | fragment ]
  type heading = fragment
  type 'a phrasing =
    [ a | abbr | area | article | aside | audio | b | bdi | bdo | br | span
    | 'a custom  | other ]
  type embedded = [ audio | fragment ]
  type interactive = [ a | audio | fragment ]
  type form = fragment
  type palpable =
    [ a | abbr | address | article | aside | audio | b | bdi | bdo | blockquote
    | fragment ]

  type 'a content =
    [ 'a flow | sectioning | sectioning_root | heading | 'a phrasing | embedded
    | interactive | form | palpable | metadata | none | other ]

  type 'a flex_item = 'a content

  (**
   {e NOTE}: transparent is treated like content because there's no way to inherit
   the content model of parent -- the callee does not know about the caller
   *)
  type +'a transparent = 'a content
end

include ContentCategory


external to_node: [< _ content] t -> Dom.node = "%identity"
