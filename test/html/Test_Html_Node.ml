open BsTape
open Test
open! Html
module Aria = Html_Attributes.Aria;;

let _ = Jsdom.init () [@bs]

let (tagName, outerHTML, ofNode) =
  Webapi.Dom.Element.(tagName, outerHTML, ofNode)

let to_element x =
  x
  |> Html_Node.to_node
  |> ofNode
  |> Js.Option.getExn;;

test ~name:"node - a" @@ fun t -> begin
  let element =
    a
      ~aria:(Aria.link ~aria_label:"foo" ())
      ~href:"http://www.w3.org"
      ~target:`blank
      ~download:()
      ~rel:`nofollow
      ~rev:`bookmark
      ~hreflang:"en-US"
      ~_type:"html"
      ~referrerpolicy:`no_referrer
      [||]
    |> to_element
  in
  t |> T.equal (tagName element) "A";
  t |> T.equal (outerHTML element) @@
    "<a href=\"http://www.w3.org\" target=\"blank\" download=\"\" "^
    "rel=\"nofollow\" rev=\"bookmark\" hreflang=\"en-US\" type=\"html\" "^
    "referrerpolicy=\"no-referrer\" aria-label=\"foo\"></a>";
  t |> T.end_
end;


test ~name:"node - area" @@ fun t -> begin
  let element =
    area
      ~aria:(Aria.link ~aria_label:"foo" ())
      ~alt:"foobar"
      ~coords:[123;456]
      ~download:()
      ~href:"http://www.w3.org"
      ~hreflang:"en-US"
      ~rel:`nofollow
      ~shape:`circle
      ~target:`blank
      ~_type:"html"
      ~referrerpolicy:`no_referrer
      ()
    |> to_element
  in
  t |> T.equal (tagName element) "AREA";
  t |> T.equal (outerHTML element) @@
    "<area alt=\"foobar\" coords=\"123,456\" download=\"\" "^
    "href=\"http://www.w3.org\" hreflang=\"en-US\" rel=\"nofollow\" "^
    "shape=\"circle\" target=\"blank\" type=\"html\" "^
    "referrerpolicy=\"no-referrer\" aria-label=\"foo\">";
  t |> T.end_
end;


test ~name:"node - audio" @@ fun t -> begin
  let element =
    audio
      ~aria:(Aria.application ~aria_label:"foo" ())
      ~src:"foo.wav"
      ~crossorigin:`anonymous
      ~preload:`metadata
      ~autoplay:()
      ~loop:()
      ~muted:()
      ~controls:()
      [||]
    |> to_element
  in
  t |> T.equal (tagName element) "AUDIO";
  t |> T.equal (outerHTML element) @@
    "<audio src=\"foo.wav\" crossorigin=\"anonymous\" preload=\"metadata\" "^
    "autoplay=\"\" loop=\"\" muted=\"\" controls=\"\" role=\"application\" "^
    "aria-label=\"foo\"></audio>";
  t |> T.end_
end;


test ~name:"node - blockquote" @@ fun t -> begin
  let element =
    blockquote ~cite:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "BLOCKQUOTE";
  t |> T.equal (outerHTML element) @@ "<blockquote cite=\"foo\"></blockquote>";
  t |> T.end_
end;


test ~name:"node - button" @@ fun t -> begin
  let element =
    button
      ~autofocus:()
      ~disabled:()
      ~form:"foo"
      ~formaction:"foo.com"
      ~formenctype:`x_www_form_urlencoded
      ~formmethod:`post
      ~formnovalidate:()
      ~formtarget:`blank
      ~formelements:"bar"
      ~name:"baz"
      ~_type:`submit
      ~value:"qux"
      [||]
    |> to_element
  in
  t |> T.equal (tagName element) "BUTTON";
  t |> T.equal (outerHTML element) @@
    "<button autofocus=\"\" disabled=\"\" form=\"foo\" formaction=\"foo.com\" "^
    "formenctype=\"x_www_form_urlencoded\" formmethod=\"post\" "^
    "formnovalidate=\"\" formtarget=\"blank\" formelements=\"bar\" "^
    "name=\"baz\" type=\"submit\" value=\"qux\"></button>";
  t |> T.end_
end;


