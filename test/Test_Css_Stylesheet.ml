open BsTape
open Test
open Css_Properties
;;

test ~name:"@media functions" @@ fun t -> begin
  let open Css_Stylesheet in
  let width = Css_Media.Fn.width
  in
  let x = make `utf_8
    [
      media_print
        ~condition:(width @@ `px 1024.)
        (`class_name "foo") 
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
  Js.log (Css_Stylesheet.show x);
  t |> T.end_
end; 
