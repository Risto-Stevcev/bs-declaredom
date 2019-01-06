(** CSS Unit Values *)

module Font = struct
  (** {{: https://www.w3.org/TR/css-values/#font-relative-lengths } Font-Relative Lengths} *)

  type t =
    [ `em of float  | `ex of float | `cap of float | `ch of float | `ic of float
    | `rem of float | `ih of float | `rlh of float ]

  let show: t -> string = function
  | `em  value -> Js.Float.toString value ^"em"
  | `ex  value -> Js.Float.toString value ^"ex"
  | `cap value -> Js.Float.toString value ^"cap"
  | `ch  value -> Js.Float.toString value ^"ch"
  | `ic  value -> Js.Float.toString value ^"ic"
  | `rem value -> Js.Float.toString value ^"rem"
  | `ih  value -> Js.Float.toString value ^"ih"
  | `rlh value -> Js.Float.toString value ^"rlh"
end


module Viewport = struct
  (** {{: https://www.w3.org/TR/css-values/#viewport-relative-lengths } Viewport-Relative Lengths} *)

  type t =
    [ `vw of float   | `vh of float   | `vi of float | `vb of float
    | `vmin of float | `vmax of float ]

  let show: t -> string = function
  | `vw   value -> Js.Float.toString value ^"vw"
  | `vh   value -> Js.Float.toString value ^"vh"
  | `vi   value -> Js.Float.toString value ^"vi"
  | `vb   value -> Js.Float.toString value ^"vb"
  | `vmin value -> Js.Float.toString value ^"vmin"
  | `vmax value -> Js.Float.toString value ^"vmax"
end


module Absolute = struct
  (** {{: https://www.w3.org/TR/css-values/#absolute-lengths } Absolute Lengths} *)

  type t =
    [ `cm of float | `mm of float | `Q of float | `in_ of float | `pt of float
    | `pc of float | `px of float ]

  let show: t -> string = function
  | `cm  value -> Js.Float.toString value ^"cm"
  | `mm  value -> Js.Float.toString value ^"mm"
  | `Q   value -> Js.Float.toString value ^"Q"
  | `in_ value -> Js.Float.toString value ^"in"
  | `pt  value -> Js.Float.toString value ^"pt"
  | `pc  value -> Js.Float.toString value ^"pc"
  | `px  value -> Js.Float.toString value ^"px"
end


module Relative = struct
  (** {{: https://www.w3.org/TR/css-values/#relative-lengths } Relative Lengths} *)

  type t = [ Font.t | Viewport.t ]

  let show: t -> string = function
  | ( `em _ | `ex _ | `cap _ | `ch _ | `ic _ | `rem _ | `ih _ | `rlh _
    ) as font ->
    Font.show font
  | ( `vw _ | `vh _ | `vi _ | `vb _ | `vmin _ | `vmax _ ) as viewport ->
    Viewport.show viewport
end


module Length = struct
  (** {{: https://www.w3.org/TR/css-values/#lengths } Lengths} *)

  type t = [ Absolute.t | Relative.t ]

  let show: t -> string = function
  | ( `cm _ | `mm _ | `Q _ | `in_ _ | `pt _ | `pc _ | `px _ ) as absolute ->
    Absolute.show absolute
  | ( `em _ | `ex _ | `cap _ | `ch _ | `ic _   | `rem _ | `ih _ | `rlh _
    | `vw _ | `vh _ | `vi _  | `vb _ | `vmin _ | `vmax _ 
    ) as relative ->
    Relative.show relative
end


module Angle = struct
  (** {{: https://www.w3.org/TR/css-values/#angles } Angle Units} *)

  type t = [ `deg of float | `grad of float | `rad of float | `turn of float ]

  let show: t -> string = function
  | `deg  value -> Js.Float.toString value ^"deg"
  | `grad value -> Js.Float.toString value ^"grad"
  | `rad  value -> Js.Float.toString value ^"rad"
  | `turn value -> Js.Float.toString value ^"turn"
end


module Time = struct
  (** {{: https://www.w3.org/TR/css-values/#time } Time Units} *)

  type t = [ `s of float | `ms of float ]

  let show: t -> string = function
  | `s  value -> Js.Float.toString value ^"s"
  | `ms value -> Js.Float.toString value ^"ms"
end


module Frequency = struct
  (** {{: https://www.w3.org/TR/css-values/#frequency } Frequency Units} *)

  type t = [ `Hz of float | `kHz of float ]

  let show: t -> string = function
  | `Hz value -> Js.Float.toString value ^"Hz"
  | `kHz value -> Js.Float.toString value ^"kHz"
end


module Resolution = struct
  (** {{: https://www.w3.org/TR/css-values/#resolution } Resolution Units} *)

  type t = [ `dpi of float | `dpcm of float | `dppx of float ]

  let show: t -> string = function
  | `dpi  value -> Js.Float.toString value ^"dpi"
  | `dpcm value -> Js.Float.toString value ^"dpcm"
  | `dppx value -> Js.Float.toString value ^"dppx"
end


module Other = struct
  (** {{: https://www.w3.org/TR/css-values/#other-units } Other} *)

  type t = [ Angle.t | Time.t | Frequency.t | Resolution.t ]

  let show: t -> string = function
  | ( `deg _ | `grad _ | `rad _ | `turn _ ) as angle ->
    Angle.show angle
  | ( `s _ | `ms _ ) as time ->
    Time.show time
  | ( `Hz _ | `kHz _ ) as frequency ->
    Frequency.show frequency
  | ( `dpi _ | `dpcm _ | `dppx _ ) as resolution ->
    Resolution.show resolution
end


module Percent = struct
  (** {{: https://www.w3.org/TR/css-values/#percentages } Percentages} *)

  type t = [ `percent of float ]

	let show: t -> string = function
  | `percent value -> Js.Float.toString value ^"%"
end


type t = [ Length.t | Percent.t | Other.t ]

let show: t -> string = function
| ( `cm _  | `mm _   | `Q _   | `in_ _ | `pt _ | `pc _  | `px _ | `em _ | `ex _
  | `cap _ | `ch _   | `ic _  | `rem _ | `ih _ | `rlh _ | `vw _ | `vh _ | `vi _
  | `vb _  | `vmin _ | `vmax _
  ) as length ->
  Length.show length
| `percent _ as percent ->
  Percent.show percent
| ( `deg _ | `grad _ | `rad _ | `turn _ | `s _ | `ms _ | `Hz _ | `kHz _
  | `dpi _ | `dpcm _ | `dppx _
  ) as other ->
  Other.show other
