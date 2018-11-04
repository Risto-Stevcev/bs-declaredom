(**
 This module defines the CSS properties

 The types correspond to the {{: https://www.w3.org/TR/CSS2/about.html#applies-to } applies to} 
 description for styles for which display property is required for it to render

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } CSS 2.2 full property table} for reference, and the

 {{: https://www.w3.org/TR/CSS22/sample.html } Default styles}
 *)

type 'style t

(* TODO: instead of abstract types use for ex: TextAlign.t here ? *)

module Type = struct
  type azimuth
  type clear
   and color
   and text_align
   and vertical_align
end

type azimuth = [ `azimuth of Type.azimuth t ]
type clear = [ `clear of Type.clear t ]
 and color = [ `color of Type.color t ]
 and text_align = [ `text_align of Type.text_align t ]
 and vertical_align = [ `vertical_align of Type.vertical_align t ]

type any = [ color | azimuth ]
type block = [ text_align | clear | any ]
type inline = [ vertical_align | any ]
type table_cell = [ vertical_align | any ]
type display = [ block | inline | table_cell ]

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
| `azimuth azimuth               -> Convert.to_string azimuth
| `color color                   -> Convert.to_string color
| `clear clear                   -> Convert.to_string clear
| `text_align text_align         -> Convert.to_string text_align
| `vertical_align vertical_align -> Convert.to_string vertical_align
