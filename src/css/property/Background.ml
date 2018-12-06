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
      Belt.Option.mapWithDefault attachment "" Css_Value.BackgroundAttachment.show
    and position' =
      Belt.Option.mapWithDefault position "" Css_Value.BackgroundPosition.show
    in
    Util.combine_styles [| color'; image'; repeat'; attachment'; position' |]
end

external _make:
  string -> Css_Property.Type.background Css_Property.t = "%identity"

let make ?color ?image ?repeat ?attachment ?position (): 'a t =
  let value = (color, image, repeat, attachment, position) in
  `background (_make @@ Value.show value)
