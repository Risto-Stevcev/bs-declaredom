module Css_Module = struct
  let container = Css_Module.make @@
    Style.block ~textAlign:`center ~clear:`both ~color:`darkcyan ()

  let title = Css_Module.make @@
    Style.inline ~verticalAlign:`initial ~color:`black ()
end

let stylesheet = Css_Stylesheet.make `utf_8
    [ Css_Stylesheet.css_module Css_Module.container
    ; Css_Stylesheet.css_module Css_Module.title ]

let style =
  let open Webapi.Dom in
  let style =
    document |> Document.createElement "style"
  in
  Element.setInnerHTML style (Css_Stylesheet.show stylesheet);
  style

let _ =
  let open CallbagBasics in

  let body =
    let open Webapi.Dom in
    document
    |> Document.asHtmlDocument
    |> Js.Option.andThen (fun [@bs] e -> HtmlDocument.body e)
    |> Js.Option.getExn
  in

  let _ =
    Webapi.Dom.Element.appendChild style body
  in

  let example =
    let open Node in

    let clock =
      interval 1000
      |> map (fun _ -> span [|text @@ Js.Date.toString (Js.Date.make ())|])
      |> CallbagElement.make
    in

    (* Make functions that only take a specific kind of element or element group *)
    let f (_: Html_Node.span): unit = () in
    let _ = f (span [|text "hello"|]) in

    div ~cssModule:Css_Module.container [|
      span ~cssModule:Css_Module.title [|text "The time is:"|];
      br ();
      clock;
    |]
  in

  Webapi.Dom.Element.appendChild (Html_Node.to_node example) body
