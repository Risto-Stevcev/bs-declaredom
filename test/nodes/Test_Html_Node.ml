open BsTape
open Test
open Html_Nodes;;

let _ = Jsdom.init () [@bs]

let (tagName, outerHTML, ofNode) =
  Webapi.Dom.Element.(tagName, outerHTML, ofNode);;



test ~name:"node - a" @@ fun t -> begin
  let element =
    A.make
      ~href:"http://www.w3.org"
      ~target:`blank
      ~download:()
      ~rel:`nofollow
      ~rev:`bookmark
      ~hreflang:"en-US"
      ~_type:"html"
      ~referrerpolicy:`no_referrer
      [||]
    |> Html_Node.to_dom_node
    |> ofNode
    |> Js.Option.getExn
  in
  t |> T.equal (tagName element) "A";
  t |> T.equal (outerHTML element) @@
    "<a href=\"http://www.w3.org\" target=\"blank\" download=\"\" "^
    "rel=\"nofollow\" rev=\"bookmark\" hreflang=\"en-US\" type=\"html\"></a>";
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
