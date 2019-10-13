open BsTape
open Test
open Css_Properties
;;


test ~name:"css property - align-content" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AlignContent.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `flex_start "flex-start";
  t |> equal `flex_end "flex-end";
  t |> equal `space_around "space-around";
  t |> equal `space_between "space-between";
  t |> equal `stretch "stretch";
  t |> T.end_
end;


test ~name:"css property - align-items" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AlignItems.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `flex_start "flex-start";
  t |> equal `flex_end "flex-end";
  t |> equal `center "center";
  t |> equal `baseline "baseline";
  t |> equal `stretch "stretch";
  t |> T.end_
end;


test ~name:"css property - align-self" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AlignSelf.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `flex_start "flex-start";
  t |> equal `flex_end "flex-end";
  t |> equal `center "center";
  t |> equal `baseline "baseline";
  t |> equal `stretch "stretch";
  t |> T.end_
end;


test ~name:"css property - animation-name" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationName.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`name "foo") "\"foo\"";
  t |> T.end_
end;


test ~name:"css property - animation-duration" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationDuration.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`ms 125.) "125ms";
  t |> equal (`s 5.) "5s";
  t |> T.end_
end;


test ~name:"css property - animation-timing-function" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationTimingFunction.make |> Css_Property.show) b
  in
  t |> equal `linear "linear";
  t |> equal `ease "ease";
  t |> equal `ease_in "ease-in";
  t |> equal `ease_out "ease-out";
  t |> equal `ease_in_out "ease-in-out";
  t |> equal (`cubic_bezier (0.42, 0., 0.58, 1.)) "cubic-bezier(0.42, 0, 0.58, 1)";
  t |> T.end_
end;


test ~name:"css property - animation-iteration-count" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationIterationCount.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `infinity "infinity";
  t |> equal (`repeat 5) "5";
  t |> T.end_
end;


test ~name:"css property - animation-direction" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationDirection.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `alternate "alternate";
  t |> equal `alternate_reverse "alternate-reverse";
  t |> equal `normal "normal";
  t |> equal `reverse "reverse";
  t |> T.end_
end;


test ~name:"css property - animation-play-state" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationPlayState.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `paused "paused";
  t |> equal `running "running";
  t |> T.end_
end;


test ~name:"css property - animation-delay" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationDelay.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`ms 125.) "125ms";
  t |> equal (`s 5.) "5s";
  t |> T.end_
end;


test ~name:"css property - animation-fill-mode" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> AnimationFillMode.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `backwards "backwards";
  t |> equal `both "both";
  t |> equal `forwards "forwards";
  t |> equal `none "none";
  t |> T.end_
end;


