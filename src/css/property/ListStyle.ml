(** {{: https://www.w3.org/TR/CSS22/generate.html#list_style } List style} *)

type 'a t = [> Css.Property.list_style ] as 'a

module Value = struct
  type t =
    Css.Value.ListStyleType.t option *
    Css.Value.ListStylePosition.t option *
    Css.Value.ListStyleImage.t option

  let show ((type_, position, image): t): string =
    let type_' =
      Belt.Option.mapWithDefault type_ "" Css.Value.ListStyleType.show
    and position' =
      Belt.Option.mapWithDefault position "" Css.Value.ListStylePosition.show
    and image' =
      Belt.Option.mapWithDefault image "" Css.Value.ListStyleImage.show
    in
    Util.combine_styles [| type_'; position'; image' |]
end

external _make:
  string -> Css.Property.Type.list_style Css.Property.t = "%identity"

let make ?type_ ?position ?image (): 'a t =
  `list_style (_make @@ Value.show (type_, position, image))
