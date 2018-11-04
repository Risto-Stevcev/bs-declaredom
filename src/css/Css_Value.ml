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

  let show (`percent amount: t): string =
    Js.Int.toString amount ^"%"
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
