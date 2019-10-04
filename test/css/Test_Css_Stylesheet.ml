open BsTape
open Test
;;

test ~name:"@media functions" @@ fun t -> begin
  let open Css_Stylesheet in
  let width = Css_Media.Fn.width
  in
  let x = make `utf_8
    [
      page
        ~size:(Css_Properties.Size.make `auto)
        ~margin:(Css.Properties.Margin.make_value (`mm 5.)) ()
    ; media_print
        ~condition:(width @@ `px 1024.)
        `body
        (Css_Style.MediaGroup.visual
          ~color:`red
          ~background_color:`blue ())
    ; style
        (`class_name "bar")
        (Css_Style.block ~color:`red ())
    ; style
        (`class_name "display-override-test")
        (Css_Properties.Display.inline_block @@ Css_Style.inline_block ~color:`blue ())
    ; Css_Module.make @@
      Css_Style.positioned ~top:(`px 40.) ~z_index:3 ()
      |> Css_Module.map (fun e -> Css_Properties.Position.make @@ `fixed e)
      |> Css_Module.merge (Css_Module.make @@ Css_Style.block ~color:`red ())
      |> css_module
    ; css_module @@ Css_Module.make @@
        Css_Style.flexbox ~color:`blue ()
    ]
  in
  t |> T.equal (Css_Stylesheet.show x) @@
    "@charset utf-8;\n\n"^
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
    ".ma7988c6e19cdd470118f972110f5a9b4 {\n"^
    "  color: blue;\n"^
    "}";
  t |> T.end_
end;
