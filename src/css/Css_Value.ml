module Global = struct
  (** {{: https://www.w3.org/TR/css-values-3/#common-keywords } CSS-wide keywords} *)

  type t =
    [ `inherit_ [@bs.as "inherit"] | `initial | `unset ]
    [@@bs.deriving jsConverter]

  let show = tToJs
end

module Angle = struct
  type t = [ `angle of float * Css_Unit.Angle.t ]

  let show (`angle (amount, unit_): t): string =
    Js.Float.toString amount ^ Css_Unit.Angle.tToJs unit_
end

module Color = struct
  (** {{: https://www.w3.org/TR/css-color-3 } Color} *)

  type basic_color =
    [
    | `aqua | `black | `blue | `fuchsia | `gray | `green | `lime | `maroon 
    | `navy | `olive | `purple | `red | `silver | `teal | `white | `yellow
    ]
    [@@bs.deriving jsConverter]

  type extended_color =
    [
    | `aliceblue | `antiquewhite | `aqua | `aquamarine | `azure | `beige
    | `bisque | `black | `blanchedalmond | `blue | `blueviolet | `brown
    | `burlywood | `cadetblue | `chartreuse | `chocolate | `coral
    | `cornflowerblue | `cornsilk | `crimson | `cyan | `darkblue | `darkcyan
    | `darkgoldenrod | `darkgray | `darkgreen | `darkgrey | `darkkhaki
    | `darkmagenta | `darkolivegreen | `darkorange | `darkorchid | `darkred
    | `darksalmon | `darkseagreen | `darkslateblue | `darkslategray
    | `darkslategrey | `darkturquoise | `darkviolet | `deeppink | `deepskyblue
    | `dimgray | `dimgrey | `dodgerblue | `firebrick | `floralwhite
    | `forestgreen | `fuchsia | `gainsboro | `ghostwhite | `gold | `goldenrod
    | `gray | `green | `greenyellow | `grey | `honeydew | `hotpink | `indianred
    | `indigo | `ivory | `khaki | `lavender | `lavenderblush | `lawngreen
    | `lemonchiffon | `lightblue | `lightcoral | `lightcyan
    | `lightgoldenrodyellow | `lightgray | `lightgreen | `lightgrey
    | `lightpink | `lightsalmon | `lightseagreen | `lightskyblue
    | `lightslategray | `lightslategrey | `lightsteelblue | `lightyellow
    | `lime | `limegreen | `linen | `magenta | `maroon | `mediumaquamarine
    | `mediumblue | `mediumorchid | `mediumpurple | `mediumseagreen
    | `mediumslateblue | `mediumspringgreen | `mediumturquoise
    | `mediumvioletred | `midnightblue | `mintcream | `mistyrose | `moccasin
    | `navajowhite | `navy | `oldlace | `olive | `olivedrab | `orange
    | `orangered | `orchid | `palegoldenrod | `palegreen | `paleturquoise
    | `palevioletred | `papayawhip | `peachpuff | `peru | `pink | `plum
    | `powderblue | `purple | `red | `rosybrown | `royalblue | `saddlebrown
    | `salmon | `sandybrown | `seagreen | `seashell | `sienna | `silver
    | `skyblue | `slateblue | `slategray | `slategrey | `snow | `springgreen
    | `steelblue | `tan | `teal | `thistle | `tomato | `turquoise | `violet
    | `wheat | `white | `whitesmoke | `yellow | `yellowgreen 
    ]
    [@@bs.deriving jsConverter]

  type rgb = [ `rgb of int * int * int | `rgba of int * int * int * float ]
  type hsl = [ `hsl of int * int * int | `hsla of int * int * int * float ]

  type t = [ basic_color | extended_color | rgb | hsl ]

  let show: t -> string = function
  | ( `aqua | `black | `blue | `fuchsia | `gray | `green | `lime | `maroon 
    | `navy | `olive | `purple | `red | `silver | `teal | `white | `yellow
    ) as basic_color ->
    basic_colorToJs basic_color
  | ( `aliceblue | `antiquewhite | `aquamarine | `azure | `beige
    | `bisque | `blanchedalmond | `blueviolet | `brown
    | `burlywood | `cadetblue | `chartreuse | `chocolate | `coral
    | `cornflowerblue | `cornsilk | `crimson | `cyan | `darkblue | `darkcyan
    | `darkgoldenrod | `darkgray | `darkgreen | `darkgrey | `darkkhaki
    | `darkmagenta | `darkolivegreen | `darkorange | `darkorchid | `darkred
    | `darksalmon | `darkseagreen | `darkslateblue | `darkslategray
    | `darkslategrey | `darkturquoise | `darkviolet | `deeppink | `deepskyblue
    | `dimgray | `dimgrey | `dodgerblue | `firebrick | `floralwhite
    | `forestgreen | `gainsboro | `ghostwhite | `gold | `goldenrod
    | `greenyellow | `grey | `honeydew | `hotpink | `indianred
    | `indigo | `ivory | `khaki | `lavender | `lavenderblush | `lawngreen
    | `lemonchiffon | `lightblue | `lightcoral | `lightcyan
    | `lightgoldenrodyellow | `lightgray | `lightgreen | `lightgrey
    | `lightpink | `lightsalmon | `lightseagreen | `lightskyblue
    | `lightslategray | `lightslategrey | `lightsteelblue | `lightyellow
    | `limegreen | `linen | `magenta | `mediumaquamarine
    | `mediumblue | `mediumorchid | `mediumpurple | `mediumseagreen
    | `mediumslateblue | `mediumspringgreen | `mediumturquoise
    | `mediumvioletred | `midnightblue | `mintcream | `mistyrose | `moccasin
    | `navajowhite | `oldlace | `olivedrab | `orange
    | `orangered | `orchid | `palegoldenrod | `palegreen | `paleturquoise
    | `palevioletred | `papayawhip | `peachpuff | `peru | `pink | `plum
    | `powderblue | `rosybrown | `royalblue | `saddlebrown
    | `salmon | `sandybrown | `seagreen | `seashell | `sienna
    | `skyblue | `slateblue | `slategray | `slategrey | `snow | `springgreen
    | `steelblue | `tan | `thistle | `tomato | `turquoise | `violet
    | `wheat | `whitesmoke | `yellowgreen  
    ) as extended_color ->
    extended_colorToJs extended_color
  | `rgb (r, g, b) ->
    "rgb("^ string_of_int r ^", "^ string_of_int g ^", "^ string_of_int b ^")"
  | `rgba (r, g, b, a) ->
    "rgba("^ string_of_int r ^", "^ string_of_int g ^", "^ string_of_int b
    ^", "^ Js.Float.toString a ^")"
  | `hsl (h, s, l) ->
    "hsl("^ string_of_int h ^", "^ string_of_int s ^", "^ string_of_int l ^")"
  | `hsla (h, s, l, a) ->
    "hsla("^ string_of_int h ^", "^ string_of_int s ^", "^ string_of_int l
    ^", "^ Js.Float.toString a ^")"
end

module Uri = struct
  (** {{: https://www.w3.org/TR/CSS22/syndata.html#value-def-uri } URIs} *)

  type t = [ `uri of string ]

  let show (`uri uri: t): string = "url(\""^ uri ^"\")"
end

module Length = struct
  (** {{: https://www.w3.org/TR/css-values-3/#lengths } Length} *)

  type t = [ `length of float * Css_Unit.Length.t ]

  let show (`length (amount, unit_): t): string =
    Js.Float.toString amount ^ Css_Unit.Length.show unit_
end

module Percent = struct
  (** {{: https://www.w3.org/TR/css-values-3/#percentages } Percent} *)

  type t = [ `percent of int ]

  let show (`percent amount: t): string = Js.Int.toString amount ^"%"
end

module LengthPercent = struct
  type t = [ Global.t | Length.t | Percent.t | `auto ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Global.show global
  | `length _ as length ->
    Length.show length
  | `percent _ as percent ->
    Percent.show percent
  | `auto -> "auto"
end

module Position = struct
  (** {{: https://www.w3.org/TR/css-values-3/#position } Position } *)

  type length_percent = [ Length.t | Percent.t ]

  type horizontal = [ `left | `right ] [@@bs.deriving jsConverter]
  type vertical = [ `top | `bottom ] [@@bs.deriving jsConverter]

  type horizontal2 = [ horizontal | `center | length_percent ]
  type vertical2 = [ vertical | `center | length_percent ]

  type any = [ horizontal | vertical | `center | length_percent ]

  let anyToJs: any -> string = function
  | `left -> "left" | `right -> "right" | `top -> "top" | `bottom -> "bottom"
  | `center -> "center" | `length _ as length -> Length.show length
  | `percent _ as percent -> Percent.show percent

  type t =
    [
    | horizontal | vertical | `center | `value2 of horizontal2 * vertical2
    | `value4 of horizontal * length_percent * vertical * length_percent 
    ]

  let show: t -> string = function
  | ( `left | `right | `top | `bottom | `center ) as value ->
    anyToJs value
  | `value2 (h, v) ->
    anyToJs (h :> any) ^" "^ anyToJs (v :> any)
  | `value4 (h1, h2, v1, v2) ->
    anyToJs (h1 :> any) ^" "^ anyToJs (h2 :> any) ^" "^
    anyToJs (v1 :> any) ^" "^ anyToJs (v2 :> any)
end


(* TODO: remove *)
module Keyword = struct
  type t =
    [
    | `none | `left | `right | `both
    | `inline_start [@bs.as "inline-start"]
    | `inline_end [@bs.as "inline-end"]
    ]
    [@@bs.deriving jsConverter]
end

(* TODO remove or find the specs for these *)
module ParentRelative = struct
  (** {{: https://www.w3.org/TR/CSS22/propidx.html } Property table} *)

  module Convert = struct
    type t =
      [
      | `baseline | `sub | `super | `text_top [@bs.as "text-top"]
      | `text_bottom [@bs.as "text-bottom"] | `middle
      ]
      [@@bs.deriving jsConverter]
  end

  type t =
    [
    | `baseline | `sub | `super | `text_top | `text_bottom | `middle
    | `length of Css_Unit.Length.t | `percent of Css_Unit.Percent.t
    ]

  let show: t -> string = function
  | ( `baseline | `sub | `super | `text_top | `text_bottom | `middle ) as t ->
    Convert.tToJs t
  | `length distance -> Css_Unit.Length.show distance
  | `percent percent -> Css_Unit.Percent.tToJs percent
end

(* TODO: remove *)
module LineRelative = struct
  (** {{: https://www.w3.org/TR/CSS22/propidx.html } Property table} *)

  type t = [ `top | `bottom ] [@@bs.deriving jsConverter]
end

(* TODO: is this <length> ? *)
module Unit = struct
  type t = float * Css_Unit.t

  let show ((amount, unit'): t): string =
    let amount' =
      amount |> string_of_float |> Js.String.replaceByRe [%re "/\.$/"] ""
    in
    amount' ^ Css_Unit.show unit'
end

module BackgroundColor = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} *)

  type t = [ Global.t | Color.t | `transparent ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Global.show global
  | ( `aliceblue | `antiquewhite | `aqua | `aquamarine | `azure | `beige
    | `bisque | `black | `blanchedalmond | `blue | `blueviolet | `brown
    | `burlywood | `cadetblue | `chartreuse | `chocolate | `coral
    | `cornflowerblue | `cornsilk | `crimson | `cyan | `darkblue | `darkcyan
    | `darkgoldenrod | `darkgray | `darkgreen | `darkgrey | `darkkhaki
    | `darkmagenta | `darkolivegreen | `darkorange | `darkorchid | `darkred
    | `darksalmon | `darkseagreen | `darkslateblue | `darkslategray
    | `darkslategrey | `darkturquoise | `darkviolet | `deeppink | `deepskyblue
    | `dimgray | `dimgrey | `dodgerblue | `firebrick | `floralwhite
    | `forestgreen | `fuchsia | `gainsboro | `ghostwhite | `gold | `goldenrod
    | `gray | `green | `greenyellow | `grey | `honeydew | `hotpink | `indianred
    | `indigo | `ivory | `khaki | `lavender | `lavenderblush | `lawngreen
    | `lemonchiffon | `lightblue | `lightcoral | `lightcyan
    | `lightgoldenrodyellow | `lightgray | `lightgreen | `lightgrey
    | `lightpink | `lightsalmon | `lightseagreen | `lightskyblue
    | `lightslategray | `lightslategrey | `lightsteelblue | `lightyellow
    | `lime | `limegreen | `linen | `magenta | `maroon | `mediumaquamarine
    | `mediumblue | `mediumorchid | `mediumpurple | `mediumseagreen
    | `mediumslateblue | `mediumspringgreen | `mediumturquoise
    | `mediumvioletred | `midnightblue | `mintcream | `mistyrose | `moccasin
    | `navajowhite | `navy | `oldlace | `olive | `olivedrab | `orange
    | `orangered | `orchid | `palegoldenrod | `palegreen | `paleturquoise
    | `palevioletred | `papayawhip | `peachpuff | `peru | `pink | `plum
    | `powderblue | `purple | `red | `rosybrown | `royalblue | `saddlebrown
    | `salmon | `sandybrown | `seagreen | `seashell | `sienna | `silver
    | `skyblue | `slateblue | `slategray | `slategrey | `snow | `springgreen
    | `steelblue | `tan | `teal | `thistle | `tomato | `turquoise | `violet
    | `wheat | `white | `whitesmoke | `yellow | `yellowgreen
    | `rgb _ | `rgba _ | `hsl _ | `hsla _
    ) as color ->
    Color.show color
  | `transparent -> "transparent"
end

module BackgroundImage = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background image} *)

  type t = [ Global.t | Uri.t | `none ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Global.show global
  | `uri _ as uri -> Uri.show uri
  | `none -> "none"
end

module BackgroundRepeat = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background repeat} *)

  type value =
    [ `repeat | `repeat_x | `repeat_y | `no_repeat ] [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Global.show global
  | ( `repeat | `repeat_x | `repeat_y | `no_repeat ) as value ->
    value |> valueToJs |> Util.underscore_to_dash
end

module BackgroundAttachment = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background attachment} *)

  type value = [ `scroll | `fixed ] [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Global.show global
  | ( `scroll | `fixed ) as value -> valueToJs value
end

module BackgroundPosition = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-position } Background position} *)

  type t = [ Global.t | Position.t ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Global.show global
  | ( `left | `right | `top | `bottom | `center | `value2 _ | `value4 _
    ) as position ->
    Position.show position
end

module BorderColor = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-color } Border color} *)
 
  type t = BackgroundColor.t 

  let show: t -> string = BackgroundColor.show
