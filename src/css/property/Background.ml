(** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background } Background} *)

type 'a t = [> Css.Property.background ] as 'a

module Value = struct
  type t =
    Css.Value.BackgroundColor.t option *
    Css.Value.BackgroundImage.t option *
    Css.Value.BackgroundRepeat.t option *
    Css.Value.BackgroundAttachment.t option *
    Css.Value.BackgroundPosition.t option

  let show ((color, image, repeat, attachment, position): t): string =
    let color' =
      Belt.Option.mapWithDefault color "" Css.Value.BackgroundColor.show
    and image' =
      Belt.Option.mapWithDefault image "" Css.Value.BackgroundImage.show
    and repeat' =
      Belt.Option.mapWithDefault repeat "" Css.Value.BackgroundRepeat.show
    and attachment' =
      Belt.Option.mapWithDefault attachment "" Css.Value.BackgroundAttachment.show
    and position' =
      Belt.Option.mapWithDefault position "" Css.Value.BackgroundPosition.show
    in
    Util.combine_styles [| color'; image'; repeat'; attachment'; position' |]
end

external to_json:
  Css.Property.background Css.Property.t ->
  <background: string> Js.t = "%identity"

external _make:
  background:string ->
  Css.Property.Type.background Css.Property.t = "" [@@bs.obj]

let make ?color ?image ?repeat ?attachment ?position (): 'a t =
  let value = (color, image, repeat, attachment, position) in
  `background (_make ~background:(Value.show value))
