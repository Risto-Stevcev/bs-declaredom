module Css_Module = struct
  let container = Css_Module.make @@
    Style.block ~textAlign:`center ~clear:`both ~color:`darkcyan ()

  let title = Css_Module.make @@
    Style.inline ~verticalAlign:`initial ~color:`black ()

  let flex = Css_Module.make @@ Css_Properties.Display.flex @@
    Style.flexbox ~flexDirection:`column ~color:`coral
      ~border:(Css_Properties.Border.make ~width:(`px 2.) ~style:`dotted ()) ()


  (* You can use `map` on a css module. Here it's just upcasting the type, so
   * the actual implementation hasn't changed and the module name will stay the
   * same.
   * But if you modify the underlying styles then the module name also updates.
   *)
  let foo =
    container
    |> Css_Module.map @@ fun e -> begin
         e |> Js.Dict.map @@ fun [@bs] a -> (a :> Css_Property.display)
       end
end

let stylesheet = Css_Stylesheet.make `utf_8
    [ Css_Stylesheet.css_module Css_Module.container
    ; Css_Stylesheet.css_module Css_Module.title
    ; Css_Stylesheet.css_module Css_Module.flex ]

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
      TryJsx.foo;
      div' ~cssModule:(`flex Css_Module.flex) [|
        span [|text "this"|];
        span [|text "is"|];
        span [|text "flexbox"|];
      |];
      fragment [|
        span [|text "foo"|];
        br ();
        span [|text "bar"|];
        br ();
      |];
      span ~cssModule:Css_Module.title [|text "The time is:"|];
      br ();
      clock;
    |]
  in

  Webapi.Dom.Element.appendChild (Html_Node.to_node example) body
