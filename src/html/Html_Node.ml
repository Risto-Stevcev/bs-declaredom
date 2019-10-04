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
  type standard_flow =
    [ a | abbr | address | area | article | aside | audio | b | bdi | bdo
    | blockquote | br | button | canvas | cite | code | data | datalist | del
    | details | dfn | dialog | div | dl | em | embed | fieldset | figure
    | footer | form | headings | hgroup | header | hr | i | iframe | img | input
    | ins | kbd | label | link | main | map | mark | meta | meter | nav
    | noscript | object_ | ol | output | p | picture | pre | progress | q | ruby
    | s | samp | script | section | select | slot | small | span | strong | sub
    | sup | table | template | textarea | time | u | ul | var | video | wbr ]
  type 'a flow =
    [ standard_flow | 'a custom ]
  type sectioning = [ article | aside | nav | section ]
  type sectioning_root =
    [ blockquote | body | details | dialog | fieldset | figure | td ]
  type heading = [ headings | hgroup ]
  type standard_phrasing =
    [ a | abbr | area | article | aside | audio | b | bdi | bdo | br | button
    | canvas | cite | code | data | datalist | del | dfn | em | embed | i
    | iframe | img | input | ins | kbd | label | link | map | mark | meta
    | meter | noscript | object_ | output | picture | progress | q | ruby | s
    | samp | script | select | slot | small | span | strong | sub | sup
    | template | textarea | time | u | var | video | wbr ]
  type 'a phrasing =
    [ standard_phrasing | 'a custom ]
  type embedded =
    [ audio | canvas | em | iframe | img | object_ | picture | video ]
  type interactive =
    [ a | audio | button | details | em | iframe | img | input | label
    | object_ | select | textarea | video ]
  type standard_palpable =
    [ a | abbr | address | article | aside | audio | b | bdi | bdo | blockquote
    | button | canvas | cite | code | data | details | dfn | em | figure
    | footer | form | headings | hgroup | header | i | iframe | img | input
    | ins | kbd | label | main | map | mark | meter | nav | object_ | ol
    | output | p | pre | progress | q | ruby | s | samp | section | select
    | small | strong | sub | sup | table | textarea | time | u | ul | var
    | video ]
  type 'a palpable =
    [ standard_palpable | 'a custom ]


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

  type standard_element =
    [ embedded | standard_flow | heading | interactive | metadata | standard_palpable
    | standard_phrasing | sectioning | sectioning_root ]

  type 'a element =
    [ embedded | 'a flow | heading | interactive | metadata | 'a palpable
    | 'a phrasing | sectioning | sectioning_root
    | Element.category
    | none ]

  type 'a content =
    [ 'a element | other ]

  type 'a flex_item = [ 'a flow | 'a phrasing | other ]

  (**
   {{: https://html.spec.whatwg.org/multipage/dom.html#transparent-content-models} Transparent content}
   ({{: https://www.w3.org/TR/html52/dom.html#transparent-content-models} W3C})
   *)
end

include ContentCategory


external to_text_node: ([> text] as 'a) t -> Dom.text = "%identity"
external to_fragment: ([> fragment] as 'a) t -> Dom.documentFragment = "%identity"
external to_node: [< _ content] t -> Dom.node = "%identity"
external to_element: [< _ element] t -> Dom.element = "%identity"

external from_node: Dom.node -> [< _ content] t = "%identity"

let show_element element =
  element
  |> to_element
  |> Webapi.Dom.Element.outerHTML

let show_text text_node =
  text_node
  |> to_text_node
  |> Webapi.Dom.Text.data

external nodeList_to_array:
Dom.nodeList -> Dom.node array = "Array.prototype.slice.call" [@@bs.val]

let rec show_fragment fragment =
  fragment |> to_fragment
  |>
  Webapi.Dom.DocumentFragment.childNodes
  |> nodeList_to_array
  |> Js.Array.map (fun e -> show @@ from_node e)
  |> Js.Array.joinWith "\n"

and show node =
  match node |> to_node |> Webapi.Dom.Node.nodeType with
  | Element -> show_element (Obj.magic node)
  | Text -> show_text (Obj.magic node)
  | DocumentFragment -> show_fragment (Obj.magic node)
  | _ -> ""

let show_doc (html: html t) = "<!DOCTYPE html>\n" ^ show html

let append_to selector element =
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.querySelector selector
  |> Js.Option.getExn
  |> Webapi.Dom.Element.appendChild (to_node element)

let append_to_body element =
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.asHtmlDocument
  |. Belt.Option.flatMap Webapi.Dom.HtmlDocument.body
  |> Js.Option.getExn
  |> Webapi.Dom.Element.appendChild (to_node element)
