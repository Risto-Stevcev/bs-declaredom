open BsTape
open Test
open Html_Nodes
module Aria = Html_Attributes.Aria;;

(* TODO: don't use Jsdom, use headless karma? or something else instead *)
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
    A.make
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


test ~name:"node - div" @@ fun t -> begin
  let element =
    Div.make [||]
    |> to_element
  in
  t |> T.equal (tagName element) "DIV";
  t |> T.equal (outerHTML element) @@ "<div></div>";
  t |> T.end_
end;


test ~name:"node - span" @@ fun t -> begin
  let element =
    Span.make [||]
    |> to_element
  in
  t |> T.equal (tagName element) "SPAN";
  t |> T.equal (outerHTML element) @@ "<span></span>";
  t |> T.end_
end;


test ~name:"node - br" @@ fun t -> begin
  let element =
    Br.make ()
    |> to_element
  in
  t |> T.equal (tagName element) "BR";
  t |> T.equal (outerHTML element) @@ "<br>";
  t |> T.end_
end;




test ~name:"node - global attributes" @@ fun t -> begin
  (* TODO *)
  t |> T.end_
end;
test ~name:"node - global aria attributes" @@ fun t -> begin
  (* TODO *)
  t |> T.end_
end;
test ~name:"node - style" @@ fun t -> begin
  (* TODO *)
  t |> T.end_
end;
test ~name:"node - css module" @@ fun t -> begin
  (* TODO *)
  t |> T.end_
end;
