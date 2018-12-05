(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-color } Color} *)

type 'a t = [> Css_Property.color ] as 'a

type value = [ Css_Value.Global.t | Css_Value.Color.t ]

let show: value -> string = function
| ( `inherit_ | `initial | `unset ) as global ->
  Css_Value.Global.show global
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
  Css_Value.Color.show color

external _make: string -> Css_Property.Type.color Css_Property.t = "%identity"

let make value: 'a t = `color (_make @@ show value)
