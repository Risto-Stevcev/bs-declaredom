(** {{: https://www.w3.org/TR/CSS22/fonts.html#font-shorthand } Font} *)

type 'a t = [> Css_Property.font ] as 'a

module Value = struct
  type value =
    [
    | `caption | `icon | `menu | `message_box [@bs.as "message-box"]
    | `small_caption [@bs.as "small-caption"]
    | `status_bar [@bs.as "status-bar"]
    ]
    [@@bs.deriving jsConverter]

  type value' = [ Css_Value.Global.t | value ]

  type font_property =
    Css_Value.FontStyle.t option *
    Css_Value.FontVariant.t option *
    Css_Value.FontWeight.t option

  type font_size = Css_Value.FontSize.t * Css_Value.LineHeight.t option

  type t = [ Css_Value.Global.t | `font of font_property * font_size | value ]

  let show: t -> string = function
  | (`inherit_ | `initial | `unset) as value ->
    Css_Value.Global.show value
  | `font ((style, variant, weight), (size, line_height)) ->
    let style' =
      Belt.Option.mapWithDefault style "" Css_Value.FontStyle.show
    and variant' =
      Belt.Option.mapWithDefault variant "" Css_Value.FontVariant.show
    and weight' =
      Belt.Option.mapWithDefault weight "" Css_Value.FontWeight.show
    and size' = Css_Value.FontSize.show size
    and line_height' =
      Belt.Option.mapWithDefault line_height ""
        (fun l -> "/" ^ Css_Value.LineHeight.show l)
    in
    Util.combine_styles [| style'; variant'; weight'; size' ^ line_height' |]
  | ( `caption | `icon | `menu | `message_box | `small_caption | `status_bar
    ) as value ->
    valueToJs value
end

external _make: string -> Css_Property.Type.font Css_Property.t = "%identity"

let make
  ?style ?variant ?weight ?size ?line_height
  ?(value:Value.value' = `inherit_)
  (): 'a t =

  let font =
    match size with
    | Some size' ->
      _make @@ Value.show
            @@ `font ((style, variant, weight), (size', line_height))
    | None ->
      _make @@ Value.show (value :> Value.t)
  in
  `font font
