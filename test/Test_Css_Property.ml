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