test ~name:"node - canvas" @@ fun t -> begin
  let element =
    canvas ~width:800 ~height:600 [||]
    |> to_element
  in
  t |> T.equal (tagName element) "CANVAS";
  t |> T.equal (outerHTML element) @@
    "<canvas width=\"800\" height=\"600\"></canvas>";
  t |> T.end_
end;


test ~name:"node - colgroup" @@ fun t -> begin
  let element =
    colgroup ~span:3 [||]
    |> to_element
  in
  t |> T.equal (tagName element) "COLGROUP";
  t |> T.equal (outerHTML element) @@
    "<colgroup span=\"3\"></colgroup>";
  t |> T.end_
end;


test ~name:"node - data" @@ fun t -> begin
  let element =
    data ~value:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "DATA";
  t |> T.equal (outerHTML element) @@
    "<data value=\"foo\"></data>";
  t |> T.end_
end;


test ~name:"node - del" @@ fun t -> begin
  let date = Js.Date.make () in
  let element =
    del ~cite:"foo" ~datetime:date [||]
    |> to_element
  in
  t |> T.equal (tagName element) "DEL";
  t |> T.equal (outerHTML element) @@
    "<del cite=\"foo\" datetime=\""^ Js.Date.toISOString date ^"\"></del>";
  t |> T.end_
end;


test ~name:"node - details" @@ fun t -> begin
  let element =
    details ~_open:() [||]
    |> to_element
  in
  t |> T.equal (tagName element) "DETAILS";
  t |> T.equal (outerHTML element) @@
    "<details open=\"\"></details>";
  t |> T.end_
end;


test ~name:"node - dialog" @@ fun t -> begin
  let element =
    dialog ~_open:() [||]
    |> to_element
  in
  t |> T.equal (tagName element) "DIALOG";
  t |> T.equal (outerHTML element) @@
    "<dialog open=\"\"></dialog>";
  t |> T.end_
end;


test ~name:"node - fieldset" @@ fun t -> begin
  let element =
    fieldset ~form:"foo" ~name:"bar" ~disabled:() [||]
    |> to_element
  in
  t |> T.equal (tagName element) "FIELDSET";
  t |> T.equal (outerHTML element) @@
    "<fieldset disabled=\"\" form=\"foo\" name=\"bar\"></fieldset>";
  t |> T.end_
end;


test ~name:"node - form" @@ fun t -> begin
  let element =
    form ~accept_charset:"utf-8" ~action:"foo/" ~autocomplete:`off
      ~enctype:`x_www_form_urlencoded ~_method:`post ~name:"foo"
      ~novalidate:() ~target:`blank [||]
    |> to_element
  in
  t |> T.equal (tagName element) "FORM";
  t |> T.equal (outerHTML element) @@
    "<form accept-charset=\"utf-8\" action=\"foo/\" autocomplete=\"off\" "^
    "enctype=\"x_www_form_urlencoded\" method=\"post\" name=\"foo\" "^
    "novalidate=\"\" target=\"blank\"></form>";
  t |> T.end_
end;


test ~name:"node - html" @@ fun t -> begin
  let element =
    html ~manifest:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "HTML";
  t |> T.equal (outerHTML element) @@
    "<html manifest=\"foo\"></html>";
  t |> T.end_
end;


test ~name:"node - iframe" @@ fun t -> begin
  let element =
    iframe ~src:"foo" ~srcdoc:"bar" ~name:"baz" ~sandbox:`allow_forms
      ~allow:"qux" ~allowfullscreen:() ~allowpaymentrequest:() ~width:800
      ~height:600 ~referrerpolicy:`no_referrer ()
    |> to_element
  in
  t |> T.equal (tagName element) "IFRAME";
  t |> T.equal (outerHTML element) @@
    "<iframe src=\"foo\" srcdoc=\"bar\" name=\"baz\" sandbox=\"allow-forms\" "^
    "allow=\"qux\" allowfullscreen=\"\" allowpaymentrequest=\"\" width=\"800\" "^
    "height=\"600\" referrerpolicy=\"no-referrer\"></iframe>";
  t |> T.end_
end;


