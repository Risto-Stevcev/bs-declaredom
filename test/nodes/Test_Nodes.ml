open BsTape
open Test;;

let _ = Jsdom.init () [@bs]

external get_data_attr: Dom.htmlElement -> string -> string = ""
  [@@bs.scope "dataset"] [@@bs.get_index]

let (tagName, outerHTML) = Webapi.Dom.Element.(tagName, outerHTML)
and (contentEditable, draggable, tabIndex, title) =
  Webapi.Dom.HtmlElement.(contentEditable, draggable, tabIndex, title);;

let test_global (element: Dom.htmlElement) (t: BsTape.T.t): unit =
  t |> T.equal (get_data_attr element "fizzBuzz") "123";
  t |> T.equal (get_data_attr element "wuzz") "456";
  t |> T.equal (get_data_attr element "wuzz") "456";
  t |> T.equal (tabIndex element) 3;
  t |> T.equal (draggable element) true;
  t |> T.equal (title element) "some title";
  t |> T.equal (contentEditable element) DomTypesRe.True;;

test ~name:"node - a" @@ fun t -> begin
  let a =
    A.make
      ~id:"foo"
      ~className:"bar baz"
      ~classSet:(Js.Dict.fromList [("norf", true); ("worble", false)])
      ~contentEditable:true
      ~dataset:(Js.Dict.fromList [("fizzBuzz", "123"); ("wuzz", "456")])
      ~draggable:true
      ~tabIndex:3
      ~title:"some title"
      ~style:(
        Style.non_replaced_inline
          ~backgroundAttachment:`scroll
          ~backgroundColor:`red
          ()
      )
      [||]
    |> Node.to_dom
  in
  let element = Webapi.Dom.HtmlElement.ofElement a |> Js.Option.getExn in

  t |> T.equal (tagName a) "A";
  t |> T.equal (outerHTML a) @@
               "<a style=\"background-attachment: scroll; background-color: "^
               "red;\" id=\"foo\" class=\"bar baz norf\" data-fizz-buzz=\"123\" "^
               "data-wuzz=\"456\" draggable=\"true\" tabindex=\"3\" "^
               "title=\"some title\"></a>";
  t |> test_global element;
  t |> T.end_
end;


test ~name:"node - br" @@ fun t -> begin
  let br =
    Br.make ~id:"foo"
            ~className:"bar baz"
            ~classSet:(Js.Dict.fromList [("norf", true); ("worble", false)])
            ~contentEditable:true
            ~dataset:(Js.Dict.fromList [("fizzBuzz", "123"); ("wuzz", "456")])
            ~draggable:true
            ~tabIndex:3
            ~title:"some title"
            ()
    |> Node.to_dom
  in
  let element = Webapi.Dom.HtmlElement.ofElement br |> Js.Option.getExn in

  t |> T.equal (tagName br) "BR";
  t |> T.equal (outerHTML br) "<br id=\"foo\" class=\"bar baz norf\" data-fizz-buzz=\"123\" data-wuzz=\"456\" draggable=\"true\" tabindex=\"3\" title=\"some title\">";
  t |> test_global element;
  t |> T.end_
end;


test ~name:"node - div" @@ fun t -> begin
  let node =
    Div.make ~id:"foo"
            ~className:"bar baz"
            ~classSet:(Js.Dict.fromList [("norf", true); ("worble", false)])
            ~contentEditable:true
            ~dataset:(Js.Dict.fromList [("fizzBuzz", "123"); ("wuzz", "456")])
            ~draggable:true
            ~tabIndex:3
            ~style:(Style.block ~color:`red ())
            ~title:"some title"
            [||]
    |> Node.to_dom
  in
  let element = Webapi.Dom.HtmlElement.ofElement node |> Js.Option.getExn in

  t |> T.equal (tagName node) "DIV";
  t |> T.equal (outerHTML node) "<div style=\"color: red;\" id=\"foo\" class=\"bar baz norf\" data-fizz-buzz=\"123\" data-wuzz=\"456\" draggable=\"true\" tabindex=\"3\" title=\"some title\"></div>";
  t |> test_global element;
  t |> T.end_
end;


(* TODO: test flex with no styles, flex with some styles added, flex with a 
 * css_module, and flex with a css_module that has the display prop set
 *)
test ~name:"node - div (inline-block)" @@ fun t -> begin
  let node =
    Div.inline_block
      ~id:"foo"
      ~className:"bar baz"
      ~classSet:(Js.Dict.fromList [("norf", true); ("worble", false)])
      ~contentEditable:true
      ~dataset:(Js.Dict.fromList [("fizzBuzz", "123"); ("wuzz", "456")])
      ~draggable:true
      ~tabIndex:3
      ~title:"some title"
      [||]
    |> Node.to_dom
  in
  let element = Webapi.Dom.HtmlElement.ofElement node |> Js.Option.getExn in

  t |> T.equal (tagName node) "DIV";
  t |> T.equal (outerHTML node) "<div style=\"display: inline-block;\" id=\"foo\" class=\"bar baz norf\" data-fizz-buzz=\"123\" data-wuzz=\"456\" draggable=\"true\" tabindex=\"3\" title=\"some title\"></div>";
  t |> test_global element;
  t |> T.end_
end;


test ~name:"node - div (flex)" @@ fun t -> begin
  let node =
    Div.flex
      ~id:"foo"
      ~className:"bar baz"
      ~classSet:(Js.Dict.fromList [("norf", true); ("worble", false)])
      ~contentEditable:true
      ~dataset:(Js.Dict.fromList [("fizzBuzz", "123"); ("wuzz", "456")])
      ~draggable:true
      ~tabIndex:3
      ~style:(Style.flex ~color:`red ())
      ~title:"some title"
      [||]
    |> Node.to_dom
  in
  let element = Webapi.Dom.HtmlElement.ofElement node |> Js.Option.getExn in

  t |> T.equal (tagName node) "DIV";
  t |> T.equal (outerHTML node) "<div style=\"display: flex; color: red;\" id=\"foo\" class=\"bar baz norf\" data-fizz-buzz=\"123\" data-wuzz=\"456\" draggable=\"true\" tabindex=\"3\" title=\"some title\"></div>";
  t |> test_global element;
  t |> T.end_
end;


test ~name:"node - img" @@ fun t -> begin
  let element =
    Img.make
      ~id:"foo"
      ~className:"bar baz"
      ~classSet:(Js.Dict.fromList [("norf", true); ("worble", false)])
      ~contentEditable:true
      ~dataset:(Js.Dict.fromList [("fizzBuzz", "123"); ("wuzz", "456")])
      ~draggable:true
      ~tabIndex:3
      ~title:"some title"
      ~style:(Style.replaced_inline ~height:(`px 20.) ())
      ()
    |> Node.to_dom
  in
  let html_element =
    element |. Webapi.Dom.HtmlElement.ofElement |. Js.Option.getExn
  in
  t |> T.equal (tagName element) "IMG";
  t |> T.equal (outerHTML element) @@
               "<img style=\"height: 20px;\" id=\"foo\" class=\"bar baz norf\" "^
               "data-fizz-buzz=\"123\" data-wuzz=\"456\" draggable=\"true\" "^
               "tabindex=\"3\" title=\"some title\">";
  t |> test_global html_element;
  t |> T.end_
end
