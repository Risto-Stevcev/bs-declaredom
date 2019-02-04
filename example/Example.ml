module Modules = struct
  let container = Css_Module.make @@
    Css_Style.block ~text_align:`center ~clear:`both ~color:`darkcyan ()

  let title = Css_Module.make @@
    Css_Style.inline ~vertical_align:`initial ~color:`black ()

  let flex = Css_Module.make @@ Css_Properties.Display.flex @@
    Css_Style.flexbox ~flex_direction:`column ~color:`coral
      ~border:(Css_Properties.Border.make ~width:(`px 2.) ~style:`dotted ()) ()

  let flex_item = Css_Module.make @@
    Css_Style.flex_item ~align_self:`flex_start ~color:`red ()

  (* You can use `map` on a css module. Here it's just upcasting the type, so
   * the actual implementation hasn't changed and the module name will stay the
   * same.
   * But if you modify the underlying styles then the module name also updates.
   *)
  let foo =
    container
    |> Css_Module.map @@
       Js.Dict.map @@ fun [@bs] a -> (a :> Css_Property.display Css_Property.t)
end

let stylesheet =
  let open Css_Stylesheet in
  make `utf_8
    [ css_module Modules.container
    ; css_module Modules.title
    ; css_module Modules.flex
    ; css_module Modules.flex_item ]

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
    let f (_: Html_Node.span Html_Node.t): unit = () in
    let _ = f (span [|text "hello"|]) in

    (* Add custom types. Here the children are parameterized by `callbag and `foo *)
    let custom_foo: [> [> `foo] Html_Node.custom] Html_Node.t = Obj.magic () in
    let _: [`callbag | `foo] Html_Nodes.Div.child array = [|
      span ~css_module:Modules.title [|text "The time is:"|];
      br ();
      custom_foo;
      clock;
    |]
    in

    (* You can also typecheck based on your custom type *)
    let f' (_: [`foo] Html_Node.custom Html_Node.t): unit = () in
    let _ = f' custom_foo
    in

    let anchor = 
      a ~id:"link" ~href:"#"
        ~aria:(Html_Attributes.Aria.link ~aria_hidden:() ~aria_label:"foo" ())
        [|text "some link"|]
    in

    div ~css_module:Modules.container [|
      TryJsx.foo;
      Div.flex ~css_module:Modules.flex [|
        span [|text "this"|] |> Html_Overrides.flex_module Modules.flex_item;
        span [|text "is"|];
        span [|text "flexbox"|];
      |];
      fragment [|
        anchor;
        br ();
        span [|text "foo"|];
        br ();
        span [|text "bar"|];
        fragment [|
          span [|text "baz"|];
          (* this correctly fails because <title> is metadata content:
           * title "foo";
           *)
        |];
        br ();
      |];
      span ~css_module:Modules.title [|text "The time is:"|];
      br ();
      clock;
    |]
  in

  Webapi.Dom.Element.appendChild (Html_Node.to_node example) body