test ~name:"node - img" @@ fun t -> begin
  let element =
    img ~alt:"foo" ~src:"bar" ~srcset:"baz" ~sizes:"norf"
      ~crossorigin:`anonymous ~usemap:"qux" ~ismap:() ~width:800 ~height:600
      ~referrerpolicy:`no_referrer ~decoding:`sync ()
    |> to_element
  in
  t |> T.equal (tagName element) "IMG";
  t |> T.equal (outerHTML element) @@
    "<img alt=\"foo\" src=\"bar\" srcset=\"baz\" sizes=\"norf\" "^
    "crossorigin=\"anonymous\" usemap=\"qux\" ismap=\"\" width=\"800\" "^
    "height=\"600\" referrerpolicy=\"no-referrer\" decoding=\"sync\">";
  t |> T.end_
end;


test ~name:"node - input" @@ fun t -> begin
  let element =
    input ~_type:`text ~alt:"foo" ~autocomplete:`email ~autofocus:()
      ~checked:() ~dirname:`ltr ~disabled:() ~form:"foo" ~formaction:"bar"
      ~formenctype:`x_www_form_urlencoded ~formmethod:`post ~formnovalidate:()
      ~formtarget:`blank ~height:600 ~list:"baz" ~max:"100" ~maxlength:100
      ~min:"0" ~minlength:0 ~multiple:() ~name:"qux" ~pattern:([%re "/[0-9]*/"])
      ~readonly:() ~required:() ~size:200 ~src:"worble" ~step:`any ~width:800
      ()
    |> to_element
  in
  t |> T.equal (tagName element) "INPUT";
  t |> T.equal (outerHTML element) @@
   "<input alt=\"foo\" autocomplete=\"email\" autofocus=\"\" checked=\"\" "^
   "dirname=\"ltr\" disabled=\"\" form=\"foo\" formaction=\"bar\" "^
   "formenctype=\"x_www_form_urlencoded\" formmethod=\"post\" "^
   "formnovalidate=\"\" formtarget=\"blank\" height=\"600\" list=\"baz\" "^
   "max=\"100\" maxlength=\"100\" min=\"0\" minlength=\"0\" multiple=\"\" "^
   "name=\"qux\" pattern=\"[0-9]*\" readonly=\"\" required=\"\" size=\"200\" "^
   "src=\"worble\" step=\"any\" type=\"text\" width=\"800\">";
  t |> T.end_
end;


test ~name:"node - ins" @@ fun t -> begin
  let date = Js.Date.make () in
  let element =
    ins ~cite:"foo" ~datetime:date [||]
    |> to_element
  in
  t |> T.equal (tagName element) "INS";
  t |> T.equal (outerHTML element) @@
    "<ins cite=\"foo\" datetime=\""^ Js.Date.toISOString date ^"\"></ins>";
  t |> T.end_
end;


test ~name:"node - label" @@ fun t -> begin
  let element =
    label ~_for:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "LABEL";
  t |> T.equal (outerHTML element) @@
    "<label for=\"foo\"></label>";
  t |> T.end_
end;


test ~name:"node - link" @@ fun t -> begin
  let element =
    link ~rel:`nofollow ~href:"foobar.com" ()
    |> to_element
  and element2 =
    link ~rel:`stylesheet ~href:"foobar.com" ()
    |> to_element
  in
  t |> T.equal (tagName element) "LINK";
  t |> T.equal (outerHTML element) @@
    "<link href=\"foobar.com\" rel=\"nofollow\">";
  t |> T.equal (outerHTML element2) @@
    "<link href=\"foobar.com\" rel=\"stylesheet\">";
  t |> T.end_;
end;


