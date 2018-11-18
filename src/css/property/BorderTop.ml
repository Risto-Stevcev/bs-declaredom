(** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top } Border Top} *)

type 'a t = [> Css.Property.border_top ] as 'a

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

external _make:
  string -> Css.Property.Type.border_top Css.Property.t = "%identity"

let make ?width ?style ?color (): 'a t =
  `border_top (_make @@ Value.show (width, style, color))
