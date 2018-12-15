(** {{: https://www.w3.org/TR/CSS22/propidx.html } Full property table} *)

module Internal = struct
	external make:
		string -> _ Css_Property.t = "%identity"
end

module Azimuth = struct
  (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-azimuth } Azimuth} *)

  type 'a t = [> Css_Property.azimuth ] as 'a

  type _value =
    [
    | `left_side | `far_left | `left | `center_left | `center | `center_right
    | `right | `far_right | `right_side | `leftwards | `rightwards
    ]
    [@@bs.deriving jsConverter]

  (** {{: https://www.w3.org/TR/CSS22/aural.html#value-def-angle } Angle} *)
  type value =
    [
    | Css_Value.Global.t | Css_Value.Angle.t | `behind of _value option | _value
    ]

  let show: value -> string = function
  | ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
  | `angle _ as angle -> Css_Value.Angle.show angle
  | `behind None -> "behind"
  | `behind (Some value') -> 
    "behind " ^ (value' |> _valueToJs |> Util.underscore_to_dash)
  | ( `left_side | `far_left | `left | `center_left | `center | `center_right
    | `right | `far_right | `right_side | `leftwards | `rightwards
    ) as value' ->
    value' |> _valueToJs |> Util.underscore_to_dash

  let make value: 'a t = `azimuth (Internal.make @@ show value)
end


module Background = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background } Background} *)

  type 'a t = [> Css_Property.background ] as 'a

  module Value = struct
    type t =
      Css_Value.BackgroundColor.t option *
      Css_Value.BackgroundImage.t option *
      Css_Value.BackgroundRepeat.t option *
      Css_Value.BackgroundAttachment.t option *
      Css_Value.BackgroundPosition.t option

    let show ((color, image, repeat, attachment, position): t): string =
      let color' =
        Belt.Option.mapWithDefault color "" Css_Value.BackgroundColor.show
      and image' =
        Belt.Option.mapWithDefault image "" Css_Value.BackgroundImage.show
      and repeat' =
        Belt.Option.mapWithDefault repeat "" Css_Value.BackgroundRepeat.show
      and attachment' =
        Belt.Option.mapWithDefault
          attachment "" Css_Value.BackgroundAttachment.show
      and position' =
        Belt.Option.mapWithDefault position "" Css_Value.BackgroundPosition.show
      in
      Util.combine_styles [| color'; image'; repeat'; attachment'; position' |]
  end

  let make ?color ?image ?repeat ?attachment ?position (): 'a t =
    let value = (color, image, repeat, attachment, position) in
    `background (Internal.make @@ Value.show value)
end


module BackgroundAttachment = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

  type 'a t = [> Css_Property.background_attachment ] as 'a

  external to_json:
    Css_Property.background_attachment Css_Property.t ->
    <backgroundAttachment: string> Js.t = "%identity"

  let make value: 'a t =
    let show = Css_Value.BackgroundAttachment.show in
    `background_attachment (Internal.make @@ show value)
end


module BackgroundColor = struct
  (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} *)

  type 'a t = [> Css_Property.background_color ] as 'a

  let make value: 'a t =
    `background_color (Internal.make @@ Css_Value.BackgroundColor.show value)
end


module BackgroundImage = struct
	(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

	type 'a t = [> Css_Property.background_image ] as 'a

	let make value: 'a t =
		`background_image (Internal.make @@ Css_Value.BackgroundImage.show value)
end


module BackgroundPosition = struct
	(** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} *)

	type 'a t = [> Css_Property.background_position ] as 'a

	let make value: 'a t =
		`background_position (Internal.make @@ Css_Value.BackgroundPosition.show value)
end


module BackgroundRepeat = struct
	(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

	type 'a t = [> Css_Property.background_repeat ] as 'a

	let make value: 'a t =
		`background_repeat (Internal.make @@ Css_Value.BackgroundRepeat.show value)
end


