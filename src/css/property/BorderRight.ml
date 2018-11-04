(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right } Border Right} *)

type 'a t = [> Css.Property.border_right ] as 'a

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
  Css.Property.border_right Css.Property.t ->
  <borderRight: string> Js.t = "%identity"

external _make:
  borderRight:string ->
  Css.Property.Type.border_right Css.Property.t = "" [@@bs.obj]

let make ?width ?style ?color (): 'a t =
  `border_right (_make ~borderRight:(Value.show (width, style, color)))
