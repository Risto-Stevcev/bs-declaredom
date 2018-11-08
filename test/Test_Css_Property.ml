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


test ~name:"css property - bottom" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Bottom.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "bottom: inherit";
  t |> equal `initial "bottom: initial";
  t |> equal `unset "bottom: unset";
  t |> equal (`length (20., `px)) "bottom: 20px";
  t |> equal (`percent 80) "bottom: 80%";
  t |> T.end_
end;


test ~name:"css property - clear" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Clear.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "clear: inherit";
  t |> equal `initial "clear: initial";
  t |> equal `unset "clear: unset";
  t |> equal `none "clear: none";
  t |> equal `left "clear: left";
  t |> equal `right "clear: right";
  t |> equal `both "clear: both";
  t |> T.end_
end;


test ~name:"css property - cursor" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Cursor.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "cursor: inherit";
  t |> equal `initial "cursor: initial";
  t |> equal `unset "cursor: unset";
  t |> equal `auto "cursor: auto";
  t |> equal `crosshair "cursor: crosshair";
  t |> equal `default "cursor: default";
  t |> equal `pointer "cursor: pointer";
  t |> equal `move "cursor: move";
  t |> equal `e_resize "cursor: e-resize";
  t |> equal `ne_resize "cursor: ne-resize";
  t |> equal `nw_resize "cursor: nw-resize";
  t |> equal `n_resize "cursor: n-resize";
  t |> equal `se_resize "cursor: se-resize";
  t |> equal `sw_resize "cursor: sw-resize";
  t |> equal `s_resize "cursor: s-resize";
  t |> equal `w_resize "cursor: w-resize";
  t |> equal `text "cursor: text";
  t |> equal `wait "cursor: wait";
  t |> equal `help "cursor: help";
  t |> equal `progress "cursor: progress";
  t |> T.equal (Cursor.make ~uris:[`uri "http://foo"] `auto |> Css.Property.show)
               "cursor: url(\"http://foo\"), auto";

  t |> T.equal (  Cursor.make ~uris:[`uri "http://foo"; `uri "bar"] `auto
               |> Css.Property.show
               )
               "cursor: url(\"http://foo\"), url(\"bar\"), auto";
  t |> T.end_
end;


test ~name:"css property - float" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Float.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "float: inherit";
  t |> equal `initial "float: initial";
  t |> equal `unset "float: unset";
  t |> equal `none "float: none";
  t |> equal `left "float: left";
  t |> equal `right "float: right";
  t |> T.end_
end;


test ~name:"css property - font-family" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontFamily.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "font-family: inherit";
  t |> equal `initial "font-family: initial";
  t |> equal `unset "font-family: unset";
  t |> equal (`font `serif) "font-family: serif";
  t |> equal (`font `sans_serif) "font-family: sans-serif";
  t |> equal (`font `cursive) "font-family: cursive";
  t |> equal (`font `fantasy) "font-family: fantasy";
  t |> equal (`font `monospace) "font-family: monospace";
  t |> equal (`fonts (`font_name "Helvetica", [`serif]))
             "font-family: \"Helvetica\", serif";
  t |> T.end_
end;


test ~name:"css property - font-size" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontSize.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "font-size: inherit";
  t |> equal `initial "font-size: initial";
  t |> equal `unset "font-size: unset";
  t |> equal `xx_small "font-size: xx-small";
  t |> equal `x_small "font-size: x-small";
  t |> equal `small "font-size: small";
  t |> equal `medium "font-size: medium";
  t |> equal `large "font-size: large";
  t |> equal `x_large "font-size: x-large";
  t |> equal `xx_large "font-size: xx-large";
  t |> equal `larger "font-size: larger";
  t |> equal `smaller "font-size: smaller";
  t |> equal (`length (20., `px)) "font-size: 20px";
  t |> equal (`length (0.8, `rem)) "font-size: 0.8rem";
  t |> equal (`percent 80) "font-size: 80%";
  t |> T.end_
end;


test ~name:"css property - font-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontStyle.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "font-style: inherit";
  t |> equal `initial "font-style: initial";
  t |> equal `unset "font-style: unset";
  t |> equal `normal "font-style: normal";
  t |> equal `italic "font-style: italic";
  t |> equal `oblique "font-style: oblique";
  t |> T.end_
end;


test ~name:"css property - font-variant" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontVariant.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "font-variant: inherit";
  t |> equal `initial "font-variant: initial";
  t |> equal `unset "font-variant: unset";
  t |> equal `normal "font-variant: normal";
  t |> equal `small_caps "font-variant: small-caps";
  t |> T.end_
end;


test ~name:"css property - font-weight" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontWeight.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "font-weight: inherit";
  t |> equal `initial "font-weight: initial";
  t |> equal `unset "font-weight: unset";
  t |> equal `normal "font-weight: normal";
  t |> equal `bold "font-weight: bold";
  t |> equal `bolder "font-weight: bolder";
  t |> equal `lighter "font-weight: lighter";
  t |> equal `w100 "font-weight: 100";
  t |> equal `w200 "font-weight: 200";
  t |> equal `w300 "font-weight: 300";
  t |> equal `w400 "font-weight: 400";
  t |> equal `w500 "font-weight: 500";
  t |> equal `w600 "font-weight: 600";
  t |> equal `w700 "font-weight: 700";
  t |> equal `w800 "font-weight: 800";
  t |> equal `w900 "font-weight: 900";
  t |> T.end_
end;


test ~name:"css property - font" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Css.Property.show) b in
  t |> equal (Font.make ~value:`inherit_ ()) "font: inherit";
  t |> equal (Font.make ~value:`initial ()) "font: initial";
  t |> equal (Font.make ~value:`unset ()) "font: unset";
  t |> equal (Font.make ~style:`italic
                        ~variant:`small_caps
                        ~size:(`length (1.2, `em)) ())
             "font: italic small-caps 1.2em";
  t |> equal (Font.make ~style:`italic
                        ~weight:`bold
                        ~size:(`length (1.2, `em))
                        ~line_height:(`percent 120) ())
             "font: italic bold 1.2em/120%";
  t |> T.end_
end;


test ~name:"css property - height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Height.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "height: inherit";
  t |> equal `initial "height: initial";
  t |> equal `unset "height: unset";
  t |> equal (`length (20., `px)) "height: 20px";
  t |> equal (`percent 80) "height: 80%";
  t |> T.end_
end;


test ~name:"css property - left" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Left.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "left: inherit";
  t |> equal `initial "left: initial";
  t |> equal `unset "left: unset";
  t |> equal (`length (20., `px)) "left: 20px";
  t |> equal (`percent 80) "left: 80%";
  t |> T.end_
end;


test ~name:"css property - letter-spacing" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> LetterSpacing.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "letter-spacing: inherit";
  t |> equal `initial "letter-spacing: initial";
  t |> equal `unset "letter-spacing: unset";
  t |> equal (`length (20., `px)) "letter-spacing: 20px";
  t |> T.end_
end;


test ~name:"css property - line-height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> LineHeight.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "line-height: inherit";
  t |> equal `initial "line-height: initial";
  t |> equal `unset "line-height: unset";
  t |> equal (`length (20., `px)) "line-height: 20px";
  t |> equal (`percent 80) "line-height: 80%";
  t |> T.end_
end;


test ~name:"css property - list-style-image" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> ListStyleImage.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "list-style-image: inherit";
  t |> equal `initial "list-style-image: initial";
  t |> equal `unset "list-style-image: unset";
  t |> equal `none "list-style-image: none";
  t |> equal (`uri "http://foo") "list-style-image: url(\"http://foo\")";
  t |> T.end_
end;


test ~name:"css property - list-style-position" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> ListStylePosition.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "list-style-position: inherit";
  t |> equal `initial "list-style-position: initial";
  t |> equal `unset "list-style-position: unset";
  t |> equal `inside "list-style-position: inside";
  t |> equal `outside "list-style-position: outside";
  t |> T.end_
end;


test ~name:"css property - list-style-type" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> ListStyleType.make |> Css.Property.show) b
  in
  t |> equal `inherit_ "list-style-type: inherit";
  t |> equal `initial "list-style-type: initial";
  t |> equal `unset "list-style-type: unset";
  t |> equal `disc "list-style-type: disc";
  t |> equal `circle "list-style-type: circle";
  t |> equal `square "list-style-type: square";
  t |> equal `decimal "list-style-type: decimal";
  t |> equal `decimal_leading_zero "list-style-type: decimal-leading-zero";
  t |> equal `lower_roman "list-style-type: lower-roman";
  t |> equal `upper_roman "list-style-type: upper-roman";
  t |> equal `lower_greek "list-style-type: lower-greek";
  t |> equal `lower_latin "list-style-type: lower-latin";
  t |> equal `upper_latin "list-style-type: upper-latin";
  t |> equal `armenian "list-style-type: armenian";
  t |> equal `georgian "list-style-type: georgian";
  t |> equal `lower_alpha "list-style-type: lower-alpha";
  t |> equal `upper_alpha "list-style-type: upper-alpha";
  t |> equal `none "list-style-type: none";
  t |> T.end_
end;

test ~name:"css property - list-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Css.Property.show) b
  in
  t |> equal (ListStyle.make ()) "list-style: inherit";
  t |> equal (ListStyle.make ~type_:`circle ()) "list-style: circle";
  t |> equal (ListStyle.make ~position:`inside ~type_:`circle ())
             "list-style: circle inside";
  t |> equal (ListStyle.make ~image:(`uri "http://foo")
                             ~position:`inside
                             ~type_:`circle ())
             "list-style: circle inside url(\"http://foo\")";
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
