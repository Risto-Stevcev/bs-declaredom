module Modules = struct
  let container = Css.Module.make @@
    Css.block ~text_align:`center ~clear:`both ~color:`darkcyan ()

  let title = Css.Module.make @@
    Css.inline ~vertical_align:`initial ~color:`black ()

  let flex = Css.Module.make @@ Css.Properties.Display.flex @@
    Css.flexbox ~flex_direction:`column ~color:`coral
      ~border:(Css.Properties.Border.make ~width:(`px 2.) ~style:`dotted ()) ()

  let flex_item = Css.Module.make @@
    Css.flex_item ~align_self:`flex_start ~color:`red ()

  (* You can use `map` on a css module. Here it's just upcasting the type, so
   * the actual implementation hasn't changed and the module name will stay the
   * same.
   * But if you modify the underlying styles then the module name also updates.
   *)
  let foo =
    container
    |> Css.Module.map @@
       Js.Dict.map @@ fun [@bs] a -> (a :> Css.Property.display Css.Property.t)
end

let stylesheet =
  let open Css.Stylesheet in
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
  Element.setInnerHTML style (Css.Stylesheet.show stylesheet);
  style


let body =
  let open Webapi.Dom in
  document
  |> Document.asHtmlDocument
  |> Js.Option.andThen (fun [@bs] e -> HtmlDocument.body e)
  |> Js.Option.getExn

let _ = Webapi.Dom.Element.appendChild style body


(* Create a clock from the custom callbag element *)
let clock =
  let open Html in
  let open CallbagBasics in
  interval 1000
  |> map (fun _ -> span [|text @@ Js.Date.toString (Js.Date.make ())|])
  |> CallbagElement.make


(* Make functions that only take a specific kind of element or element group *)
let f (_: Html.Node.span Html.Node.t): unit = ()
let _ = let open Html in
  f (span [|text "hello"|])


(* Add custom types. Here the children are parameterized by `callbag and `foo *)
let custom_foo: [> [> `foo] Html.Node.custom] Html.Node.t = Obj.magic ()
let _: [`callbag | `foo] Html.Nodes.Div.child array =
  let open Html in
  [|
    span ~css_module:Modules.title [|text "The time is:"|];
    br ();
    custom_foo;
    clock;
  |]

(* You can also typecheck based on your custom type *)
let f' (_: [`foo] Html.Node.custom Html.Node.t): unit = ()
let _ = f' custom_foo

let anchor =
  let open Html in
  a ~id:"link" ~href:"#"
    ~aria:(Html.Attributes.Aria.link ~aria_hidden:() ~aria_label:"foo" ())
    ~on_click:(fun _ -> Js.log "clicked!")
    [|text "some link"|]

let example =
  let open Html in
  div ~css_module:Modules.container [|
    TryJsx.foo;
    Div.flex ~css_module:Modules.flex [|
      span [|text "this"|] |> Html.Overrides.flex_module Modules.flex_item;
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

let _ =
  Webapi.Dom.Element.appendChild (Html.Node.to_node example) body
