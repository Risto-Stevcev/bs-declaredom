(** CSS Stylesheets *)

module CharsetRule = struct
	type t = [ `charset of Css_Charset.t ]

	let make value: t = `charset value

	let show (`charset charset: t): string = "@charset "^ Css_Charset.show charset
end

module FontFaceRule = struct
  (** {{: https://www.w3.org/TR/css-fonts-3/#font-face-rule } Font-face rule} *)

  type t = [ `font_face of string * string ]

  let make ~(family:string) ~(src:string): t = `font_face (family, src)

  let show (`font_face (family, src): t): string =
    "@font-face {\n"^
    "  font-family: "^ family ^"\n"^
    "  src: "^ src ^"\n"^
    "}"
end

module PageRule = struct
  (** {{: https://www.w3.org/TR/CSS22/page.html#page-box } The \@page rule} *)

  module Selector = struct
    (** {{: https://www.w3.org/TR/CSS22/page.html#page-selectors } Page selectors} *)

    type t = [ `left | `right | `first ] [@@bs.deriving jsConverter]
    let show (x: t): string = ":"^ tToJs x
  end

  type t =
    [ `page of Selector.t option * Css_Property.MediaGroup.paged Style.t ]

  let make ?page ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left
    ?page_break_before ?page_break_after ?page_break_inside ?orphans ?widows () =
    `page
      ( page
      , Style.MediaGroup.paged ?margin ?margin_top ?margin_right ?margin_bottom
          ?margin_left ?page_break_before ?page_break_after ?page_break_inside ?orphans 
          ?widows ()
      )

  let show (`page (selector, properties): t): string =
    let selector' = 
      selector |. Belt.Option.mapWithDefault "" (fun e -> " "^ Selector.show e)
    in
    "@page" ^ selector' ^" {\n"^
      Css_Property.show_properties ~indent:1 properties ^
    "}"
end

module MediaRule = struct
  type t =
    [ `media of Css_Media.t * Css_Selector.t * Css_Property.display Style.t ]

  let print
    ?(only=false) ?condition selector properties: t =
    let media_type = if only then `only `print else `print in
    let query =
      condition
      |. Belt.Option.mapWithDefault [`modifier media_type]
           (fun condition -> [`media_query (media_type, condition)])
    in
    `media
      ( query
      , selector
      , properties |> Css_Property.MediaType.print_to_display
      )

  let screen
    ?(only=false) ?condition selector properties: t =
    let media_type = if only then `only `screen else `screen in
    let query =
      condition
      |. Belt.Option.mapWithDefault [`modifier media_type]
           (fun condition -> [`media_query (media_type, condition)])
    in
    `media
      ( query
      , selector
      , properties |> Css_Property.MediaType.screen_to_display
      )

  let speech
    ?(only=false) ?condition selector properties: t =
    let media_type = if only then `only `speech else `speech in
    let query =
      condition
      |. Belt.Option.mapWithDefault [`modifier media_type]
           (fun condition -> [`media_query (media_type, condition)])
    in
    `media
      ( query
      , selector
      , properties |> Css_Property.MediaType.speech_to_display
      )

  let show (`media (media, selector, properties): t): string =
    Css_Media.show media ^" {\n"^
      Style.show ~indent:1 selector properties ^"\n"^
    "}"
end

module StyleRule = struct
  type t = [ `style of Css_Selector.t * Css_Property.display Style.t ]

  let make
    selector properties: t =
    `style
      ( selector
      , properties
        |> Js.Dict.map
          (fun [@bs] p -> (p :> Css_Property.display Css_Property.t))
      )

  let show ?(indent=0) (`style (selector, properties): t) =
    let indent' = Js.String.repeat indent "  "
    in
    indent' ^ Css_Selector.show selector ^" {\n"^
      Css_Property.show_properties ~indent:(indent + 1) properties ^"\n"^
    indent' ^"}"
end

module CssModuleRule = struct
  type t = [ `css_module of Css_Property.display Css_Module.t ]

  let make x: t = `css_module (Css_Module.to_display x)

  let show (`css_module css_module: t): string =
    "."^ Css_Module.class_name css_module ^" {\n"^
      Css_Module.show ~indent:1 css_module ^"\n"^
    "}"
end

module Rule = struct
  type t =
    [ MediaRule.t | StyleRule.t | CssModuleRule.t | PageRule.t
    | FontFaceRule.t ]

  type ruleset = t list

  let show x: string = match (x :> t) with
  | `media _ as media_rule ->
    MediaRule.show media_rule
  | `style _ as style_rule ->
    StyleRule.show style_rule
  | `css_module _ as css_module_rule ->
    CssModuleRule.show css_module_rule
  | `font_face _ as font_face ->
    FontFaceRule.show font_face
  | `page _ as page_rule ->
    PageRule.show page_rule
end

let media_print ?only ?condition selector properties: Rule.t =
	(MediaRule.print ?only ?condition selector properties :> Rule.t)
and media_screen ?only ?condition selector properties: Rule.t =
	(MediaRule.screen ?only ?condition selector properties :> Rule.t)
and media_speech ?only ?condition selector properties: Rule.t =
	(MediaRule.speech ?only ?condition selector properties :> Rule.t)
and style selector properties: Rule.t =
	(StyleRule.make selector properties :> Rule.t)
and css_module x: Rule.t = (CssModuleRule.make x :> Rule.t)
and font_face ~family ~src = (FontFaceRule.make ~family ~src :> Rule.t)
and page ?page ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left
    ?page_break_before ?page_break_after ?page_break_inside ?orphans ?widows (): Rule.t =
	(PageRule.make ?page ?margin ?margin_top ?margin_right ?margin_bottom ?margin_left
    ?page_break_before ?page_break_after ?page_break_inside ?orphans ?widows () :> Rule.t)

type t = CharsetRule.t * Rule.t list

let make charset rules: t =
  (CharsetRule.make charset, rules |. Belt.List.map (fun e -> (e :> Rule.t)))
  
let show ((charset, rules): t): string =
	CharsetRule.show charset ^";\n\n"^
	(rules |. Belt.List.map Rule.show |. Util.join_with "\n")
