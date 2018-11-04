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
   and background

   and clear
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



type clear = [ `clear of Type.clear t ]
 and color = [ `color of Type.color t ]
 and text_align = [ `text_align of Type.text_align t ]
 and vertical_align = [ `vertical_align of Type.vertical_align t ]


(** {{: https://www.w3.org/TR/CSS22/sample.html } Default styles} *)

type any =
  [
  | color | azimuth | background_attachment | background_color
  | background_image | background_position | background_repeat
  ]
type block = [ text_align | clear | any ]
type inline = [ vertical_align | any ]
type table_cell = [ vertical_align | any ]
type display = [ block | inline | table_cell ]


module MediaGroup = struct
  (** {{: https://www.w3.org/TR/CSS22/media.html#media-groups } Media groups} *)

  type aural = azimuth
  type visual =
    [
    | clear | color | background_attachment | background_color
    | background_image | background_position | background_repeat
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
  external to_dict: 'a t -> string Js.Dict.t = "%identity"

  let to_string (property: 'a t): string =
    property
    |> to_dict
    |> Js.Dict.entries
    |. Belt.Array.map (fun (key, value) -> key ^": " ^ value)
    |> Js.Array.joinWith ";\n"
    |> Util.camel_to_dash
end


let show: display -> string = function
| `azimuth x               -> Convert.to_string x
| `background_attachment x -> Convert.to_string x
| `background_color x      -> Convert.to_string x
| `background_image x      -> Convert.to_string x
| `background_position x   -> Convert.to_string x
| `background_repeat x     -> Convert.to_string x
| `color x                 -> Convert.to_string x
| `clear x                 -> Convert.to_string x
| `text_align x            -> Convert.to_string x
| `vertical_align x        -> Convert.to_string x
