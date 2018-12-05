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
  let open Css.Stylesheet in
  let open Css.Media.Fn in
  let open Style.MediaGroup in
  let block = Style.block in

  let x = make `utf_8
    [
      (MediaRule.print
        ~condition:(width 1024. `px)
        (`class_name "foo") 
        (visual
          ~color:`red
          ~backgroundColor:`blue ()) :> Rule.t)
    ; (StyleRule.make
        (`class_name "bar")
        (block ~color:`red ()) :> Rule.t)
    ]
  in
  Js.log (Css.Stylesheet.show x);
  t |> T.end_
end; 
