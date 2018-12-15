open BsTape
open Test
open Css_Properties
;;

test ~name:"css property - azimuth" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Azimuth.make |> Css_Property.show) b in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`angle (90., `deg)) "90deg";
  t |> equal (`angle (180., `rad)) "180rad";
  t |> equal (`angle (60.5, `grad)) "60.5grad";
  t |> equal `left_side "left-side";
  t |> equal `far_left "far-left";
  t |> equal `left "left";
  t |> equal `center_left "center-left";
  t |> equal `center "center";
  t |> equal `center_right "center-right";
  t |> equal `right "right";
  t |> equal `far_right "far-right";
  t |> equal `right_side "right-side";
  t |> equal (`behind (Some `far_right)) "behind far-right";
  t |> equal (`behind None) "behind";
  t |> equal `leftwards "leftwards";
  t |> equal `rightwards "rightwards";
  t |> T.end_
end;
 

test ~name:"css property - background-attachment" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundAttachment.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `scroll "scroll";
  t |> equal `fixed "fixed";
  t |> T.end_
end; 


test ~name:"css property - background-image" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> equal `transparent "transparent";
  t |> T.end_
end; 


test ~name:"css property - background-image" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundImage.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`uri "http://wikipedia.org")
             "url(\"http://wikipedia.org\")";
  t |> equal `none "none";
  t |> T.end_
end; 


test ~name:"css property - background-position" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundPosition.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `left "left";
  t |> equal `right "right";
  t |> equal `top "top";
  t |> equal `bottom "bottom";
  t |> equal `center "center";
  t |> equal (`value2 (`percent 0, `percent 0)) "0% 0%";
  t |> equal (`value2 (`percent 50, `top)) "50% top";
  t |> equal (`value2 (`left, `top)) "left top";
  t |> equal (`value2 (`left, `bottom)) "left bottom";
  t |> equal (`value2 (`right, `percent 25)) "right 25%";
  t |> equal (`value2 (`right, `top)) "right top";
  t |> equal (`value2 (`right, `bottom)) "right bottom";
  t |> equal (`value2 (`center, `bottom)) "center bottom";
  t |> equal (`value4 (`left, `percent 10, `top, `percent 50))
             "left 10% top 50%";
  t |> T.end_
end; 


test ~name:"css property - background-repeat" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundRepeat.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `repeat "repeat";
  t |> equal `repeat_x "repeat-x";
  t |> equal `repeat_y "repeat-y";
  t |> equal `no_repeat "no-repeat";
  t |> T.end_
end; 


test ~name:"css property - background" @@ fun t -> begin
  let background = Background.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (background ()) "inherit";
  t |> equal (background ~color:`red ()) "red";
  t |> equal (background ~color:`red ~repeat:`repeat ()) "red repeat";
  t |> equal (background ~repeat:`repeat ~image:(`uri "http://foo") ())
             "url(\"http://foo\") repeat";
  t |> T.end_
end;


test ~name:"css property - border-collapse" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderCollapse.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `collapse "collapse";
  t |> equal `separate "separate";
  t |> T.end_
end;


test ~name:"css property - border-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal `transparent "transparent";
  t |> T.end_
end;


test ~name:"css property - border-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `thin "thin";
  t |> equal `medium "medium";
  t |> equal `thick "thick";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> T.end_
end;


test ~name:"css property - border-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `dotted "dotted";
  t |> equal `dashed "dashed";
  t |> equal `solid "solid";
  t |> T.end_
end;