test ~name:"css property - animation" @@ fun t -> begin
  let animation = Animation.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (animation ()) "initial";
  t |> equal (animation ~duration:(`ms 0.) ~timing:`ease_in ()) "0ms ease-in";
  t |> equal (animation ~duration:(`s 1.)
                        ~timing:`ease_in_out
                        ~iterate:`infinity
                        ~direction:`alternate
                        ~fill_mode:`forwards
                        ~play_state:`running ())
             "1s ease-in-out infinity alternate forwards running";
  t |> T.end_
end;


test ~name:"css property - azimuth" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Azimuth.make |> Css_Property.show) b in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`deg 90.) "90deg";
  t |> equal (`rad 180.) "180rad";
  t |> equal (`grad 60.5) "60.5grad";
  t |> equal `left_side "left-side";
  t |> equal `far_left "far-left";
  t |> equal `left "left";
  t |> equal `center_left "center-left";
  t |> equal `center "center";
  t |> equal `center_right "center-right";
  t |> equal `right "right";
  t |> equal `far_right "far-right";
  t |> equal `right_side "right-side";
  t |> equal (`behind `far_right) "behind far-right";
  t |> equal (`behind') "behind";
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
  t |> equal (`px 24.) "24px";
  t |> equal (`position (`percent 0., `percent 0.)) "0% 0%";
  t |> equal (`position (`percent 50., `top)) "50% top";
  t |> equal (`position (`left, `top)) "left top";
  t |> equal (`position (`left, `bottom)) "left bottom";
  t |> equal (`position (`right, `percent 25.)) "right 25%";
  t |> equal (`position (`right, `top)) "right top";
  t |> equal (`position (`right, `bottom)) "right bottom";
  t |> equal (`position (`center, `bottom)) "center bottom";
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


test ~name:"css property - background-size" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BackgroundSize.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `contain "contain";
  t |> equal `cover "cover";
  t |> equal (`px 24.) "24px";
  t |> equal (`size (`percent 0., `percent 50.)) "0% 50%";
  t |> T.end_
end; 


test ~name:"css property - background" @@ fun t -> begin
  let background = Background.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (background ()) "initial";
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
  t |> equal (`px 12.5) "12.5px";
  t |> T.end_
end;


test ~name:"css property - border-spacing" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderSpacing.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
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
  let equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (BorderTop.make ()) "initial";
  t |> equal (BorderTop.make ~width:(`px 5.) ()) "5px";
  t |> equal (BorderTop.make ~width:(`px 5.) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-bottom" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (BorderBottom.make ()) "initial";
  t |> equal (BorderBottom.make ~width:(`px 5.) ()) "5px";
  t |> equal (BorderBottom.make ~width:(`px 5.) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-left" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (BorderLeft.make ()) "initial";
  t |> equal (BorderLeft.make ~width:(`px 5.) ()) "5px";
  t |> equal (BorderLeft.make ~width:(`px 5.) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-right" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (BorderRight.make ()) "initial";
  t |> equal (BorderRight.make ~width:(`px 5.) ()) "5px";
  t |> equal (BorderRight.make ~width:(`px 5.) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (Border.make ()) "initial";
  t |> equal (Border.make ~width:(`px 5.) ()) "5px";
  t |> equal (Border.make ~width:(`px 5.) ~color:`red ~style:`dashed ())
             "5px dashed red";
  t |> T.end_
end;


test ~name:"css property - border-top-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderTopColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> T.end_
end;


test ~name:"css property - border-right-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderRightColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> T.end_
end;


test ~name:"css property - border-bottom-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderBottomColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> T.end_
end;


test ~name:"css property - border-left-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderLeftColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> T.end_
end;


test ~name:"css property - border-top-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderTopStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `dotted "dotted";
  t |> equal `dashed "dashed";
  t |> equal `solid "solid";
  t |> T.end_
end;


test ~name:"css property - border-right-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderRightStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `dotted "dotted";
  t |> equal `dashed "dashed";
  t |> equal `solid "solid";
  t |> T.end_
end;


test ~name:"css property - border-bottom-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderBottomStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `dotted "dotted";
  t |> equal `dashed "dashed";
  t |> equal `solid "solid";
  t |> T.end_
end;


test ~name:"css property - border-left-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderLeftStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `dotted "dotted";
  t |> equal `dashed "dashed";
  t |> equal `solid "solid";
  t |> T.end_
end;


test ~name:"css property - border-top-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderTopWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `thin "thin";
  t |> equal `medium "medium";
  t |> equal `thick "thick";
  t |> equal (`px 12.5) "12.5px";
  t |> T.end_
end;


test ~name:"css property - border-right-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderRightWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `thin "thin";
  t |> equal `medium "medium";
  t |> equal `thick "thick";
  t |> equal (`px 12.5) "12.5px";
  t |> T.end_
end;


test ~name:"css property - border-bottom-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderBottomWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `thin "thin";
  t |> equal `medium "medium";
  t |> equal `thick "thick";
  t |> equal (`px 12.5) "12.5px";
  t |> T.end_
end;


test ~name:"css property - border-left-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> BorderLeftWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `thin "thin";
  t |> equal `medium "medium";
  t |> equal `thick "thick";
  t |> equal (`px 12.5) "12.5px";
  t |> T.end_
end;


test ~name:"css property - bottom" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Bottom.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 20.) "20px";
  t |> equal (`percent 80.) "80%";
  t |> T.end_
end;


test ~name:"css property - caption-side" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> CaptionSide.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `top "top";
  t |> equal `bottom "bottom";
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


test ~name:"css property - clip" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Clip.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`rect (`px 20., `auto, `auto, `auto)) "rect(20px, auto, auto, auto)";
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


test ~name:"css property - cue-after" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> CueAfter.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal (`uri "http://foo") "url(\"http://foo\")";
  t |> T.end_
end;


test ~name:"css property - cue-before" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> CueBefore.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal (`uri "http://foo") "url(\"http://foo\")";
  t |> T.end_
end;


test ~name:"css property - cue" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Cue.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`cue (`none, `none)) "none none";
  t |> equal (`cue (`inherit_, `uri "http://foo")) "inherit url(\"http://foo\")";
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
  t |> equal (`cursor_uri ([`uri "http://foo"], `auto))
             "url(\"http://foo\"), auto";
  t |> equal (`cursor_uri ([`uri "http://foo"; `uri "bar"], `auto))
             "url(\"http://foo\"), url(\"bar\"), auto";
  t |> T.end_
end;


test ~name:"css property - direction" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Direction.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `rtl "rtl";
  t |> equal `ltr "ltr";
  t |> T.end_
end;


test ~name:"css property - elevation" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Elevation.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `below "below";
  t |> equal `level "level";
  t |> equal `above "above";
  t |> equal `higher "higher";
  t |> equal `lower "lower";
  t |> equal (`deg 90.) "90deg";
  t |> equal (`rad 180.) "180rad";
  t |> equal (`grad 60.5) "60.5grad";
  t |> T.end_
end;


test ~name:"css property - empty-cells" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> EmptyCells.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `show "show";
  t |> equal `hide "hide";
  t |> T.end_
end;


test ~name:"css property - flex" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Flex.make_value |> Css_Property.show) b
  and equal' a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal' (Flex.make ~basis:(`percent 20.) ()) "20%";
  t |> equal' (Flex.make ~grow:2. ~shrink:3. ()) "2 3";
  t |> equal' (Flex.make ~grow:1. ~shrink:1. ~basis:(`px 400.) ()) "1 1 400px";
  t |> equal' (Flex.make ()) "initial";
  t |> T.end_
end;


test ~name:"css property - flex-basis" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FlexBasis.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`percent 20.) "20%";
  t |> equal (`px 20.5) "20.5px";
  t |> T.end_
end;


test ~name:"css property - flex-direction" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FlexDirection.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `row "row";
  t |> equal `row_reverse "row-reverse";
  t |> equal `column "column";
  t |> equal `column_reverse "column-reverse";
  t |> T.end_
end;


test ~name:"css property - flex-grow" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FlexGrow.make |> Css_Property.show) b
  in
  t |> equal 0. "0";
  t |> equal 1. "1";
  t |> T.end_
