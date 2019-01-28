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
   and canvas = [ `canvas ]
   and caption = [ `caption ]
   and cite = [ `cite ]
   and code = [ `code ]
   and col = [ `col ]
   and colgroup = [ `colgroup ]
   and data = [ `data ]
   and datalist = [ `datalist ]
   and dd = [ `dd ]
   and del = [ `del ]
   and details = [ `details ]
   and dfn = [ `dfn ]
   and dialog = [ `dialog ]
   and div = [ `div ]
   and dl = [ `dl ]
   and dt = [ `dt ]
   and em = [ `em ]
   and embed = [ `embed ]
   and fieldset = [ `fieldset ]
   and figcaption = [ `figcaption ]
   and figure = [ `figure ]
   and footer = [ `footer ]
   and form = [ `form ]
   and legend = [ `legend ]
   and option = [ `option ]
   and source = [ `source ]
   and span = [ `span ]
   and summary = [ `summary ]
   and template = [ `template ]
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

  type none =
    [ caption | col | colgroup | dd | dt | figcaption | legend | option
    | source | summary ]
  type metadata = [ base | template | title ]
  type 'a flow =
    [ a | abbr | address | area | article | aside | audio | b | bdi | bdo
    | blockquote | br | button | canvas | cite | code | data | datalist | del
    | details | dfn | dialog | div | dl | em | embed | fieldset | figure
    | footer | span | template | 'a custom ]
  type sectioning = [ article | aside ]
  type sectioning_root =
    [ blockquote | body | details | dialog | fieldset | figure ]
  type heading = fragment
  type 'a phrasing =
    [ a | abbr | area | article | aside | audio | b | bdi | bdo | br | button
    | canvas | cite | code | data | datalist | del | dfn | em | embed | span
    | template | 'a custom | other ]
  type embedded = [ audio | canvas | em ]
  type interactive = [ a | audio | button | details | em ]
  type 'a palpable =
    [ a | abbr | address | article | aside | audio | b | bdi | bdo | blockquote
    | button | canvas | cite | code | data | details | dfn | em | figure
    | footer | 'a custom ]


  module Element = struct
    type form_associated = [ button | fieldset ]
     and listed = [ button | fieldset ]
     and submittable = button
     and resettable
     and autocapitalizable = [ button | fieldset ]
     and labelable = button
     and script_supporting = template (* [ script | template ] *)
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