test ~name:"css property - border-top" @@ fun t -> begin
  let border_top = BorderTop.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (border_top ()) "inherit";
  t |> equal (border_top ~width:(`length (5., `px)) ()) "5px";
  t |> equal (border_top ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-bottom" @@ fun t -> begin
  let border_bottom = BorderBottom.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (border_bottom ()) "inherit";
  t |> equal (border_bottom ~width:(`length (5., `px)) ()) "5px";
  t |> equal (border_bottom ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-left" @@ fun t -> begin
  let border_left = BorderLeft.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (border_left ()) "inherit";
  t |> equal (border_left ~width:(`length (5., `px)) ()) "5px";
  t |> equal (border_left ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-right" @@ fun t -> begin
  let border_right = BorderRight.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (border_right ()) "inherit";
  t |> equal (border_right ~width:(`length (5., `px)) ()) "5px";
  t |> equal (border_right ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border" @@ fun t -> begin
  let border_right = Border.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (border_right ()) "inherit";
  t |> equal (border_right ~width:(`length (5., `px)) ()) "5px";
  t |> equal (border_right ~width:(`length (5., `px)) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - bottom" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Bottom.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (20., `px)) "20px";
  t |> equal (`percent 80) "80%";
  t |> T.end_
end;


test ~name:"css property - clear" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Clear.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal `left "left";
  t |> equal `right "right";
  t |> equal `both "both";
  t |> T.end_
end;


test ~name:"css property - color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Color.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> T.end_
end;


test ~name:"css property - cursor" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Cursor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `crosshair "crosshair";
  t |> equal `default "default";
  t |> equal `pointer "pointer";
  t |> equal `move "move";
  t |> equal `e_resize "e-resize";
  t |> equal `ne_resize "ne-resize";
  t |> equal `nw_resize "nw-resize";
  t |> equal `n_resize "n-resize";
  t |> equal `se_resize "se-resize";
  t |> equal `sw_resize "sw-resize";
  t |> equal `s_resize "s-resize";
  t |> equal `w_resize "w-resize";
  t |> equal `text "text";
  t |> equal `wait "wait";
  t |> equal `help "help";
  t |> equal `progress "progress";
  t |> T.equal (Cursor.make ~uris:[`uri "http://foo"] `auto |> Css_Property.show)
               "url(\"http://foo\"), auto";

  t |> T.equal (  Cursor.make ~uris:[`uri "http://foo"; `uri "bar"] `auto
               |> Css_Property.show
               )
               "url(\"http://foo\"), url(\"bar\"), auto";
  t |> T.end_
end;


test ~name:"css property - float" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Float.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal `left "left";
  t |> equal `right "right";
  t |> T.end_
end;


test ~name:"css property - font-family" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontFamily.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`font `serif) "serif";
  t |> equal (`font `sans_serif) "sans-serif";
  t |> equal (`font `cursive) "cursive";
  t |> equal (`font `fantasy) "fantasy";
  t |> equal (`font `monospace) "monospace";
  t |> equal (`fonts (`font_name "Helvetica", [`serif]))
             "\"Helvetica\", serif";
  t |> T.end_
end;


test ~name:"css property - font-size" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontSize.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `xx_small "xx-small";
  t |> equal `x_small "x-small";
  t |> equal `small "small";
  t |> equal `medium "medium";
  t |> equal `large "large";
  t |> equal `x_large "x-large";
  t |> equal `xx_large "xx-large";
  t |> equal `larger "larger";
  t |> equal `smaller "smaller";
  t |> equal (`length (20., `px)) "20px";
  t |> equal (`length (0.8, `rem)) "0.8rem";
  t |> equal (`percent 80) "80%";
  t |> T.end_
end;


test ~name:"css property - font-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `normal "normal";
  t |> equal `italic "italic";
  t |> equal `oblique "oblique";
  t |> T.end_
end;


test ~name:"css property - font-variant" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontVariant.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `normal "normal";
  t |> equal `small_caps "small-caps";
  t |> T.end_
end;


test ~name:"css property - font-weight" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FontWeight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `normal "normal";
  t |> equal `bold "bold";
  t |> equal `bolder "bolder";
  t |> equal `lighter "lighter";
  t |> equal `w100 "100";
  t |> equal `w200 "200";
  t |> equal `w300 "300";
  t |> equal `w400 "400";
  t |> equal `w500 "500";
  t |> equal `w600 "600";
  t |> equal `w700 "700";
  t |> equal `w800 "800";
  t |> equal `w900 "900";
  t |> T.end_
end;


test ~name:"css property - font" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Css_Property.show) b in
  t |> equal (Font.make ~value:`inherit_ ()) "inherit";
  t |> equal (Font.make ~value:`initial ()) "initial";
  t |> equal (Font.make ~value:`unset ()) "unset";
  t |> equal (Font.make ~style:`italic
                        ~variant:`small_caps
                        ~size:(`length (1.2, `em)) ())
             "italic small-caps 1.2em";
  t |> equal (Font.make ~style:`italic
                        ~weight:`bold
                        ~size:(`length (1.2, `em))
                        ~line_height:(`percent 120) ())
             "italic bold 1.2em/120%";
  t |> T.end_
end;


test ~name:"css property - height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Height.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (20., `px)) "20px";
  t |> equal (`percent 80) "80%";
  t |> T.end_
end;


test ~name:"css property - left" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Left.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (20., `px)) "20px";
  t |> equal (`percent 80) "80%";
  t |> T.end_
end;


test ~name:"css property - letter-spacing" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> LetterSpacing.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (20., `px)) "20px";
  t |> T.end_
