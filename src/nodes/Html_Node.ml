(**
 This module defines HTML nodes

 The types correspond to the {{: https://html.spec.whatwg.org/multipage/indices.html#element-content-categories} content categories}
 so that only valid children are around for an element.

 Due to some political differences, there are currently two organitzations that work on
 the HTML specs: WHATWG and W3C.

 The {{: https://html.spec.whatwg.org/multipage/} WHATWG HTML} spec is currently considered 
 the authoritative source. W3C also published the 
 {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} HTML 5.2} spec 
 that will also be referenced in these docs.
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
   and button = [ `button ]
   and div = [ `div ]
   and source = [ `source ]
   and span = [ `span ]
   and title = [ `title ]

   and text = [ `text ]
   and fragment = [ `fragment ]

   (** {{: https://html.spec.whatwg.org/multipage/custom-elements.html#custom-elements} Custom Elements} *)
   and +'a custom = [ `custom of 'a ]

  (** Elements with no children *)
  type empty = br

  type other = [ text | fragment ]
end

include Node


module ContentCategory = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/indices.html#element-content-categories} Content Categories} 
   ({{: https://www.w3.org/TR/html52/dom.html#kinds-of-content} W3C})
   *)

  type none = source
  type metadata = [ base | title ]
  type 'a flow =
    [ a | abbr | address | area | article | aside | audio | b | bdi | bdo
    | blockquote | br | button | div | span | 'a custom ]
  type sectioning
  type sectioning_root = [ blockquote | body ]
  type heading = fragment
  type 'a phrasing =
    [ a | abbr | area | article | aside | audio | b | bdi | bdo | br | button
    | span | 'a custom | other ]
  type embedded = audio
  type interactive = [ a | audio | button ]
  type 'a palpable =
    [ a | abbr | address | article | aside | audio | b | bdi | bdo | blockquote
    | button
    | 'a custom ]


  module Element = struct
    type form_associated = button
     and listed = button
     and submittable = button
     and resettable
     and autocapitalizable = button
     and labelable = button
     and script_supporting (* [ script | template ] *)
     and media = audio

     type category =
        [ form_associated | listed | submittable (*| resettable*)
        | autocapitalizable | labelable (*| script_supporting*) | media ]
  end

  type 'a element =
    [ embedded | 'a flow | heading | interactive | metadata | 'a palpable
    | 'a phrasing (*| sectioning*)| sectioning_root
    | Element.category
    | none ]

  type 'a content =
    [ 'a element | other ]

  type 'a flex_item = [ 'a flow | 'a phrasing ]

  (**
   {{: https://html.spec.whatwg.org/multipage/dom.html#transparent-content-models} Transparent content}
   ({{: https://www.w3.org/TR/html52/dom.html#transparent-content-models} W3C})
   *)
end

include ContentCategory


external to_node: [< _ content] t -> Dom.node = "%identity"
external to_element: [< _ element] t -> Dom.element = "%identity"