end

module BorderWidth = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#value-def-border-width } Border width} *)

  type value = [ `thin | `medium | `thick ] [@@bs.deriving jsConverter]
  type t = [ Global.t | Length.t | `thin | `medium | `thick ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Global.show global
  | ( `thin | `medium | `thick ) as value ->
    valueToJs value
  | `length _ as length -> Length.show length
end

module BorderStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-style } Border Style} *)

  type value =
    [
    | `none   | `hidden | `dotted | `dashed | `solid
    | `double | `groove | `ridge  | `inset  | `outset
    ]
    [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | ( `inherit_ | `initial | `unset ) as global ->
    Global.show global
  | ( `none   | `hidden | `dotted | `dashed | `solid
    | `double | `groove | `ridge  | `inset  | `outset
    ) as value ->
    valueToJs value
end

module FontFamily = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font family} *)

  type _value =
    [ `serif | `sans_serif | `cursive | `fantasy | `monospace ]
    [@@bs.deriving jsConverter]

  type value = [ `font_name of string | _value ]

  type t =
    [ Global.t | `font of value | `fonts of value * value list ]

  let show_value: value -> string = function
  | `font_name font_name ->
    "\""^ font_name ^"\""
  | (`serif | `sans_serif | `cursive | `fantasy | `monospace) as value ->
    _valueToJs value |> Util.underscore_to_dash

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | `font font ->
    show_value font
  | `fonts (font, _fonts) ->
    font :: _fonts
    |. Belt.List.map show_value
    |> Js.List.toVector
    |> Js.Array.joinWith ", "
end

module FontSize = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-size } Font size} *)

  type absolute_size =
    [ `xx_small | `x_small | `small | `medium | `large | `x_large | `xx_large ]
    [@@bs.deriving jsConverter]

  type relative_size = [ `larger | `smaller ] [@@bs.deriving jsConverter]

  type t =
    [
    | Global.t | Length.t | Percent.t
    | absolute_size | relative_size
    ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | ( `xx_small | `x_small | `small | `medium | `large | `x_large | `xx_large
    ) as value ->
    absolute_sizeToJs value |> Util.underscore_to_dash
  | (`larger | `smaller) as value -> 
    relative_sizeToJs value
  | `length _ as length ->
    Length.show length
  | `percent _ as percent ->
    Percent.show percent
end

module FontStyle = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-style } Font style} *)

  type value = [ `normal | `italic | `oblique ] [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | (`normal | `italic | `oblique) as value -> 
    valueToJs value
end

module FontVariant = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-variant } Font variant} *)

  type value =
    [ `normal | `small_caps [@bs.as "small-caps"] ] [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | (`normal | `small_caps) as value -> 
    valueToJs value
end

module FontWeight = struct
  (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-weight } Font Weight} *)

  type value =
    [
    | `normal | `bold | `bolder | `lighter
    | `w100 [@bs.as "100"] | `w200 [@bs.as "200"] | `w300 [@bs.as "300"]
    | `w400 [@bs.as "400"] | `w500 [@bs.as "500"] | `w600 [@bs.as "600"]
    | `w700 [@bs.as "700"] | `w800 [@bs.as "800"] | `w900 [@bs.as "900"]
    ]
    [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | ( `normal | `bold | `bolder | `lighter
    | `w100 | `w200 | `w300 | `w400 | `w500 | `w600 | `w700 | `w800 | `w900
    ) as value ->
    valueToJs value
end

module LineHeight = struct
  (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-line-height } Line Height} *)

  (* NOTE: `<number>` is the same as using `em` so it's ommitted *)
  type t = [ Global.t | Length.t | Percent.t | `normal ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | `length _ as length ->
    Length.show length
  | `percent _ as percent ->
    Percent.show percent
  | `normal -> "normal"
end

module ListStyleImage = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#propdef-list-style-image } List-style-image} *)

  type t = BackgroundImage.t

  let show = BackgroundImage.show
end

module ListStylePosition = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#propdef-list-style-position } List-style-position} *)

  type value = [ `inside | `outside ] [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | (`inside | `outside) as value ->
    valueToJs value
end

module ListStyleType = struct
  (** {{: https://www.w3.org/TR/CSS22/generate.html#propdef-list-style-type } List-style-type} *)

  type value =
    [
    | `disc | `circle | `square | `decimal
    | `decimal_leading_zero [@bs.as "decimal-leading-zero"]
    | `lower_roman [@bs.as "lower-roman"] | `upper_roman [@bs.as "upper-roman"]
    | `lower_greek [@bs.as "lower-greek"] | `lower_latin [@bs.as "lower-latin"]
    | `upper_latin [@bs.as "upper-latin"] | `armenian | `georgian
    | `lower_alpha [@bs.as "lower-alpha"] | `upper_alpha [@bs.as "upper-alpha"]
    | `none
    ]
    [@@bs.deriving jsConverter]

  type t = [ Global.t | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Global.show value
  | ( `disc | `circle | `square | `decimal | `decimal_leading_zero
    | `lower_roman | `upper_roman | `lower_greek | `lower_latin | `upper_latin
    | `armenian | `georgian | `lower_alpha | `upper_alpha | `none
    ) as value ->
    valueToJs value
end