end;


test ~name:"css property - line-height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> LineHeight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (20., `px)) "20px";
  t |> equal (`percent 80) "80%";
  t |> T.end_
end;


test ~name:"css property - list-style-image" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> ListStyleImage.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal (`uri "http://foo") "url(\"http://foo\")";
  t |> T.end_
end;


test ~name:"css property - list-style-position" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> ListStylePosition.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `inside "inside";
  t |> equal `outside "outside";
  t |> T.end_
end;


test ~name:"css property - list-style-type" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> ListStyleType.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `disc "disc";
  t |> equal `circle "circle";
  t |> equal `square "square";
  t |> equal `decimal "decimal";
  t |> equal `decimal_leading_zero "decimal-leading-zero";
  t |> equal `lower_roman "lower-roman";
  t |> equal `upper_roman "upper-roman";
  t |> equal `lower_greek "lower-greek";
  t |> equal `lower_latin "lower-latin";
  t |> equal `upper_latin "upper-latin";
  t |> equal `armenian "armenian";
  t |> equal `georgian "georgian";
  t |> equal `lower_alpha "lower-alpha";
  t |> equal `upper_alpha "upper-alpha";
  t |> equal `none "none";
  t |> T.end_
end;

test ~name:"css property - list-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (ListStyle.make ()) "inherit";
  t |> equal (ListStyle.make ~type_:`circle ()) "circle";
  t |> equal (ListStyle.make ~position:`inside ~type_:`circle ())
             "circle inside";
  t |> equal (ListStyle.make ~image:(`uri "http://foo")
                             ~position:`inside
                             ~type_:`circle ())
             "circle inside url(\"http://foo\")";
  t |> T.end_
end;


test ~name:"css property - margin" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Margin.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> equal (`percent 21) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-top" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginTop.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> equal (`percent 21) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-right" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginRight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> equal (`percent 21) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-bottom" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginBottom.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> equal (`percent 21) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-left" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginLeft.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> equal (`percent 21) "21%";
  t |> T.end_
end;


test ~name:"css property - page-break-after" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PageBreakAfter.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `always "always";
  t |> equal `avoid "avoid";
  t |> equal `left "left";
  t |> equal `right "right";
  t |> T.end_
end;


test ~name:"css property - page-break-before" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PageBreakBefore.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `always "always";
  t |> equal `avoid "avoid";
  t |> equal `left "left";
  t |> equal `right "right";
  t |> T.end_
end;


test ~name:"css property - page-break-inside" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PageBreakInside.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `always "always";
  t |> T.end_
end;


test ~name:"css property - orphans" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Orphans.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`lines 3) "3";
  t |> T.end_
end;


test ~name:"css property - widows" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Widows.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`lines 3) "3";
  t |> T.end_
end;


test ~name:"css property - vertical-align" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> VerticalAlign.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `baseline "baseline";
  t |> equal `sub "sub";
  t |> equal `super "super";
  t |> equal `text_top "text-top";
  t |> equal `text_bottom "text-bottom";
  t |> equal `middle "middle";
  t |> equal (`length (12.5, `px)) "12.5px";
  t |> equal (`percent 12) "12%";
  t |> equal `top "top";
  t |> equal `bottom "bottom";
  t |> T.end_
end;


test ~name:"css property - text-align" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> TextAlign.make |> Css_Property.show) b in
  t |> equal `left "left";
  t |> equal `right "right";
  t |> equal `center "center";
  t |> equal `justify "justify";
  t |> equal `inherit_ "inherit";
  t |> T.end_
end
