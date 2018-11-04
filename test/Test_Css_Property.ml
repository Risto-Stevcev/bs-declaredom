open BsTape
open Test
;;

test ~name:"css property - azimuth" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Azimuth.make |> Css.Property.show) b in
  t |> equal `inherit_ "azimuth: inherit";
  t |> equal `initial "azimuth: initial";
  t |> equal `unset "azimuth: unset";
  t |> equal (`angle (90., `deg)) "azimuth: 90deg";
  t |> equal (`angle (180., `rad)) "azimuth: 180rad";
  t |> equal (`angle (60.5, `grad)) "azimuth: 60.5grad";
  t |> equal `left_side "azimuth: left-side";
  t |> equal `far_left "azimuth: far-left";
  t |> equal `left "azimuth: left";
  t |> equal `center_left "azimuth: center-left";
  t |> equal `center "azimuth: center";
  t |> equal `center_right "azimuth: center-right";
  t |> equal `right "azimuth: right";
  t |> equal `far_right "azimuth: far-right";
  t |> equal `right_side "azimuth: right-side";
  t |> equal (`behind (Some `far_right)) "azimuth: behind far-right";
  t |> equal (`behind None) "azimuth: behind";
  t |> equal `leftwards "azimuth: leftwards";
  t |> equal `rightwards "azimuth: rightwards";
  t |> T.end_
end;
 

test ~name:"css property - background-attachment" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundAttachment.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "background-attachment: inherit";
  t |> equal `initial "background-attachment: initial";
  t |> equal `unset "background-attachment: unset";
  t |> equal `scroll "background-attachment: scroll";
  t |> equal `fixed "background-attachment: fixed";
  t |> T.end_
end; 


test ~name:"css property - background-image" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundImage.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "background-image: inherit";
  t |> equal `initial "background-image: initial";
  t |> equal `unset "background-image: unset";
  t |> equal (`uri "http://wikipedia.org")
             "background-image: url(\"http://wikipedia.org\")";
  t |> equal `none "background-image: none";
  t |> T.end_
end; 


test ~name:"css property - background-position" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundPosition.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "background-position: inherit";
  t |> equal `initial "background-position: initial";
  t |> equal `unset "background-position: unset";
  t |> equal `left "background-position: left";
  t |> equal `right "background-position: right";
  t |> equal `top "background-position: top";
  t |> equal `bottom "background-position: bottom";
  t |> equal `center "background-position: center";
  t |> equal (`value2 (`percent 0, `percent 0)) "background-position: 0% 0%";
  t |> equal (`value2 (`percent 50, `top)) "background-position: 50% top";
  t |> equal (`value2 (`left, `top)) "background-position: left top";
  t |> equal (`value2 (`left, `bottom)) "background-position: left bottom";
  t |> equal (`value2 (`right, `percent 25)) "background-position: right 25%";
  t |> equal (`value2 (`right, `top)) "background-position: right top";
  t |> equal (`value2 (`right, `bottom)) "background-position: right bottom";
  t |> equal (`value2 (`center, `bottom)) "background-position: center bottom";
  t |> equal (`value4 (`left, `percent 10, `top, `percent 50))
             "background-position: left 10% top 50%";
  t |> T.end_
end; 


test ~name:"css property - background-repeat" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundRepeat.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "background-repeat: inherit";
  t |> equal `initial "background-repeat: initial";
  t |> equal `unset "background-repeat: unset";
  t |> equal `repeat "background-repeat: repeat";
  t |> equal `repeat_x "background-repeat: repeat-x";
  t |> equal `repeat_y "background-repeat: repeat-y";
  t |> equal `no_repeat "background-repeat: no-repeat";
  t |> T.end_
end; 


test ~name:"css property - background" @@ fun t -> begin
  let background = Background.make
  and equal a b t = t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (background ()) "background: inherit";
  t |> equal (background ~color:`red ()) "background: red";
  t |> equal (background ~color:`red ~repeat:`repeat ()) "background: red repeat";
  t |> equal (background ~repeat:`repeat ~image:(`uri "http://foo") ())
             "background: url(\"http://foo\") repeat";
  t |> T.end_
end;


test ~name:"css property - border-collapse" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderCollapse.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "border-collapse: inherit";
  t |> equal `initial "border-collapse: initial";
  t |> equal `unset "border-collapse: unset";
  t |> equal `collapse "border-collapse: collapse";
  t |> equal `separate "border-collapse: separate";
  t |> T.end_
end;


test ~name:"css property - border-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderColor.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "border-color: inherit";
  t |> equal `initial "border-color: initial";
  t |> equal `unset "border-color: unset";
  t |> equal `red "border-color: red";
  t |> equal `transparent "border-color: transparent";
  t |> T.end_
end;


test ~name:"css property - border-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderWidth.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "border-width: inherit";
  t |> equal `initial "border-width: initial";
  t |> equal `unset "border-width: unset";
  t |> equal `thin "border-width: thin";
  t |> equal `medium "border-width: medium";
  t |> equal `thick "border-width: thick";
  t |> equal (`length (12.5, `px)) "border-width: 12.5px";
  t |> T.end_
end;


test ~name:"css property - border-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderStyle.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "border-style: inherit";
  t |> equal `initial "border-style: initial";
  t |> equal `unset "border-style: unset";
  t |> equal `dotted "border-style: dotted";
  t |> equal `dashed "border-style: dashed";
  t |> equal `solid "border-style: solid";
  t |> T.end_
end;


test ~name:"css property - border-top" @@ fun t -> begin
  let border_top = BorderTop.make
  and equal a b t = t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (border_top ()) "border-top: inherit";
  t |> equal (border_top ~width:(`length (5., `px)) ()) "border-top: 5px";
  t |> equal (border_top ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "border-top: 5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-bottom" @@ fun t -> begin
  let border_bottom = BorderBottom.make
  and equal a b t = t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (border_bottom ()) "border-bottom: inherit";
  t |> equal (border_bottom ~width:(`length (5., `px)) ()) "border-bottom: 5px";
  t |> equal (border_bottom ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "border-bottom: 5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-left" @@ fun t -> begin
  let border_left = BorderLeft.make
  and equal a b t = t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (border_left ()) "border-left: inherit";
  t |> equal (border_left ~width:(`length (5., `px)) ()) "border-left: 5px";
  t |> equal (border_left ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "border-left: 5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-right" @@ fun t -> begin
  let border_right = BorderRight.make
  and equal a b t = t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (border_right ()) "border-right: inherit";
  t |> equal (border_right ~width:(`length (5., `px)) ()) "border-right: 5px";
  t |> equal (border_right ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "border-right: 5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border" @@ fun t -> begin
  let border_right = Border.make
  and equal a b t = t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (border_right ()) "border: inherit";
  t |> equal (border_right ~width:(`length (5., `px)) ()) "border: 5px";
  t |> equal (border_right ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "border: 5px dashed red";
  t |> T.end_
end;







test ~name:"css property - textAlign" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Clear.make |> Css.Property.show) b in
  t |> equal `inherit_ "clear: inherit";
  t |> equal `initial "clear: initial";
  t |> equal `unset "clear: unset";
  t |> equal `none "clear: none";
  t |> equal `left "clear: left";
  t |> equal `right "clear: right";
  t |> equal `both "clear: both";
  t |> T.end_
end;

test ~name:"css property - textAlign" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> TextAlign.make |> Css.Property.show) b in
  t |> equal `left "text-align: left";
  t |> equal `right "text-align: right";
  t |> equal `center "text-align: center";
  t |> equal `justify "text-align: justify";
  t |> equal `inherit_ "text-align: inherit";
  t |> T.end_
end
