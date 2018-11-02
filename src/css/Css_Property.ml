(**
 This module defines the CSS properties

 The types correspond to the {{: https://www.w3.org/TR/CSS2/about.html#applies-to } applies to} 
 description for styles for which display property is required for it to render

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } CSS 2.2 full property table} for reference
 *)

type 'style t

(* TODO: instead of abstract types use for ex: TextAlign.t here *)
type text_align
 and vertical_align
 and color
 and clear

type any = [ `color of color t ]
type block = [ `text_align of text_align t | `clear of clear t | any ]
type inline = [ `vertical_align of vertical_align t | any ]
type table_cell = [ `vertical_align of vertical_align t | any ]
type display = [ block | inline | table_cell ]
