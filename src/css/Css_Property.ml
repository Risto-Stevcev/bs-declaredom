(**
 This module defines the CSS properties

 The types correspond to the {{: https://www.w3.org/TR/CSS2/about.html#applies-to } applies to} 
 description for styles for which display property is required for it to render

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } CSS 2.2 full property table} for reference, and the

 {{: https://www.w3.org/TR/CSS22/sample.html } Default styles}
 *)

type 'style t

module Type = struct
  type azimuth and background_attachment and background_color
   and background_image and background_position and background_repeat
   and background and border_collapse and border_color and border_style
   and border_width and border_top and border_right and border_bottom
   and border_left and border and bottom and clear and cursor and float_
   and font_family and font_size and font_style and font_variant
   and font_weight and font and height and left and letter_spacing
   and line_height and list_style_image and list_style_position
   and list_style_type and list_style

   type clip

   and color
   and text_align
   and vertical_align
end

type azimuth = [ `azimuth of Type.azimuth t ]
 and background_attachment =
       [ `background_attachment of Type.background_attachment t ]
 and background_color = [ `background_color of Type.background_color t ]
 and background_image = [ `background_image of Type.background_image t ]
 and background_position =
       [ `background_position of Type.background_position t ]
 and background_repeat = [ `background_repeat of Type.background_repeat t ]
 and background = [ `background of Type.background t ]
 and border_collapse = [ `border_collapse of Type.border_collapse t ]
 and border_color = [ `border_color of Type.border_color t ]
 and border_width = [ `border_width of Type.border_width t ]
 and border_style = [ `border_style of Type.border_style t ]
 and border_top = [ `border_top of Type.border_top t ]
 and border_bottom = [ `border_bottom of Type.border_bottom t ]
 and border_left = [ `border_left of Type.border_left t ]
 and border_right = [ `border_right of Type.border_right t ]
 and border = [ `border of Type.border t ]
 and bottom = [ `bottom of Type.bottom t ]
 and clear = [ `clear of Type.clear t ]
 and cursor = [ `cursor of Type.cursor t ]
 and float_ = [ `float of Type.float_ t ]
 and font_family = [ `font_family of Type.font_family t ]
 and font_size = [ `font_size of Type.font_size t ]
 and font_style = [ `font_style of Type.font_style t ]
 and font_variant = [ `font_variant of Type.font_variant t ]
 and font_weight = [ `font_weight of Type.font_weight t ]
 and font = [ `font of Type.font t ]
 and height = [ `height of Type.height t ]
 and left = [ `left of Type.left t ]
 and letter_spacing = [ `letter_spacing of Type.letter_spacing t ]
 and line_height = [ `line_height of Type.line_height t ]
 and list_style_image = [ `list_style_image of Type.list_style_image t ]
 and list_style_position =
   [ `list_style_position of Type.list_style_position t ]
 and list_style_type = [ `list_style_type of Type.list_style_type t ]
 and list_style = [ `list_style of Type.list_style t ]


type clip = [ `clip of Type.clip t ]

 and color = [ `color of Type.color t ]
 and text_align = [ `text_align of Type.text_align t ]
 and vertical_align = [ `vertical_align of Type.vertical_align t ]


(** {{: https://www.w3.org/TR/CSS22/sample.html } Default styles} *)
(* TODO: wrap these in AppliesTo module *)

type any =
  [
  | azimuth | background_attachment | background_color
  | background_image | background_position | background_repeat | background
  | border_color | border_width | border_style | border_top | border_bottom
  | border_left | border_right | border | bottom | color | float_ | cursor
  | font_family | font_size | font_style | font_variant | font_weight | font
  | height | left | letter_spacing | line_height
  ]
type block = [ text_align | clear | any ]

(**
 * {{: https://www.w3.org/TR/css-display-3/#replaced-element } Replaced element} 
 * ({{: https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element } see list})
 *)
type replaced = height

(** Non-replaced inline elements *)
type non_replaced = [ vertical_align | any ]
type inline = [ replaced | non_replaced ]

type table = border_collapse
type inline_table = border_collapse
type table_cell = [ vertical_align | any ]
type list_item =
  [ list_style_image | list_style_position | list_style_type | list_style ]
type display =
  [ block | inline | table | inline_table | table_cell | list_item ]



module MediaGroup = struct
  (** {{: https://www.w3.org/TR/CSS22/media.html#media-groups } Media groups} *)

  type aural = azimuth
  type interactive = cursor
  type visual =
    [
    | background_attachment | background_color | background_image
    | background_position | background_repeat | background | border_collapse
    | border_color | border_width | border_style | border_top | border_bottom
    | border_left | border_right | border | bottom | clear | color | cursor
    | font_family | font_size | font_style | font_variant | font_weight | font
    | height | left | letter_spacing | line_height | list_style_image
    | list_style_position | list_style_type | list_style
    ]
end


module MediaType = struct
  (** {{: https://www.w3.org/TR/CSS22/media.html#media-groups } Media type} *)

  type handheld = MediaGroup.visual
  type print = MediaGroup.visual
  type projection = MediaGroup.visual
  type screen = MediaGroup.visual
  type tty = MediaGroup.visual
  type tv = MediaGroup.visual
end


module Convert = struct
  external show: 'a t -> string = "%identity"
end


let show: display -> string = function
| `azimuth x               -> Convert.show x
| `background_attachment x -> Convert.show x
| `background_color x      -> Convert.show x
| `background_image x      -> Convert.show x
| `background_position x   -> Convert.show x
| `background_repeat x     -> Convert.show x
| `background x            -> Convert.show x
| `border_collapse x       -> Convert.show x
| `border_color x          -> Convert.show x
| `border_width x          -> Convert.show x
| `border_style x          -> Convert.show x
| `border_top x            -> Convert.show x
| `border_bottom x         -> Convert.show x
| `border_left x           -> Convert.show x
| `border_right x          -> Convert.show x
| `border x                -> Convert.show x
| `bottom x                -> Convert.show x
| `clear x                 -> Convert.show x
| `color x                 -> Convert.show x
| `cursor x                -> Convert.show x
| `float x                 -> Convert.show x
| `font_family x           -> Convert.show x
| `font_size x             -> Convert.show x
| `font_style x            -> Convert.show x
| `font_variant x          -> Convert.show x
| `font_weight x           -> Convert.show x
| `font x                  -> Convert.show x
| `height x                -> Convert.show x
| `left x                  -> Convert.show x
| `letter_spacing x        -> Convert.show x
| `line_height x           -> Convert.show x
| `list_style_image x      -> Convert.show x
| `list_style_position x   -> Convert.show x
| `list_style_type x       -> Convert.show x
| `list_style x            -> Convert.show x
| `text_align x            -> Convert.show x
| `vertical_align x        -> Convert.show x
