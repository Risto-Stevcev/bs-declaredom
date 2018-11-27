open BsTape
open Test;;

test ~name:"css property - azimuth" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Azimuth.make |> Css.Property.show) b in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`angle (90., `deg)) "90deg";
  t |> equal (`angle (180., `rad)) "180rad";
  t |> equal (`angle (60.5, `grad)) "60.5grad";
  t |> T.end_
end; 

test ~name:"@media functions" @@ fun t -> begin
  let x = Css.Stylesheet.Rule.Media.print ~condition:(Css.Media.Fn.width 1024. `px) (`class_name "foo") 
    (Style.MediaGroup.visual
      ~color:`red
      ~backgroundColor:`blue ())
  in
  Js.log (Css.Stylesheet.Rule.show x);
  t |> T.end_
end; 
