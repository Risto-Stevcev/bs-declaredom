(* TODO:
 * stylesheet takes a list of:
 *  - directives ie @charset or @font-face
 *  - A `selector list` (which will be comma delimited) with a ruleset
 *  - css modules
 *)
module Charset = Css_Charset

module Media = Css_Media

module Selector = Css_Selector

module Property = Css_Property

module FontFace = struct
  (** {{: https://www.w3.org/TR/css-fonts-3/#font-face-rule } Font-face rule} *)

  type t = [ `font_face of string * string ]

  let make ~(family:string) ~(src:string): t = `font_face (family, src)

  let show (`font_face (family, src): t): string =
    "@font-face {\n"^
    "  font-family: "^ family ^"\n"^
    "  src: "^ src ^"\n"^
    "}"
end

module Rule = struct
  (* TODO: add @page rule
   * https://www.w3.org/TR/CSS2/page.html#page-box
   *)
  type t =
    [ `media of Media.t * Selector.t * Property.display list
    | `style of Selector.t * Property.display list
    | `module_ of Property.display Css_Module.t
    | FontFace.t
    ]

	type ruleset = t list

	let style selector property =
		`style (selector, (Property.show (property :> Property.display)))

  open Css_Module;;
	let module_ { name; declaration } =
	  `module_
		  { name
		  ; declaration = declaration |> List.map (fun e -> (e :> Property.display)) 
		  }
end


module Rules = struct end 

type t = Stylesheet of Charset.t * Rule.t list 
