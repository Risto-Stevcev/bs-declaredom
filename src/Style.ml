open Css_Properties

type 'a t = 'a Js.Dict.t

let show_dict (styles: 'a t): string t =
  styles
  |> Js.Dict.map (fun [@bs] e -> Css_Property.show (e :> Css_Property.display))

let to_display styles: Css_Property.display t =
  styles
  |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display))

type visual = Css_Property.MediaGroup.visual t
 and paged = Css_Property.MediaGroup.paged t

type non_replaced = Css_Property.AppliesTo.non_replaced t 
 and replaced = Css_Property.AppliesTo.replaced t 
 and block = Css_Property.AppliesTo.block t
 and inline = Css_Property.AppliesTo.inline t

module Internal = struct
  (* TODO: populate with all group styles *)
  external visual:
    ?backgroundColor:Css_Property.background_color ->
    ?color:Css_Property.color ->
    unit ->
    visual = "" [@@bs.obj]

  external paged:
    ?margin:Css_Property.margin ->
    ?marginTop:Css_Property.margin_top ->
    ?marginRight:Css_Property.margin_right ->
    ?marginBottom:Css_Property.margin_bottom ->
    ?marginLeft:Css_Property.margin_left ->
    ?pageBreakBefore:Css_Property.page_break_before ->
    ?pageBreakAfter:Css_Property.page_break_after ->
    ?pageBreakInside:Css_Property.page_break_inside ->
    ?orphans:Css_Property.orphans ->
    ?widows:Css_Property.widows ->
    unit ->
    paged = "" [@@bs.obj]

  (* TODO: this should have all styles that apply to non-replaced elements *)
  external non_replaced:
    ?backgroundAttachment:Css_Property.background_attachment ->
    ?backgroundColor:Css_Property.background_color ->
    unit ->
    non_replaced = "" [@@bs.obj]

  (* TODO: this should have all styles that apply to replaced elements *)
  external replaced:
    ?height:Css_Property.height ->
    unit ->
    replaced = "" [@@bs.obj]

  external block:
    ?textAlign:Css_Property.text_align ->
    ?clear:Css_Property.clear ->
    ?color:Css_Property.color ->
    unit ->
    block = "" [@@bs.obj]

  external inline:
    ?verticalAlign:Css_Property.vertical_align ->
    unit ->
    inline = "" [@@bs.obj]
end

module MediaGroup = struct
  let visual ?backgroundColor ?color () =
    Internal.visual
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?color:(Belt.Option.map color Color.make)
      ()

  let paged ?margin ?marginTop ?marginRight ?marginBottom ?marginLeft
    ?pageBreakBefore ?pageBreakAfter ?pageBreakInside ?orphans ?widows () =
    Internal.paged
      ?margin:(Belt.Option.map margin Margin.make)
      ?marginTop:(Belt.Option.map marginTop MarginTop.make)
      ?marginRight:(Belt.Option.map marginRight MarginRight.make)
      ?marginBottom:(Belt.Option.map marginBottom MarginBottom.make)
      ?marginLeft:(Belt.Option.map marginLeft MarginLeft.make)
      ?pageBreakBefore:(Belt.Option.map pageBreakBefore PageBreakBefore.make)
      ?pageBreakAfter:(Belt.Option.map pageBreakAfter PageBreakAfter.make)
      ?pageBreakInside:(Belt.Option.map pageBreakInside PageBreakInside.make)
      ?orphans:(Belt.Option.map orphans Orphans.make)
      ?widows:(Belt.Option.map widows Widows.make)
      ()
end

let non_replaced ?backgroundAttachment ?backgroundColor () =
  Internal.non_replaced
    ?backgroundAttachment:(Belt.Option.map backgroundAttachment BackgroundAttachment.make)
    ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
    ()

let replaced ?height () =
  Internal.replaced
    ?height:(Belt.Option.map height Height.make)
    ()

let block ?textAlign ?clear ?color () =
  Internal.block
    ?textAlign:(Belt.Option.map textAlign TextAlign.make)
    ?clear:(Belt.Option.map clear Clear.make)
    ?color:(Belt.Option.map color Color.make)
    ()

let inline ?verticalAlign () =
  Internal.inline
    ?verticalAlign:(Belt.Option.map verticalAlign VerticalAlign.make)
    ()



let show ?(indent=0) selector properties =
  let indent' = Js.String.repeat indent "  "
  in
  indent' ^ Css_Selector.show selector ^" {\n"^
    Css_Property.show_properties ~indent:(indent + 1) properties ^"\n"^
  indent' ^"}"
