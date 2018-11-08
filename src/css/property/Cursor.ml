type 'a t = [> Css.Property.cursor ] as 'a

module Value = struct
  type value' =
    [
    | `auto | `crosshair | `default | `pointer | `move | `e_resize | `ne_resize
    | `nw_resize | `n_resize | `se_resize | `sw_resize | `s_resize | `w_resize
    | `text | `wait | `help | `progress
    ]
    [@@bs.deriving jsConverter]

  type value = [ Css.Value.Global.t | value' ]

  type t = Css.Value.Uri.t list * value 

  let show ((uris, value): t): string =
    let value' =
      match value with
      | ( `inherit_ | `initial | `unset ) as value ->
        Css.Value.Global.show value
      | ( `auto | `crosshair | `default | `pointer | `move | `e_resize | `ne_resize
        | `nw_resize | `n_resize | `se_resize | `sw_resize | `s_resize | `w_resize
        | `text | `wait | `help | `progress
        ) as value ->
        value'ToJs value |> Util.underscore_to_dash
    and uris' =
      uris
      |. Belt.List.map (fun e -> Css.Value.Uri.show e ^", ")
      |> Js.List.toVector
      |> Js.Array.joinWith ""
    in
    uris' ^ value' |> Js.String.trim
end

external _make:
  cursor:string -> Css.Property.Type.cursor Css.Property.t = "" [@@bs.obj]

let make ?(uris = []) value: 'a t = `cursor (_make ~cursor:(Value.show (uris, value)))