test ~name:"node - meta" @@ fun t -> begin
  let element =
    meta ~name:"foo" ~http_equiv:`set_cookie ~content:"bar" ~charset:"baz" ()
    |> to_element
  in
  t |> T.equal (tagName element) "META";
  t |> T.equal (outerHTML element) @@
    "<meta name=\"foo\" http-equiv=\"set-cookie\" content=\"bar\" "^
    "charset=\"baz\">";
  t |> T.end_
end;


test ~name:"node - meter" @@ fun t -> begin
  let element =
    meter ~value:10. ~min:0. ~max:100. ~low:5. ~high:80. [||] 
    |> to_element
  in
  t |> T.equal (tagName element) "METER";
  t |> T.equal (outerHTML element) @@
    "<meter value=\"10\" min=\"0\" max=\"100\" low=\"5\" high=\"80\"></meter>";
  t |> T.end_
end;


test ~name:"node - object" @@ fun t -> begin
  let element =
    object_ ~data:"foo" ~_type:"bar" ~typemustmatch:() ~name:"baz" ~usemap:"qux"
      ~form:"norf" ~width:800 ~height:600 [||] 
    |> to_element
  in
  t |> T.equal (tagName element) "OBJECT";
  t |> T.equal (outerHTML element) @@
    "<object data=\"foo\" type=\"bar\" typemustmatch=\"\" name=\"baz\" "^
    "usemap=\"qux\" form=\"norf\" width=\"800\" height=\"600\"></object>";
  t |> T.end_
end;


test ~name:"node - ol" @@ fun t -> begin
  let element =
    ol ~reversed:() ~start:3 ~_type:`upper_roman [||] 
    |> to_element
  in
  t |> T.equal (tagName element) "OL";
  t |> T.equal (outerHTML element) @@
    "<ol reversed=\"\" start=\"3\" type=\"upper-roman\"></ol>";
  t |> T.end_
end;


test ~name:"node - optgroup" @@ fun t -> begin
  let element =
    optgroup ~disabled:() ~label:"foo" [||] 
    |> to_element
  in
  t |> T.equal (tagName element) "OPTGROUP";
  t |> T.equal (outerHTML element) @@
    "<optgroup disabled=\"\" label=\"foo\"></optgroup>";
  t |> T.end_
end;


test ~name:"node - option" @@ fun t -> begin
  let element =
    option ~disabled:() ~label:"foo" ~selected:() ~value:"foo" [||] 
    |> to_element
  in
  t |> T.equal (tagName element) "OPTION";
  t |> T.equal (outerHTML element) @@
    "<option disabled=\"\" label=\"foo\" selected=\"\" value=\"foo\"></option>";
  t |> T.end_
end;


test ~name:"node - output" @@ fun t -> begin
  let element =
    output ~_for:"foo" ~form:"bar" ~name:"baz" [||] 
    |> to_element
  in
  t |> T.equal (tagName element) "OUTPUT";
  t |> T.equal (outerHTML element) @@
    "<output for=\"foo\" form=\"bar\" name=\"baz\"></output>";
  t |> T.end_
end;


test ~name:"node - param" @@ fun t -> begin
  let element =
    param ~name:"foo" ~value:"bar" ()
    |> to_element
  in
  t |> T.equal (tagName element) "PARAM";
  t |> T.equal (outerHTML element) @@ "<param name=\"foo\" value=\"bar\">";
  t |> T.end_
end;


test ~name:"node - progress" @@ fun t -> begin
  let element =
    progress ~value:10. ~max:100. [||]
    |> to_element
  in
  t |> T.equal (tagName element) "PROGRESS";
  t |> T.equal (outerHTML element) @@
    "<progress value=\"10\" max=\"100\"></progress>";
  t |> T.end_
end;


test ~name:"node - q" @@ fun t -> begin
  let element =
    q ~cite:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "Q";
  t |> T.equal (outerHTML element) @@ "<q cite=\"foo\"></q>";
  t |> T.end_
end;


