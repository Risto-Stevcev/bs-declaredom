type 'a t = 'a Js.Dict.t

let show_dict (styles: 'a t): string Js.Dict.t =
  styles
  |> Js.Dict.map (fun [@bs] e -> Css.Property.show (e :> Css.Property.display))


module Internal = struct
  (* TODO: populate with all group styles *)
  external visual:
    ?backgroundColor:Css.Property.background_color ->
    ?color:Css.Property.color ->
    unit ->
    Css.Property.MediaGroup.visual t = "" [@@bs.obj]

  (* TODO: this should have all styles that apply to non-replaced elements *)
  external non_replaced:
    ?backgroundAttachment:Css.Property.background_attachment ->
    ?backgroundColor:Css.Property.background_color ->
    unit ->
    Css.Property.non_replaced t = "" [@@bs.obj]

  (* TODO: this should have all styles that apply to replaced elements *)
  external replaced:
    ?height:Css.Property.height ->
    unit ->
    Css.Property.replaced t = "" [@@bs.obj]

  external block:
    ?textAlign:Css.Property.text_align ->
    ?clear:Css.Property.clear ->
    ?color:Css.Property.color ->
    unit ->
    Css.Property.block t = "" [@@bs.obj]

  external inline:
    ?verticalAlign:Css.Property.vertical_align ->
    unit ->
    Css.Property.inline t = "" [@@bs.obj]
end

module MediaGroup = struct
  let visual ?backgroundColor ?color () =
    Internal.visual
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?color:(Belt.Option.map color Color.make)
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
