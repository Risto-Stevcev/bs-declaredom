open BsTape
open Css_Media.Fn;;


Test.test ~name:"@media discrete features" @@ fun t -> begin
  let equal x y t = t |> T.equal (Css.Media.show x) y in 

  t |> equal (media [orientation `portrait]) "@media (orientation: portrait)";
  t |> equal (media [orientation `landscape]) "@media (orientation: landscape)";

  t |> equal (media [scan `interlace]) "@media (scan: interlace)";
  t |> equal (media [scan `progressive]) "@media (scan: progressive)";

  t |> equal (media [update `none]) "@media (update: none)";
  t |> equal (media [update `slow]) "@media (update: slow)";
  t |> equal (media [update `fast]) "@media (update: fast)";

  t |> equal (media [overflow_block `none]) "@media (overflow-block: none)";
  t |> equal (media [overflow_block `scroll]) "@media (overflow-block: scroll)";
  t |> equal (media [overflow_block `optional_paged])
             "@media (overflow-block: optional-paged)";
  t |> equal (media [overflow_block `paged]) "@media (overflow-block: paged)";

  t |> equal (media [overflow_inline `none]) "@media (overflow-inline: none)";
  t |> equal (media [overflow_inline `scroll])
             "@media (overflow-inline: scroll)";

  t |> equal (media [color_gamut `srgb]) "@media (color-gamut: srgb)";
  t |> equal (media [color_gamut `p3]) "@media (color-gamut: p3)";
  t |> equal (media [color_gamut `rec2020]) "@media (color-gamut: rec2020)";
 
  t |> equal (media [pointer `none]) "@media (pointer: none)";
  t |> equal (media [pointer `coarse]) "@media (pointer: coarse)";
  t |> equal (media [pointer `fine]) "@media (pointer: fine)";

  t |> equal (media [any_pointer `none]) "@media (any-pointer: none)";
  t |> equal (media [any_pointer `coarse]) "@media (any-pointer: coarse)";
  t |> equal (media [any_pointer `fine]) "@media (any-pointer: fine)";

  t |> equal (media [hover `none]) "@media (hover: none)";
  t |> equal (media [hover `hover]) "@media (hover: hover)";

  t |> equal (media [any_hover `none]) "@media (any-hover: none)";
  t |> equal (media [any_hover `hover]) "@media (any-hover: hover)";

  t |> T.end_
end;;


Test.test ~name:"@media range features" @@ fun t -> begin
  let equal x y t = t |> T.equal (Css.Media.show x) y in 

  t |> equal (media [resolution 12. `dpi]) "@media (resolution: 12dpi)";
  t |> equal (media [width 1024. `px]) "@media (width: 1024px)";
  t |> equal (media [height 768. `px]) "@media (height: 768px)";
  t |> equal (media [aspect_ratio 4 3]) "@media (aspect-ratio: 4/3)";
  t |> equal (media [color 1]) "@media (color: 1)";
  t |> equal (media [color_index 1]) "@media (color-index: 1)";
  t |> equal (media [monochrome 1]) "@media (monochrome: 1)";
  t |> equal (media [device_width 1024. `px]) "@media (device-width: 1024px)";
  t |> equal (media [device_height 768. `px]) "@media (device-height: 768px)";

  t |> equal (media [min_width 1024. `px]) "@media (min-width: 1024px)";
  t |> equal (media [max_width 1024. `px]) "@media (max-width: 1024px)";

  t |> equal (media [width ~t:`lt 1024. `px]) "@media (width < 1024px)";
  t |> equal (media [width ~t:`le 1024. `px]) "@media (width <= 1024px)";
  t |> equal (media [width ~t:`eq 1024. `px]) "@media (width = 1024px)";
  t |> equal (media [width ~t:`ge 1024. `px]) "@media (width >= 1024px)";
  t |> equal (media [width ~t:`gt 1024. `px]) "@media (width > 1024px)";

  t |> T.end_
end;


Test.test ~name:"@media modifiers" @@ fun t -> begin
  let equal x y t = t |> T.equal (Css.Media.show x) y in 

  t |> equal [modifier @@ `only `screen] "@media only screen";
  t |> equal [modifier `print] "@media print";
  t |> equal [modifier @@ `not `print] "@media not print";
  t |> equal [query ~t:(`only `screen) @@ width 3. `px]
             "@media only screen and (width: 3px)";

  t |> T.end_
end;


Test.test ~name:"@media combinators" @@ fun t -> begin
  let equal x y t = t |> T.equal (Css.Media.show x) y in 

  t |> equal [modifier `print; modifier `screen] "@media print, screen";
  t |> equal [modifier `print; query @@ max_width 1024. `px]
             "@media print, (max-width: 1024px)";

  t |> T.end_
end;
