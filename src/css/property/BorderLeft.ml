(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left } Border Left} *)

type 'a t = [> Css.Property.border_left ] as 'a

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

external to_json:
  Css.Property.border_left Css.Property.t ->
  <borderLeft: string> Js.t = "%identity"

external _make:
  borderLeft:string ->
  Css.Property.Type.border_left Css.Property.t = "" [@@bs.obj]

let make ?width ?style ?color (): 'a t =
  `border_left (_make ~borderLeft:(Value.show (width, style, color)))
