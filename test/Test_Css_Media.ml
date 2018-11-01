open BsTape
open Test
;;

test ~name:"css @media" @@ fun t -> begin
  let (width, range) = Css.Stylesheet.Media.Range.(width, show)
  in
  let media = Css.Stylesheet.Media.MediaQuery.(media)
  in
  let equal x y t = t |> T.equal (Css.Stylesheet.Media.tToJs x) y in 

  let x: Css.Stylesheet.Media.Range.t = `range (None, `none, `width (30., `cm))
  in
  let z = media ~t:(`only `screen) @@ width 3. `px
  in

  t |> T.equal (width 12. `px |> range) "width: 12px";

  t |> equal [z] "only screen and (width: 3px)";
  (*
  t |> equal [`media_query (None, width ~m:`min 30.5 `rem)] "min-width: 30.5rem";
  t |> equal [`media_query (None, `range (None, `none, `width (30., `cm)))] "";
  *)

  t |> T.end_
end
