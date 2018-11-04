(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background Color} *)

type 'a t = [> Css.Property.background_color ] as 'a

type value = [ Css_Value.Global.t | Css_Value.Color.t | `transparent ]

let valueToJs: value -> string = function
| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
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
| `transparent -> "transparent"

external to_json:
  Css.Property.background_color Css.Property.t ->
  <backgroundColor: string> Js.t = "%identity"

external _make:
  backgroundColor:string ->
  Css.Property.Type.background_color Css.Property.t = "" [@@bs.obj]

let make value: 'a t =
  `background_color (_make ~backgroundColor:(valueToJs value))
