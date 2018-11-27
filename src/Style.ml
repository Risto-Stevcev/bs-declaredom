type 'a t = 'a Js.Dict.t

let show_dict (styles: 'a t): string Js.Dict.t =
  styles
  |> Js.Dict.map (fun [@bs] e -> Css.Property.show (e :> Css.Property.display))

module MediaGroup = struct
  (* TODO: populate with all group styles *)
  external _visual:
    ?backgroundColor:Css.Property.background_color ->
    ?color:Css.Property.color ->
    unit ->
    Css.Property.MediaGroup.visual t = "" [@@bs.obj]

  let visual ?backgroundColor ?color () =
    _visual
      ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
      ?color:(Belt.Option.map color Color.make)
      ()
end

(* TODO: this should have all styles that apply to non-replaced elements *)
external _non_replaced:
  ?backgroundAttachment:Css.Property.background_attachment ->
  ?backgroundColor:Css.Property.background_color ->
  unit ->
  Css.Property.non_replaced t = "" [@@bs.obj]

let non_replaced ?backgroundAttachment ?backgroundColor () =
  _non_replaced
    ?backgroundAttachment:(Belt.Option.map backgroundAttachment BackgroundAttachment.make)
    ?backgroundColor:(Belt.Option.map backgroundColor BackgroundColor.make)
    ()


(* TODO: this should have all styles that apply to replaced elements *)
external replaced:
  ?height:Css.Property.height ->
  unit ->
  Css.Property.replaced t = "" [@@bs.obj]

(* TODO:
  Why not just use Js.t objects?
  - have individual properties like 'color' be:
type 'a color = {.. 
  *)

type 'a color = <color: Color.value; ..> Js.t as 'a
type 'a backgroundColor = <backgroundColor: Css.Value.BackgroundColor.t; ..> Js.t as 'a
type display = <color: Color.value; backgroundColor: Css.Value.BackgroundColor.t> Js.t color backgroundColor
