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

external _make: string -> Css_Property.Type.cursor Css_Property.t = "%identity"

let make ?(uris = []) value: 'a t = `cursor (_make @@ Value.show (uris, value))