test ~name:"node - script" @@ fun t -> begin
  let element =
    script ~src:"foo" ~_type:"bar" ~nomodule:() ~async:() ~defer:()
     ~crossorigin:`anonymous ~integrity:"baz" ~referrerpolicy:`no_referrer ()
    |> to_element
  and element' =
    inline_script "var foo = 123" |> to_element
  in
  t |> T.equal (tagName element) "SCRIPT";
  t |> T.equal (outerHTML element) @@
    "<script src=\"foo\" type=\"bar\" nomodule=\"\" async=\"\" defer=\"\" "^
    "crossorigin=\"anonymous\" integrity=\"baz\" "^
    "referrerpolicy=\"no-referrer\"></script>";
  t |> T.equal (outerHTML element') "<script>var foo = 123</script>";
  t |> T.end_
end;


test ~name:"node - select" @@ fun t -> begin
  let element =
    select ~autocomplete:`email ~autofocus:() ~disabled:() ~form:"foo"
      ~multiple:() ~name:"bar" ~required:() ~size:10 [||]
    |> to_element
  in
  t |> T.equal (tagName element) "SELECT";
  t |> T.equal (outerHTML element) @@
    "<select autocomplete=\"email\" autofocus=\"\" disabled=\"\" form=\"foo\" "^
    "multiple=\"\" name=\"bar\" required=\"\" size=\"10\"></select>";
  t |> T.end_
end;


test ~name:"node - slot" @@ fun t -> begin
  let element =
    slot ~name:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "SLOT";
  t |> T.equal (outerHTML element) @@ "<slot name=\"foo\"></slot>";
  t |> T.end_
end;


test ~name:"node - style" @@ fun t -> begin
  let element =
    style ~media:[Css_Media.Fn.max_width (`px 200.) |> Css_Media.Fn.to_query]
      ".foo { color: red; }"
    |> to_element
  in
  t |> T.equal (tagName element) "STYLE";
  t |> T.equal (outerHTML element) @@
    "<style media=\"@media (max-width: 200px)\">.foo { color: red; }</style>";
  t |> T.end_
end;


test ~name:"node - td" @@ fun t -> begin
  let element =
    td ~colspan:3 ~rowspan:2 ~headers:"foo" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "TD";
  t |> T.equal (outerHTML element) @@
		"<td colspan=\"3\" rowspan=\"2\" headers=\"foo\"></td>";
  t |> T.end_
end;


test ~name:"node - textarea" @@ fun t -> begin
  let element =
    textarea ~autocomplete:`email ~autofocus:() ~dirname:`rtl
			~disabled:() ~form:"foo" ~maxlength:100 ~minlength:0 ~name:"bar"
			~placeholder:"baz" ~readonly:() ~required:() ~rows:4 ~wrap:`soft [||]
    |> to_element
  in
  t |> T.equal (tagName element) "TEXTAREA";
  t |> T.equal (outerHTML element) @@
		"<textarea autocomplete=\"email\" autofocus=\"\" dirname=\"rtl\" "^
		"disabled=\"\" form=\"foo\" maxlength=\"100\" minlength=\"0\" name=\"bar\" "^
		"placeholder=\"baz\" readonly=\"\" required=\"\" rows=\"4\" wrap=\"soft\">"^
		"</textarea>";
  t |> T.end_
end;


test ~name:"node - th" @@ fun t -> begin
  let element =
    th ~colspan:3 ~rowspan:2 ~headers:"foo" ~scope:`row ~abbr:"baz" [||]
    |> to_element
  in
  t |> T.equal (tagName element) "TH";
  t |> T.equal (outerHTML element) @@
		"<th colspan=\"3\" rowspan=\"2\" headers=\"foo\" scope=\"row\" "^
		"abbr=\"baz\"></th>";
  t |> T.end_
end;


test ~name:"node - time" @@ fun t -> begin
	let date = Js.Date.make ()
	in
  let element =
    time ~datetime:date [||]
    |> to_element
  in
  t |> T.equal (tagName element) "TIME";
  t |> T.equal (outerHTML element) @@
		"<time datetime=\""^ Js.Date.toISOString date ^"\"></time>";
  t |> T.end_
end;


