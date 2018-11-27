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
    let open Common in

    let clock =
      interval 1000
      |> map (fun _ -> span [|text @@ Js.Date.toString (Js.Date.make ())|])
      |> stream
    in

    let f (_: Node.span): unit = () in
    let _ = f (span [|text "hello"|]) in

    let stl: Css.Property.block Css.Module.t =
      let open Css.Module in
      { name="foobar"
      ; declaration = Style.block ~textAlign:`center ~clear:`both ~color:`blue ()
      }
    in
    let stl': Css.Property.inline Css.Module.t =
      let open Css.Module in
      { name="foobaz"; declaration = Style.inline ~verticalAlign:`initial () }
    in
    let stl'': Css.Stylesheet.Rule.t = Css.Stylesheet.Rule.module_ stl
    in
    let stl''': Css.Stylesheet.Rule.t = Css.Stylesheet.Rule.module_ stl'
    in

    let z =
      div ~cssModule:stl [|
        span ~cssModule:stl' [|text "The time is:"|];
        br ();
        clock;
      |]

    in


    z
  in

  Webapi.Dom.Element.appendChild (Node.to_dom example') body
