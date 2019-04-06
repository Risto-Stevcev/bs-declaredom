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

open Html

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


(* Don't worry anymore about CSS silently failing! this library ensures that 
 * you only apply CSS styles and attributes that are valid for the element *)
let _ =
  div ~id:"some_div"
    (* This fails because div elements are block elements - the vertical-align
     * property applies to inline elements
    ~style:(Css.inline ~vertical_align:`baseline ())
     *)
    ~style:(Css.block ~color:`red ())
    [||]


(* You can override the CSS display styles, but this library intentionally 
 * restricts this functionality to the generic flow (`<div>`), phrasing 
 * (`<span>`) and sectioning (`<section>`) containers as other use cases are 
 * usually a CSS antipattern *)
let _ =
  Div.flex ~style:(Css.flexbox ~justify_content:`center ()) [|
    Span.inline_block ~style:(Css.inline_block ~color:`blue ()) [|text "foo"|];
    Section.inline_flex [|text "bar"|]
  |]


(* Only valid children are allowed for each element *)
let _ =
  html [|
    (* This fails because the <html> tag only takes a <head> or <body> element 
     * as children
    span [|text "foo"|]
     *)
    head [||]
  |]


(* Only valid attributes are allowed for each element. The anchor tag accepts 
 * a `href` attribute, and the `link` aria role is also allowed *)
let anchor =
  a ~id:"link" ~href:"#"
    (* Anchor elements can accept the `link` aria role *)
    ~aria:(Html.Attributes.Aria.link ~aria_hidden:() ~aria_label:"foo" ())
    ~on_click:(fun _ -> Js.log "clicked!")
    [|text "some link"|]


(* Make functions that only take a specific kind of element or group of elements *)
let f (_: Html.Node.span Html.Node.t): unit = ()
let _ =
  f (span [|text "hello"|])


(* Add custom types. This creates a custom type called `foo`. This also works 
 * very well with web components *)
let custom_foo: [> [> `foo] Html.Node.custom] Html.Node.t = Obj.magic @@
  span [|text "foo"|]

(* You can even give your custom element the ability to take only specific 
 * children! OCaml's powerful polymorphic variants will correctly unify the 
 * elements you pass into the array.
 * This example constructs a custom `foo` element that only takes other custom 
 * `foo` elements, custom `bar` elements, and `span` and `br` elements:
 *) 
let make_custom_bar
  (children: [[`bar | `foo] Html.Node.custom | Html.Node.span | Html.Node.br] Html.Node.t array):
  [> [> `bar] Html.Node.custom] Html.Node.t =
  (* TODO: stubbed, needs implementation *)
  Obj.magic children

let _: [`bar] Html.Node.custom Html.Node.t =
  make_custom_bar
  [|
    span [|text "Custom foo:"|];
    br ();
    custom_foo;
    (* This fails because <p> tags aren't allowed
    p [|text "foobar"|]
     *)
  |]

(* You can also typecheck based on your custom type *)
let f' (_: [`foo] Html.Node.custom Html.Node.t): unit = ()
let _ = f' custom_foo


(* CSS modules deal with a lot of the pitfalls of CSS in a large scale app.
 * Provide one CSS module per component and no longer worry about precedence 
 * rules, or enforcing conventions like BEM, or applying silly hacks and 
 * refactoring if the dev team painted themselves into a corner. Keep it simple. *)
let my_title = Css.Module.make @@
  Css.block ~color:`coral ~font_size:(`em 24.) ()


(* You can then apply these to your elements, but make sure you serve the CSS 
 * module in a stylesheet (inline or served as a CSS file) *)
let _ =
  h1 ~css_module:my_title [|text "This is my title"|]


(* These work much like postcss modules except that you get to use Ocaml's type 
 * system to ensure that you only reference a module that actually exists, and 
 * no preprocessing is required.
 *
 * And you can still build these if you aren't using Ocaml on the backend by 
 * generating the CSS stylesheets as part of your build, and then you can even 
 * apply other transformations like autoprefixer if you need to. *)


(* Example *)
let example =
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
      span ~style:(Css.inline ~font_weight:`bold ()) [|text "bar"|];
      fragment [|
        span [|text "baz"|];
        (* this correctly fails because <title> is metadata content:
         * title "foo";
         *)
      |];
      br ();
    |];
  |]

let _ =
  Webapi.Dom.Element.appendChild (Html.Node.to_node example) body