end;


test ~name:"css property - flex-wrap" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FlexWrap.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `nowrap "nowrap";
  t |> equal `wrap "wrap";
  t |> equal `wrap_reverse "wrap-reverse";
  t |> T.end_
end;


test ~name:"css property - flex-flow" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FlexFlow.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`flow (`row, `nowrap)) "row nowrap";
  t |> equal (`flow (`row_reverse, `wrap)) "row-reverse wrap";
  t |> equal (`flow (`column, `wrap_reverse)) "column wrap-reverse";
  t |> equal (`flow (`column_reverse, `wrap_reverse)) "column-reverse wrap-reverse";
  t |> T.end_
end;


test ~name:"css property - flex-shrink" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> FlexShrink.make |> Css_Property.show) b
  in
  t |> equal 0. "0";
  t |> equal 0.5 "0.5";
  t |> equal 1. "1";
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
  t |> equal `serif "serif";
  t |> equal `sans_serif "sans-serif";
  t |> equal `cursive "cursive";
  t |> equal `fantasy "fantasy";
  t |> equal `monospace "monospace";
  t |> equal (`font_name "Helvetica Neue") "\"Helvetica Neue\"";
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
  t |> equal (`px 20.) "20px";
  t |> equal (`rem 0.8) "0.8rem";
  t |> equal (`percent 80.) "80%";
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
  let equal a b t =
    t |> T.equal (a |> Font.make_value |> Css_Property.show) b
  and equal' a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `caption "caption";
  t |> equal `icon "icon";
  t |> equal `menu "menu";
  t |> equal `message_box "message-box";
  t |> equal `small_caption "small-caption";
  t |> equal `status_bar "status-bar";
  t |> equal' (Font.make ~style:`italic
                         ~variant:`small_caps
                         (`em 1.2) `serif)
              "italic small-caps 1.2em serif";
  t |> equal' (Font.make ~style:`italic
                         ~weight:`bold
                         ~line_height:(`percent 120.)
                         (`em 1.2) `sans_serif)
              "italic bold 1.2em /120% sans-serif";
  t |> T.end_