test ~name:"node - track" @@ fun t -> begin
  let element =
    track ~kind:`subtitles ~src:"foo" ~srclang:"bar" ~label:"baz" ~default:() ()
    |> to_element
  in
  t |> T.equal (tagName element) "TRACK";
  t |> T.equal (outerHTML element) @@
		"<track kind=\"subtitles\" src=\"foo\" srclang=\"bar\" label=\"baz\" "^
		"default=\"\">";
  t |> T.end_
end;


test ~name:"node - video" @@ fun t -> begin
  let element =
		video ~src:"foo" ~crossorigin:`anonymous ~poster:"bar" ~preload:`metadata
			~autoplay:() ~playsinline:() ~loop:() ~muted:() ~controls:()
			~width:800 ~height:600 [||]
    |> to_element
  in
  t |> T.equal (tagName element) "VIDEO";
  t |> T.equal (outerHTML element) @@
		"<video src=\"foo\" crossorigin=\"anonymous\" poster=\"bar\" "^
		"preload=\"metadata\" autoplay=\"\" playsinline=\"\" loop=\"\" muted=\"\" "^
		"controls=\"\" width=\"800\" height=\"600\"></video>";
  t |> T.end_
end;


test ~name:"node - global attributes" @@ fun t -> begin
	let element =
		span ~accesskey:"foo" ~autocapitalize:`on ~class_name:"bar"
			~class_set:(Js.Dict.fromList [("baz", true); ("qux", false)])
			~contenteditable:()
			~dataset:(Js.Dict.fromList [("a", "norf"); ("b", "worble")])
			~dir:`ltr ~draggable:() ~enterkeyhint:`search ~hidden:() ~id:"fizz"
			~inputmode:`text ~is:"fuzz" ~itemid:"wizzle" ~itemprop:"wuzzle"
			~itemref:"wazzle" ~itemscope:() ~itemtype:"foos" ~lang:"bars"
			~nonce:"bazs" ~slot:"quxs" ~spellcheck:"norfs" ~tabindex:(-1)
			~title:"hello" ~translate:`yes [||]
		|> to_element
	in
	t |> T.equal (outerHTML element) @@
		"<span accesskey=\"foo\" autocapitalize=\"on\" class=\"bar baz\" "^
		"contenteditable=\"\" data-a=\"norf\" data-b=\"worble\" dir=\"ltr\" "^
		"draggable=\"\" enterkeyhint=\"search\" hidden=\"\" id=\"fizz\" "^
		"inputmode=\"text\" is=\"fuzz\" itemid=\"wizzle\" itemprop=\"wuzzle\" "^
		"itemref=\"wazzle\" itemscope=\"\" itemtype=\"foos\" lang=\"bars\" "^
		"nonce=\"bazs\" slot=\"quxs\" spellcheck=\"norfs\" tabindex=\"-1\" "^
		"title=\"hello\" translate=\"yes\"></span>";
  t |> T.end_
end;


test ~name:"node - global aria attributes" @@ fun t -> begin
	let element =
		span ~aria:(
			Html_Attributes.Aria.roletype
				~aria_atomic:"a" ~aria_busy:() ~aria_controls:"c" ~aria_current:`date
				~aria_describedby:"d" ~aria_details:"e" ~aria_disabled:()
				~aria_dropeffect:[`copy;`move] ~aria_errormessage:"f" ~aria_flowto:"g"
				~aria_grabbed:() ~aria_haspopup:`menu ~aria_hidden:()
				~aria_invalid:`grammar ~aria_keyshortcuts:"h" ~aria_label:"i"
				~aria_labelledby:"j" ~aria_live:`polite ~aria_owns:"k"
				~aria_relevant:[`all;`text] ~aria_roledescription:"l"
				()
		) [||]
		|> to_element
	in
  t |> T.equal (outerHTML element) @@
		"<span aria-atomic=\"a\" aria-busy=\"\" aria-controls=\"c\" "^
		"aria-current=\"date\" aria-describedby=\"d\" aria-details=\"e\" "^
		"aria-disabled=\"\" aria-dropeffect=\"copy move\" aria-errormessage=\"f\" "^
		"aria-flowto=\"g\" aria-grabbed=\"\" aria-haspopup=\"menu\" "^
		"aria-hidden=\"\" aria-invalid=\"grammar\" aria-keyshortcuts=\"h\" "^
		"aria-label=\"i\" aria-labelledby=\"j\" aria-live=\"polite\" "^
		"aria-owns=\"k\" aria-relevant=\"all text\" "^
		"aria-roledescription=\"l\"></span>";
  t |> T.end_
end;


test ~name:"node - style" @@ fun t -> begin
	let element =
		span ~style:(Css_Style.inline ~color:`red ~font_size:(`px 12.) ()) [||]
		|> to_element
	in
  t |> T.equal (outerHTML element) "<span style=\"color: red; font-size: 12px;\"></span>";
  t |> T.end_
end;


test ~name:"node - css module" @@ fun t -> begin
  let title = Css_Module.make @@
    Css_Style.inline ~vertical_align:`initial ~color:`black ()
	in
	let element =
		span ~css_module:title [||] |> to_element
	in
  t |> T.equal (outerHTML element) 
		"<span class=\"m72adb46b0467f9510ed02cc8fe77c7dd\"></span>";
  t |> T.end_
end;