module BorderCollapse = struct
	(** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} *)

	type 'a t = [> Css_Property.border_collapse ] as 'a

	module Value = struct
		type t = [ Css_Value.Global.t | `collapse | `separate ]

		let show: t -> string = function
		| ( `inherit_ | `initial | `unset ) as global -> Css_Value.Global.show global
		| `collapse -> "collapse"
		| `separate -> "separate"
	end

	let make value: 'a t = `border_collapse (Internal.make @@ Value.show value)
end


module BorderColor = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

	type 'a t = [> Css_Property.border_color ] as 'a

	let make value: 'a t =
		`border_color (Internal.make @@ Css_Value.BorderColor.show value)
end


module BorderWidth = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

	type 'a t = [> Css_Property.border_width ] as 'a

	let make value: 'a t =
		`border_width (Internal.make @@ Css_Value.BorderWidth.show value)
end


module BorderStyle = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

	type 'a t = [> Css_Property.border_style ] as 'a

	let make value: 'a t =
		`border_style (Internal.make @@ Css_Value.BorderStyle.show value)
end


module BorderTop = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top } Border Top} *)

	type 'a t = [> Css_Property.border_top ] as 'a

	module Value = struct
		type t =
			Css_Value.BorderWidth.t option *
			Css_Value.BorderStyle.t option *
			Css_Value.BorderColor.t option

		let show ((width, style, color): t): string =
			let width' =
				Belt.Option.mapWithDefault width "" Css_Value.BorderWidth.show
			and style' =
				Belt.Option.mapWithDefault style "" Css_Value.BorderStyle.show
			and color' =
				Belt.Option.mapWithDefault color "" Css_Value.BorderColor.show
			in
			Util.combine_styles [| width'; style'; color' |]
	end

	let make ?width ?style ?color (): 'a t =
		`border_top (Internal.make @@ Value.show (width, style, color))
end


module BorderBottom = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom } Border Bottom} *)

	type 'a t = [> Css_Property.border_bottom ] as 'a

	module Value = struct
		type t =
			Css_Value.BorderWidth.t option *
			Css_Value.BorderStyle.t option *
			Css_Value.BorderColor.t option

		let show ((width, style, color): t): string =
			let width' =
				Belt.Option.mapWithDefault width "" Css_Value.BorderWidth.show
			and style' =
				Belt.Option.mapWithDefault style "" Css_Value.BorderStyle.show
			and color' =
				Belt.Option.mapWithDefault color "" Css_Value.BorderColor.show
			in
			Util.combine_styles [| width'; style'; color' |]
	end

	let make ?width ?style ?color (): 'a t =
		`border_bottom (Internal.make @@ Value.show (width, style, color))
end


module BorderLeft = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left } Border Left} *)

	type 'a t = [> Css_Property.border_left ] as 'a

	module Value = struct
		type t =
			Css_Value.BorderWidth.t option *
			Css_Value.BorderStyle.t option *
			Css_Value.BorderColor.t option

		let show ((width, style, color): t): string =
			let width' =
				Belt.Option.mapWithDefault width "" Css_Value.BorderWidth.show
			and style' =
				Belt.Option.mapWithDefault style "" Css_Value.BorderStyle.show
			and color' =
				Belt.Option.mapWithDefault color "" Css_Value.BorderColor.show
			in
			Util.combine_styles [| width'; style'; color' |]
	end

	let make ?width ?style ?color (): 'a t =
		`border_left (Internal.make @@ Value.show (width, style, color))
end


module BorderRight = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right } Border Right} *)

	type 'a t = [> Css_Property.border_right ] as 'a

	module Value = struct
		type t =
			Css_Value.BorderWidth.t option *
			Css_Value.BorderStyle.t option *
			Css_Value.BorderColor.t option

		let show ((width, style, color): t): string =
			let width' =
				Belt.Option.mapWithDefault width "" Css_Value.BorderWidth.show
			and style' =
				Belt.Option.mapWithDefault style "" Css_Value.BorderStyle.show
			and color' =
				Belt.Option.mapWithDefault color "" Css_Value.BorderColor.show
			in
			Util.combine_styles [| width'; style'; color' |]
	end

	let make ?width ?style ?color (): 'a t =
		`border_right (Internal.make @@ Value.show (width, style, color))
end


module Border = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border } Border} *)

	type 'a t = [> Css_Property.border ] as 'a

	module Value = struct
		type t =
			Css_Value.BorderWidth.t option *
			Css_Value.BorderStyle.t option *
			Css_Value.BorderColor.t option

		let show ((width, style, color): t): string =
			let width' =
				Belt.Option.mapWithDefault width "" Css_Value.BorderWidth.show
			and style' =
				Belt.Option.mapWithDefault style "" Css_Value.BorderStyle.show
			and color' =
				Belt.Option.mapWithDefault color "" Css_Value.BorderColor.show
			in
			Util.combine_styles [| width'; style'; color' |]
	end

	let make ?width ?style ?color (): 'a t =
		`border (Internal.make @@ Value.show (width, style, color))
end


module Bottom = struct
	(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

	type 'a t = [> Css_Property.bottom ] as 'a

	let make value: 'a t =
		`bottom (Internal.make @@ Css_Value.LengthPercent.show value)
end


module Clear = struct
	(** {{: https://www.w3.org/TR/CSS22/visuren.html#flow-control } Clear} *)

	type 'a t = [> Css_Property.clear ] as 'a

	module Value = struct
		type value = [ `left | `right | `both | `none ] [@@bs.deriving jsConverter]

		type t = [ Css_Value.Global.t | value ]

		let show: t -> string = function
		| (`inherit_ | `initial | `unset) as value ->
			Css_Value.Global.show value
		| (`none | `left | `right | `both) as value -> 
			valueToJs value
	end

	let make value: 'a t = `clear (Internal.make @@ Value.show value)
end


module Color = struct
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

	let make value: 'a t = `color (Internal.make @@ show value)
end


module Cursor = struct
	(** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-cursor} Cursor} *)

	type 'a t = [> Css_Property.cursor ] as 'a

	module Value = struct
		type value' =
			[
			| `auto | `crosshair | `default | `pointer | `move | `e_resize | `ne_resize
			| `nw_resize | `n_resize | `se_resize | `sw_resize | `s_resize | `w_resize
			| `text | `wait | `help | `progress
			]
			[@@bs.deriving jsConverter]

		type value = [ Css_Value.Global.t | value' ]

		type t = Css_Value.Uri.t list * value 

		let show ((uris, value): t): string =
			let value' =
				match value with
				| ( `inherit_ | `initial | `unset ) as value ->
					Css_Value.Global.show value
				| ( `auto | `crosshair | `default | `pointer | `move | `e_resize | `ne_resize
					| `nw_resize | `n_resize | `se_resize | `sw_resize | `s_resize | `w_resize
					| `text | `wait | `help | `progress
					) as value ->
					value'ToJs value |> Util.underscore_to_dash
			and uris' =
				uris
				|. Belt.List.map (fun e -> Css_Value.Uri.show e ^", ")
				|> Js.List.toVector
				|> Js.Array.joinWith ""
			in
			uris' ^ value' |> Js.String.trim
	end

	let make ?(uris = []) value: 'a t =
		`cursor (Internal.make @@ Value.show (uris, value))
end


module Float = struct
	(** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-float} Float} *)

	type 'a t = [> Css_Property.float_ ] as 'a

	module Value = struct
		type value = [ `left | `right | `none ] [@@bs.deriving jsConverter]

		type t = [ Css_Value.Global.t | value ]

		let show: t -> string = function
		| (`inherit_ | `initial | `unset) as value ->
			Css_Value.Global.show value
		| (`none | `left | `right ) as value -> 
			valueToJs value
	end

	let make value: 'a t = `float (Internal.make @@ Value.show value)
end


module FontFamily = struct
	(** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font family} *)

	type 'a t = [> Css_Property.font_family ] as 'a

	let make value: 'a t =
		`font_family (Internal.make @@ Css_Value.FontFamily.show value)
end


module FontSize = struct
	(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font size} *)

	type 'a t = [> Css_Property.font_size ] as 'a

	let make value: 'a t =
		`font_size (Internal.make @@ Css_Value.FontSize.show value)