end;


test ~name:"css property - height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Height.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 20.) "20px";
  t |> equal (`percent 80.) "80%";
  t |> T.end_
end;


test ~name:"css property - justify-content" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> JustifyContent.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `flex_start "flex-start";
  t |> equal `flex_end "flex-end";
  t |> equal `center "center";
  t |> equal `space_between "space-between";
  t |> equal `space_around "space-around";
  t |> T.end_
end;


test ~name:"css property - left" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Left.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 20.) "20px";
  t |> equal (`percent 80.) "80%";
  t |> T.end_
end;


test ~name:"css property - letter-spacing" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> LetterSpacing.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 20.) "20px";
  t |> T.end_
end;


test ~name:"css property - line-height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> LineHeight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 20.) "20px";
  t |> equal (`percent 80.) "80%";
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
    t |> T.equal (a |> ListStyle.make_value |> Css_Property.show) b
  and equal' a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal' (ListStyle.make ()) "initial";
  t |> equal' (ListStyle.make ~type_:`circle ()) "circle";
  t |> equal' (ListStyle.make ~position:`inside ~type_:`circle ())
              "circle inside";
  t |> equal' (ListStyle.make ~image:(`uri "http://foo")
                              ~position:`inside
                              ~type_:`circle ())
              "circle inside url(\"http://foo\")";
  t |> T.end_
end;


test ~name:"css property - margin" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Margin.make_value |> Css_Property.show) b
  and equal' a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.) "12px";
  t |> equal' (Margin.make ~top:(`px 12.5)
                           ~right:`auto
                           ~bottom:(`px 14.)
                           ~left:`auto)
              "12.5px auto 14px auto";
  t |> T.end_
end;


test ~name:"css property - margin-top" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginTop.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-right" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginRight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-bottom" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginBottom.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - margin-left" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MarginLeft.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - max-height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MaxHeight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - max-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MaxWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - min-height" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MinHeight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - min-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> MinWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - opacity" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Opacity.make |> Css_Property.show) b
  in
  t |> equal 0. "0";
  t |> equal 0.8 "0.8";
  t |> T.end_
end;


test ~name:"css property - order" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Order.make |> Css_Property.show) b
  in
  t |> equal 0 "0";
  t |> equal 1 "1";
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


test ~name:"css property - outline-color" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> OutlineColor.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `invert "invert";
  t |> equal `red "red";
  t |> equal (`rgb (122, 231, 255)) "rgb(122, 231, 255)";
  t |> T.end_
end;


test ~name:"css property - outline-style" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> OutlineStyle.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `dotted "dotted";
  t |> equal `dashed "dashed";
  t |> equal `solid "solid";
  t |> T.end_
end;


test ~name:"css property - outline-width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> OutlineWidth.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `thin "thin";
  t |> equal `medium "medium";
  t |> equal `thick "thick";
  t |> equal (`px 12.5) "12.5px";
  t |> T.end_
end;


test ~name:"css property - outline" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Outline.make_value |> Css_Property.show) b
  and equal' a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal' (Outline.make ()) "initial";
  t |> equal' (Outline.make ~color:`red ~style:`dotted ~width:`thick ())
              "red dotted thick";
  t |> T.end_
end;


test ~name:"css property - overflow" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Overflow.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `visible "visible";
  t |> equal `hidden "hidden";
  t |> equal `scroll "scroll";
  t |> equal `auto "auto";
  t |> T.end_
end;


test ~name:"css property - padding-top" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PaddingTop.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - padding-right" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PaddingRight.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - padding-bottom" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PaddingBottom.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - padding-left" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PaddingLeft.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 21.) "21%";
  t |> T.end_
end;


test ~name:"css property - padding" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Padding.make_value |> Css_Property.show) b
  and equal' a b t =
    t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.) "12px";
  t |> equal' (Padding.make ~top:(`px 12.5)
                            ~right:`auto
                            ~bottom:(`px 14.)
                            ~left:`auto)
              "12.5px auto 14px auto";
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


test ~name:"css property - pause-after" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PauseAfter.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`ms 125.) "125ms";
  t |> equal (`s 5.) "5s";
  t |> T.end_
end;


test ~name:"css property - pause-before" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PauseBefore.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`ms 125.) "125ms";
  t |> equal (`s 5.) "5s";
  t |> T.end_
end;


test ~name:"css property - pause" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Pause.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`pause (`ms 125., `s 5.)) "125ms 5s";
  t |> T.end_
