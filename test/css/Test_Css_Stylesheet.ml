open BsTape
open Test
;;

test ~name:"@media functions" @@ fun t -> begin
  let open Css_Stylesheet in
  let width = Css_Media.Fn.width
  in
  let x = make `utf_8 [
    keyframes "foo" [
      `from, Css.keyframe_block ~color:`red ~animation_timing_function:`ease_in_out ();
      `percent 30., Css.keyframe_block ~color:`blue ();
      `to_, Css.keyframe_block ~color:`green ();
    ];
    page ~size:(Css_Properties.Size.make `auto)
         ~margin:(Css.Properties.Margin.make_value (`mm 5.)) ();
    media_print ~condition:(width @@ `px 1024.) `body
      (Css.MediaGroup.visual
      ~color:`red
      ~background_color:`blue ());
    style (`class_name "bar") (Css.block ~color:`red ());
    style (`class_name "baz")
          (Css.inline_block ~padding:(Css.padding' ~left:(`em 0.8) ~top:(`em 1.2) ()) ());
    style (`class_name "norf")
          (Css.block ~margin:(Css.margin @@ `px 12.) ~padding:(Css.padding @@ `em 1.5) ());
    style (`class_name "display-override-test")
          (Css_Properties.Display.inline_block @@ Css.inline_block ~color:`blue ());
    Css_Module.make @@
      Css.positioned ~top:(`px 40.) ~z_index:3 ()
      |> Css_Module.map (fun e -> Css_Properties.Position.make @@ `fixed e)
      |> Css_Module.merge (Css_Module.make @@ Css.block ~color:`red ())
      |> css_module;
    css_module @@ Css_Module.make @@ Css.flex ~color:`blue ()
  ]
  in
  t |> T.equal (Css_Stylesheet.show x) @@
  "@charset utf-8;\n\n"^
  "@keyframes \"foo\" {\n"^
  "  from {\n"^
  "    animation-timing-function: ease-in-out;\n"^
  "    color: red;\n"^
  "  }\n"^
  "  30% {\n"^
  "    color: blue;\n"^
  "  }\n"^
  "  to {\n"^
  "    color: green;\n"^
  "  }\n"^
  "}\n"^
  "@page {\n"^
  "  size: auto;\n"^
  "  margin: 5mm;\n"^
  "}\n"^
  "@media print and (width: 1024px) {\n"^
  "  body {\n"^
  "    background-color: blue;\n"^
  "    color: red;\n"^
  "  }\n"^
  "}\n"^
  ".bar {\n"^
  "  color: red;\n"^
  "}\n"^
  ".baz {\n"^
  "  padding: 1.2em 0px 0px 0.8em;\n"^
  "}\n"^
  ".norf {\n"^
  "  margin: 12px;\n"^
  "  padding: 1.5em;\n"^
  "}\n"^
  ".display-override-test {\n"^
  "  color: blue;\n"^
  "  display: inline-block;\n"^
  "}\n"^
  ".m44dbac8b5208399177c6942a0e448d10 {\n"^
  "  color: red;\n"^
  "  top: 40px;\n"^
  "  z-index: 3;\n"^
  "  position: fixed;\n"^
  "}\n"^
  ".m54b977e6455895da3b8081756436b4cb {\n"^
  "  color: blue;\n"^
  "  display: flex;\n"^
  "}";
  t |> T.end_
  end;
