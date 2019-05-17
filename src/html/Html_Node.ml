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
   and h1 = [ `h1 ]
   and h2 = [ `h2 ]
   and h3 = [ `h3 ]
   and h4 = [ `h4 ]
   and h5 = [ `h5 ]
   and h6 = [ `h6 ]
   and head = [ `head ]
   and header = [ `header ]
   and hgroup = [ `hgroup ]
   and hr = [ `hr ]
   and html = [ `html ]
   and i = [ `i ]
   and iframe = [ `iframe ]
   and img = [ `img ]
   and input = [ `input ]
   and ins = [ `ins ]
   and kbd = [ `kbd ]
   and label = [ `label ]
   and legend = [ `legend ]
   and li = [ `li ]
   and link = [ `link ]
   and main = [ `main ]
   and map = [ `map ]
   and mark = [ `mark ]
   and meta = [ `meta ]
   and meter = [ `meter ]
   and nav = [ `nav ]
   and noscript = [ `noscript ]
   and option = [ `option ]
   and object_ = [ `object_ ]
   and ol = [ `ol ]
   and optgroup = [ `optgroup ]
   and output = [ `output ]
   and p = [ `p ]
   and param = [ `param ]
   and picture = [ `picture ]
   and pre = [ `pre ]
   and progress = [ `progress ]
   and q = [ `q ]
   and rb = [ `rb ]
   and rp = [ `rp ]
   and rt = [ `rt ]
   and rtc = [ `rtc ]
   and ruby = [ `ruby ]
   and s = [ `s ]
   and samp = [ `samp ]
   and script = [ `script ]
   and section = [ `section ]
   and select = [ `select ]
   and source = [ `source ]
   and span = [ `span ]
   and slot = [ `slot ]
   and small = [ `small ]
   and strong = [ `strong ]
   and style = [ `style ]
   and sub = [ `sub ]
   and summary = [ `summary ]
   and sup = [ `sup ]
   and table = [ `table ]
   and tbody = [ `tbody ]
   and td = [ `td ]
   and template = [ `template ]
   and textarea = [ `textarea ]
   and tfoot = [ `tfoot ]
   and th = [ `th ]
   and thead = [ `thead ]
   and time = [ `time ]
   and title = [ `title ]
   and tr = [ `tr ]
   and track = [ `track ]
   and u = [ `u ]
   and ul = [ `ul ]
   and var = [ `var ]
   and video = [ `video ]
   and wbr = [ `wbr ]

   and text = [ `text ]
   and fragment = [ `fragment ]

   (** {{: https://html.spec.whatwg.org/multipage/custom-elements.html#custom-elements} Custom Elements} *)
   and +'a custom = [ `custom of 'a ]

  (** Elements with no children *)
  type empty = br

  type headings = [ h1 | h2 | h3 | h4 | h5 | h6 ]

  type other = [ text | fragment ]
end

include Node


module ContentCategory = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/indices.html#element-content-categories} Content Categories}
   ({{: https://www.w3.org/TR/html52/dom.html#kinds-of-content} W3C})
   *)

  type none =
    [ caption | col | colgroup | dd | dt | figcaption | head | html | legend
    | li | optgroup | option | param | rb | rp | rt | rtc | source | summary
    | tbody | tfoot | th | thead | tr | track ]
  type metadata =
    [ base | template | title | link | meta | noscript | script | style ]
  type 'a flow =
    [ a | abbr | address | area | article | aside | audio | b | bdi | bdo
    | blockquote | br | button | canvas | cite | code | data | datalist | del
    | details | dfn | dialog | div | dl | em | embed | fieldset | figure
    | footer | form | headings | hgroup | header | hr | i | iframe | img | input
    | ins | kbd | label | link | main | map | mark | meta | meter | nav
    | noscript | object_ | ol | output | p | picture | pre | progress | q | ruby
    | s | samp | script | section | select | slot | small | span | strong | sub
    | sup | table | template | textarea | time | u | ul | var | video | wbr
    | 'a custom ]
  type sectioning = [ article | aside | nav | section ]
  type sectioning_root =
    [ blockquote | body | details | dialog | fieldset | figure | td ]
  type heading = [ fragment | headings | hgroup ]
  type 'a phrasing =
    [ a | abbr | area | article | aside | audio | b | bdi | bdo | br | button
    | canvas | cite | code | data | datalist | del | dfn | em | embed | i
    | iframe | img | input | ins | kbd | label | link | map | mark | meta
    | meter | noscript | object_ | output | picture | progress | q | ruby | s
    | samp | script | select | slot | small | span | strong | sub | sup
    | template | textarea | time | u | var | video | wbr
    | 'a custom | other ]
  type embedded =
    [ audio | canvas | em | iframe | img | object_ | picture | video ]
  type interactive =
    [ a | audio | button | details | em | iframe | img | input | label
    | object_ | select | textarea | video ]
  type 'a palpable =
    [ a | abbr | address | article | aside | audio | b | bdi | bdo | blockquote
    | button | canvas | cite | code | data | details | dfn | em | figure
    | footer | form | headings | hgroup | header | i | iframe | img | input
    | ins | kbd | label | main | map | mark | meter | nav | object_ | ol
    | output | p | pre | progress | q | ruby | s | samp | section | select
    | small | strong | sub | sup | table | textarea | time | u | ul | var
    | video
    | 'a custom ]


  module Element = struct
    type form_associated = [ button | fieldset | img | input | label ]
     and listed =
       [ button | fieldset | input | object_ | output | select | textarea ]
     and submittable = [ button | input | object_ | select | textarea ]
     and resettable = [ input | output | select | textarea ]
     and autocapitalizable =
       [ button | fieldset | input | output | select | textarea ]
     and labelable =
       [ button | input | meta | output | progress | select | textarea ]
     and script_supporting = [ script | template ]
     and media = audio

     type category =
        [ form_associated | listed | submittable | resettable
        | autocapitalizable | labelable | script_supporting | media ]
  end

  type 'a element =
    [ embedded | 'a flow | heading | interactive | metadata | 'a palpable
    | 'a phrasing | sectioning | sectioning_root
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

let show node =
  node
  |. to_node
  |. Webapi.Dom.Element.ofNode
  |. Belt.Option.map Webapi.Dom.Element.outerHTML
  |. Belt.Option.getExn