end;


test ~name:"css property - pitch-range" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PitchRange.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`range 105.) "105";
  t |> T.end_
end;


test ~name:"css property - pitch" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Pitch.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `x_low "x-low";
  t |> equal `low "low";
  t |> equal `medium "medium";
  t |> equal `high "high";
  t |> equal `x_high "x-high";
  t |> equal (`Hz 105.) "105Hz";
  t |> T.end_
end;


test ~name:"css property - play-during" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> PlayDuring.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `none "none";
  t |> equal (`uri "http://wikipedia.org") "url(\"http://wikipedia.org\")";
  t |> equal (`sound ((`uri "http://wikipedia.org"), `mix))
             "url(\"http://wikipedia.org\") mix";
  t |> T.end_
end;


test ~name:"css property - richness" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Richness.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`richness 80.) "80";
  t |> T.end_
end;

test ~name:"css property - size" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Size.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `auto "auto";
  t |> equal (`length (`mm 0.5, `mm 1.0)) "0.5mm 1mm";
  t |> T.end_
end;

test ~name:"css property - speak-header" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> SpeakHeader.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `once "once";
  t |> equal `always "always";
  t |> T.end_
end;


test ~name:"css property - speak-numeral" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> SpeakNumeral.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `digits "digits";
  t |> equal `continuous "continuous";
  t |> T.end_
end;


test ~name:"css property - speak-punctuation" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> SpeakPunctuation.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `code "code";
  t |> equal `none "none";
  t |> T.end_
end;


test ~name:"css property - speak" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Speak.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `normal "normal";
  t |> equal `none "none";
  t |> equal `spell_out "spell-out";
  t |> T.end_
end;


test ~name:"css property - speech-rate" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> SpeechRate.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `x_slow "x-slow";
  t |> equal `slow "slow";
  t |> equal `medium "medium";
  t |> equal `fast "fast";
  t |> equal `x_fast "x-fast";
  t |> equal `faster "faster";
  t |> equal `slower "slower";
  t |> equal (`rate 30.) "30";
  t |> T.end_
end;


test ~name:"css property - stress" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Stress.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`stress 30.) "30";
  t |> T.end_
end;


test ~name:"css property - table-layout" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TableLayout.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `auto "auto";
  t |> equal `fixed "fixed";
  t |> T.end_
end;


test ~name:"css property - text-align" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> TextAlign.make |> Css_Property.show) b in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `left "left";
  t |> equal `right "right";
  t |> equal `center "center";
  t |> equal `justify "justify";
  t |> T.end_
end;


test ~name:"css property - text-decoration" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TextDecoration.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `none "none";
  t |> equal `underline "underline";
  t |> equal `overline "overline";
  t |> equal `line_through "line-through";
  t |> equal `blink "blink";
  t |> T.end_
end; 


test ~name:"css property - text-indent" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TextIndent.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 12.) "12%";
  t |> T.end_
end;


test ~name:"css property - text-transform" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TextTransform.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `capitalize "capitalize";
  t |> equal `uppercase "uppercase";
  t |> equal `lowercase "lowercase";
  t |> equal `none "none";
  t |> T.end_
end;


test ~name:"css property - transition-delay" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TransitionDelay.make |> Css_Property.show) b
  in
  t |> equal (`ms 125.) "125ms";
  t |> equal (`s 5.) "5s";
  t |> T.end_
end;


test ~name:"css property - transition-duration" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TransitionDuration.make |> Css_Property.show) b
  in
  t |> equal (`ms 125.) "125ms";
  t |> equal (`s 5.) "5s";
  t |> T.end_
end;


test ~name:"css property - transition-property" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TransitionProperty.make |> Css_Property.show) b
  in
  t |> equal `all "all";
  t |> equal `none "none";
  t |> T.end_
end;


