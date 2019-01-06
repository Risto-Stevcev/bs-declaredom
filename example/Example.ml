let _ =
  let open CallbagBasics in

  let body =
    let open Webapi.Dom in
    document
    |> Document.asHtmlDocument
    |> Js.Option.andThen (fun [@bs] e -> HtmlDocument.body e)
    |> Js.Option.getExn
  in

  let example' =
    let open Node in

    let clock =
      interval 1000
      |> map (fun _ -> span [|text @@ Js.Date.toString (Js.Date.make ())|])
      |> CallbagElement.make
    in

    let f (_: Html_Node.span): unit = () in
    let _ = f (span [|text "hello"|]) in

    let stl: Css_Property.block Css_Module.t =
      Css_Module.make @@
        Style.block ~textAlign:`center ~clear:`both ~color:`blue ()
    in
    let stl': Css_Property.inline Css_Module.t =
      Css_Module.make @@
        Style.inline ~verticalAlign:`initial ()
    in
    let stl'': Css_Stylesheet.Rule.t =
      (Css_Stylesheet.CssModuleRule.make stl :> Css_Stylesheet.Rule.t)
    in
    let stl''': Css_Stylesheet.Rule.t =
      (Css_Stylesheet.CssModuleRule.make stl' :> Css_Stylesheet.Rule.t)
    in

    Js.log2 "cssmodule div:\n"
      @@ Css_Stylesheet.CssModuleRule.show
      @@ Css_Stylesheet.CssModuleRule.make
      stl;

    let z =
      div ~cssModule:stl [|
        span ~cssModule:stl' [|text "The time is:"|];
        br ();
        clock;
      |]

    in


    z
  in

  Webapi.Dom.Element.appendChild (Html_Node.to_node example') body