end


module FontStyle = struct
	(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font style} *)

	type 'a t = [> Css_Property.font_style ] as 'a

	let make value: 'a t =
		`font_style (Internal.make @@ Css_Value.FontStyle.show value)
end


module FontVariant = struct
	(** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font variant} *)

	type 'a t = [> Css_Property.font_variant ] as 'a

	let make value: 'a t =
		`font_variant (Internal.make @@ Css_Value.FontVariant.show value)
end


module FontWeight = struct
	(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

	type 'a t = [> Css_Property.font_weight ] as 'a

	let make value: 'a t =
		`font_weight (Internal.make @@ Css_Value.FontWeight.show value)
end


module Font = struct
	(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-shorthand } Font} *)

	type 'a t = [> Css_Property.font ] as 'a

	module Value = struct
		type value =
			[
			| `caption | `icon | `menu | `message_box [@bs.as "message-box"]
			| `small_caption [@bs.as "small-caption"]
			| `status_bar [@bs.as "status-bar"]
			]
			[@@bs.deriving jsConverter]

		type value' = [ Css_Value.Global.t | value ]

		type font_property =
			Css_Value.FontStyle.t option *
			Css_Value.FontVariant.t option *
			Css_Value.FontWeight.t option

		type font_size = Css_Value.FontSize.t * Css_Value.LineHeight.t option

		type t = [ Css_Value.Global.t | `font of font_property * font_size | value ]

		let show: t -> string = function
		| (`inherit_ | `initial | `unset) as value ->
			Css_Value.Global.show value
		| `font ((style, variant, weight), (size, line_height)) ->
			let style' =
				Belt.Option.mapWithDefault style "" Css_Value.FontStyle.show
			and variant' =
				Belt.Option.mapWithDefault variant "" Css_Value.FontVariant.show
			and weight' =
				Belt.Option.mapWithDefault weight "" Css_Value.FontWeight.show
			and size' = Css_Value.FontSize.show size
			and line_height' =
				Belt.Option.mapWithDefault line_height ""
					(fun l -> "/" ^ Css_Value.LineHeight.show l)
			in
			Util.combine_styles [| style'; variant'; weight'; size' ^ line_height' |]
		| ( `caption | `icon | `menu | `message_box | `small_caption | `status_bar
			) as value ->
			valueToJs value
	end

	let make
		?style ?variant ?weight ?size ?line_height
		?(value:Value.value' = `inherit_)
		(): 'a t =

		let font =
			match size with
			| Some size' ->
				Internal.make @@ Value.show
							@@ `font ((style, variant, weight), (size', line_height))
			| None ->
				Internal.make @@ Value.show (value :> Value.t)
		in
		`font font
end


module Height = struct
	(** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

	type 'a t = [> Css_Property.height ] as 'a

	let make value: 'a t =
		`height (Internal.make @@ Css_Value.LengthPercent.show value)
end


module Left = struct
	(** {{: https://www.w3.org/TR/CSS22/visuren.html#position-props } Box offsets} *)

	type 'a t = [> Css_Property.left ] as 'a

	let make value: 'a t =
		`left (Internal.make @@ Css_Value.LengthPercent.show value)
end


module LetterSpacing = struct
	(** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter spacing} *)

	type 'a t = [> Css_Property.letter_spacing ] as 'a

	module Value = struct
		type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal ]

		let show: t -> string = function
		| (`inherit_ | `initial | `unset) as value ->
			Css_Value.Global.show value
		| `length _ as length ->
			Css_Value.Length.show length
		| `normal ->
			"normal"
	end

	let make value: 'a t = `letter_spacing (Internal.make @@ Value.show value)
end


module LineHeight = struct
	(** {{: https://www.w3.org/TR/CSS22/visudet.html#leading } Leading} *)

	type 'a t = [> Css_Property.line_height ] as 'a

	let make value: 'a t =
		`line_height (Internal.make @@ Css_Value.LineHeight.show value)
end


module ListStyleImage = struct
	(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-image} *)

	type 'a t = [> Css_Property.list_style_image ] as 'a

	let make value: 'a t =
		`list_style_image (Internal.make @@ Css_Value.ListStyleImage.show value)
end


module ListStylePosition = struct
	(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-position} *)

	type 'a t = [> Css_Property.list_style_position ] as 'a

	let make value: 'a t =
		`list_style_position (Internal.make @@ Css_Value.ListStylePosition.show value)
end


module ListStyleType = struct
	(** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List-style-type} *)

	type 'a t = [> Css_Property.list_style_type ] as 'a

	let make value: 'a t =
		`list_style_type (Internal.make @@ Css_Value.ListStyleType.show value)
end


module ListStyle = struct
	(** {{: https://www.w3.org/TR/CSS22/generate.html#list_style } List style} *)

	type 'a t = [> Css_Property.list_style ] as 'a

	module Value = struct
		type t =
			Css_Value.ListStyleType.t option *
			Css_Value.ListStylePosition.t option *
			Css_Value.ListStyleImage.t option

		let show ((type_, position, image): t): string =
			let type_' =
				Belt.Option.mapWithDefault type_ "" Css_Value.ListStyleType.show
			and position' =
				Belt.Option.mapWithDefault position "" Css_Value.ListStylePosition.show
			and image' =
				Belt.Option.mapWithDefault image "" Css_Value.ListStyleImage.show
			in
			Util.combine_styles [| type_'; position'; image' |]
	end

	let make ?type_ ?position ?image (): 'a t =
		`list_style (Internal.make @@ Value.show (type_, position, image))
end


module Margin = struct
	(** {{: https://www.w3.org/TR/CSS22/box.html#margin-properties } Margin properties} *)

	type 'a t = [> Css_Property.margin ] as 'a

	let make value: 'a t =
		`margin (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginTop = struct
	type 'a t = [> Css_Property.margin_top ] as 'a

	let make value: 'a t =
		`margin_top (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginRight = struct
	type 'a t = [> Css_Property.margin_right ] as 'a

	let make value: 'a t =
		`margin_right (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginBottom = struct
	type 'a t = [> Css_Property.margin_bottom ] as 'a

	let make value: 'a t =
		`margin_bottom (Internal.make @@ Css_Value.LengthPercent.show value)
end


module MarginLeft = struct
	type 'a t = [> Css_Property.margin_left ] as 'a

	let make value: 'a t =
		`margin_left (Internal.make @@ Css_Value.LengthPercent.show value)
end


module Orphans = struct
	(** {{: https://www.w3.org/TR/CSS22/page.html#break-inside } Break inside elements} *)

	type 'a t = [> Css_Property.orphans ] as 'a

	let make value: 'a t =
		`orphans (Internal.make @@ Css_Value.BreakInside.show value)
end


module PageBreakAfter = struct
	(** {{: https://www.w3.org/TR/CSS22/page.html#page-breaks } Page breaks} *)

	type 'a t = [> Css_Property.page_break_after ] as 'a

	let make value: 'a t =
		`page_break_after (Internal.make @@ Css_Value.PageBreak.show value)
end


module PageBreakBefore = struct
	(** {{: https://www.w3.org/TR/CSS22/page.html#page-breaks } Page breaks} *)

	type 'a t = [> Css_Property.page_break_before ] as 'a

	let make value: 'a t =
		`page_break_before (Internal.make @@ Css_Value.PageBreak.show value)
end


module PageBreakInside = struct
	(** {{: https://www.w3.org/TR/CSS22/page.html#page-breaks } Page breaks} *)

	type 'a t = [> Css_Property.page_break_inside ] as 'a

	let make (value: Css_Value.PageBreak.inside): 'a t =
		`page_break_inside
		(Internal.make @@ Css_Value.PageBreak.show	(value :> Css_Value.PageBreak.t))
end


module TextAlign = struct
	(** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text-align } *)

	type 'a t = [> Css_Property.text_align ] as 'a

	type value =
		[ `left | `right | `center | `justify | `inherit_ [@bs.as "inherit"] ]
		[@@bs.deriving jsConverter]

	let make value: 'a t = `text_align (Internal.make @@ valueToJs value)
end


module VerticalAlign = struct
	(** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical-align} *)

	type 'a t = [> Css_Property.vertical_align ] as 'a

	type value =
		[ Css_Value.ParentRelative.t | Css_Value.LineRelative.t | Css_Value.Global.t ]

	let show: value -> string = function
	| ( `baseline | `sub | `super | `text_top | `text_bottom | `middle | `length _
		| `percent _
		) as parent_relative ->
		Css_Value.ParentRelative.show parent_relative
	| ( `top | `bottom ) as line_relative ->
		Css_Value.LineRelative.show line_relative
	| ( `inherit_ | `initial | `unset ) as global ->
		Css_Value.Global.show global

	let make value: 'a t = `vertical_align (Internal.make @@ show value)
end


module Widows = struct
	(** {{: https://www.w3.org/TR/CSS22/page.html#break-inside } Break inside elements} *)

	type 'a t = [> Css_Property.widows ] as 'a

	let make value: 'a t =
		`widows (Internal.make @@ Css_Value.BreakInside.show value)
end