test ~name:"css property - transition-timing-function" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> TransitionTimingFunction.make |> Css_Property.show) b
  in
  t |> equal `linear "linear";
  t |> equal `ease "ease";
  t |> equal `ease_in "ease-in";
  t |> equal `ease_out "ease-out";
  t |> equal `ease_in_out "ease-in-out";
  t |> equal (`cubic_bezier (0.42, 0., 0.58, 1.)) "cubic-bezier(0.42, 0, 0.58, 1)";
  t |> T.end_
end;


test ~name:"css property - transition" @@ fun t -> begin
  let transition = Transition.make
  and equal a b t = t |> T.equal (a |> Css_Property.show) b
  in
  t |> equal (transition ()) "initial";
  t |> equal (transition ~property:`all ()) "all";
  t |> equal (transition ~duration:(`ms 0.) ~timing:`ease_in ()) "0ms ease-in";
  t |> equal (transition ~duration:(`s 1.) ~timing:`ease_in_out ~delay:(`ms 2.) ())
             "1s ease-in-out 2ms";
  t |> T.end_
end;


test ~name:"css property - unicode-bidi" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> UnicodeBidi.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `normal "normal";
  t |> equal `embed "embed";
  t |> equal `bidi_override "bidi-override";
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
  t |> equal (`px 12.5) "12.5px";
  t |> equal (`percent 12.) "12%";
  t |> equal `top "top";
  t |> equal `bottom "bottom";
  t |> T.end_
end;


test ~name:"css property - visibility" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Visibility.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `visible "visible";
  t |> equal `hidden "hidden";
  t |> equal `collapse "collapse";
  t |> T.end_
end;


test ~name:"css property - voice-family" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> VoiceFamily.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `male "male";
  t |> equal `female "female";
  t |> equal `child "child";
  t |> equal (`specific "") "initial";
  t |> equal (`specific "sexy robot") "\"sexy robot\"";
  t |> T.end_
end;


test ~name:"css property - volume" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Volume.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `silent "silent";
  t |> equal `x_soft "x-soft";
  t |> equal `soft "soft";
  t |> equal `medium "medium";
  t |> equal `loud "loud";
  t |> equal `x_loud "x-loud";
  t |> equal (`percent 20.) "20%";
  t |> equal (`volume 25.) "25";
  t |> T.end_
end;


test ~name:"css property - white-space" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> WhiteSpace.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal `normal "normal";
  t |> equal `pre "pre";
  t |> equal `nowrap "nowrap";
  t |> equal `pre_wrap "pre-wrap";
  t |> equal `pre_line "pre-line";
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


test ~name:"css property - width" @@ fun t -> begin
  let equal a b t =
    t |> T.equal (a |> Width.make |> Css_Property.show) b
  in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`px 20.) "20px";
  t |> equal (`percent 80.) "80%";
  t |> T.end_
end;


module Ruby = struct
  test ~name:"css property - ruby-align" @@ fun t -> begin
    let equal a b t =
      t |> T.equal (a |> Ruby.RubyAlign.make |> Css_Property.show) b
    in
    t |> equal `inherit_ "inherit";
    t |> equal `initial "initial";
    t |> equal `unset "unset";
    t |> equal `start "start";
    t |> equal `center "center";
    t |> equal `space_around "space-around";
    t |> equal `space_between "space-between";
    t |> T.end_
  end;

  test ~name:"css property - ruby-merge" @@ fun t -> begin
    let equal a b t =
      t |> T.equal (a |> Ruby.RubyMerge.make |> Css_Property.show) b
    in
    t |> equal `inherit_ "inherit";
    t |> equal `initial "initial";
    t |> equal `unset "unset";
    t |> equal `separate "separate";
    t |> equal `collapse "collapse";
    t |> equal `auto "auto";
    t |> T.end_
  end;

  test ~name:"css property - ruby-position" @@ fun t -> begin
    let equal a b t =
      t |> T.equal (a |> Ruby.RubyPosition.make |> Css_Property.show) b
    in
    t |> equal `inherit_ "inherit";
    t |> equal `initial "initial";
    t |> equal `unset "unset";
    t |> equal (`position (`over, `left)) "over left";
    t |> equal (`position (`under, `left)) "under left";
    t |> equal (`position (`inter_character, `left)) "inter-character left";
    t |> equal (`position (`over, `right)) "over right";
    t |> equal (`position (`under, `right)) "under right";
    t |> equal (`position (`inter_character, `right)) "inter-character right";
    t |> T.end_
  end;
end
