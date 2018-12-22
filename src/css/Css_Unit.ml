module Font = struct
  (** {{: https://www.w3.org/TR/css-values/#font-relative-lengths } Font-relative lengths} *)

  type t =
    [ `em | `ex | `cap | `ch | `ic | `rem | `ih | `rlh ]
    [@@bs.deriving jsConverter]
end

module Viewport = struct
  (** {{: https://www.w3.org/TR/css-values/#viewport-relative-lengths } Viewport-percentage lengths} *)

  type t =
    [ `vw | `vh | `vi | `vb | `vmin | `vmax ]
    [@@bs.deriving jsConverter]
end

module Absolute = struct
  (** {{: https://www.w3.org/TR/css-values/#absolute-lengths } Absolute lengths} *)

  type t =
    [ `cm | `mm | `Q | `in_ [@bs.as "in"] | `pt | `pc | `px ]
    [@@bs.deriving jsConverter]
end

module Relative = struct
  type t = [ Font.t | Viewport.t ]

  let show: t -> string = function
  | ( `em | `ex | `cap | `ch | `ic | `rem | `ih | `rlh ) as font ->
    Font.tToJs font
  | ( `vw | `vh | `vi | `vb | `vmin | `vmax ) as viewport ->
    Viewport.tToJs viewport
end

module Length = struct
  type t = [ Absolute.t | Relative.t ]

  let show: t -> string = function
  | ( `cm | `mm | `Q | `in_ | `pt | `pc | `px ) as absolute ->
    Absolute.tToJs absolute
  | ( `em | `ex | `cap | `ch | `ic   | `rem  | `ih | `rlh
    | `vw | `vh | `vi  | `vb | `vmin | `vmax 
    ) as relative ->
    Relative.show relative
end

module Angle = struct
  (** {{: https://www.w3.org/TR/css-values/#angles } Angle Units} *)

  type t = [ `deg | `grad | `rad | `turn ] [@@bs.deriving jsConverter]
end

module Duration = struct
  (** {{: https://www.w3.org/TR/css-values/#time } Duration Units} *)

  type t = [ `s | `ms ] [@@bs.deriving jsConverter]

  let show = tToJs
end

module Frequency = struct
  (** {{: https://www.w3.org/TR/css-values/#frequency } Frequency Units} *)

  type t = [ `Hz | `kHz ] [@@bs.deriving jsConverter]

  let show = tToJs
end

module Resolution = struct
  (** {{: https://www.w3.org/TR/css-values/#resolution } Resolution Units} *)

  type t = [ `dpi | `dpcm | `dppx ] [@@bs.deriving jsConverter]
end

module Other = struct
  type t = [ Angle.t | Duration.t | Frequency.t | Resolution.t ]

  let show: t -> string = function
  | ( `deg | `grad | `rad | `turn ) as angle -> Angle.tToJs angle
  | ( `s | `ms ) as duration -> Duration.tToJs duration
  | ( `Hz | `kHz ) as frequency -> Frequency.tToJs frequency
  | ( `dpi | `dpcm | `dppx ) as resolution -> Resolution.tToJs resolution
end

module Percent = struct
  (** {{: https://www.w3.org/TR/css-values/#percentages } Percentages} *)

  type t = [ `percent ] [@@bs.deriving jsConverter]

	let show = tToJs
end

type t = [ Length.t | Percent.t | Other.t ]

let show: t -> string = function
| ( `cm  | `mm  | `Q  | `in_ | `pt | `pc | `px | `em | `ex   | `cap  | `ch 
  | `ic  | `rem | `ih | `rlh | `vw | `vh | `vi | `vb | `vmin | `vmax
  ) as distance ->
  Length.show distance
| `percent as percent ->
  Percent.tToJs percent
| ( `deg  | `grad | `rad | `turn | `s | `ms | `Hz | `kHz | `dpi | `dpcm
  | `dppx
  ) as other ->
  Other.show other
