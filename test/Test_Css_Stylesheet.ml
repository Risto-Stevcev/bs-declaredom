open BsTape
open Test
open Css_Properties
;;

test ~name:"css property - azimuth" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Azimuth.make |> Css_Property.show) b in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`deg 90.) "90deg";
  t |> equal (`rad 180.) "180rad";
  t |> equal (`grad 60.5) "60.5grad";
  t |> T.end_
end; 

test ~name:"@media functions" @@ fun t -> begin
  let open Css_Stylesheet in
  let width = Css_Media.Fn.width
  in
  let x = make `utf_8
    [
      media_print
        ~condition:(width @@ `px 1024.)
        (`class_name "foo") 
        (Style.MediaGroup.visual
          ~color:`red
          ~background_color:`blue ())
    ; style
        (`class_name "bar")
        (Style.block ~color:`red ())
    ; style
        (`class_name "display-override-test")
        (Css_Properties.Display.inline_block @@ Style.inline_block ~color:`blue ())
    ; Css_Module.make @@
      Style.positioned ~top:(`px 40.) ~z_index:3 ()
      |> Css_Module.map (fun e -> Css_Properties.Position.make @@ `fixed e)
      |> Css_Module.merge (Css_Module.make @@ Style.block ~color:`red ())
      |> css_module
    ; css_module @@ Css_Module.make @@
        Style.flexbox ~color:`blue ()
    ]
  in
  Js.log (Css_Stylesheet.show x);
  t |> T.end_
end; 
