module Global = struct
  (** {{: https://www.w3.org/TR/css-values/#common-keywords } CSS-wide keywords} *)

  type t =
    [ `inherit_ [@bs.as "inherit"] | `initial | `unset ]
    [@@bs.deriving jsConverter]
end

module Keyword = struct
  type t =
    [
    | `none | `left | `right | `both
    | `inline_start [@bs.as "inline-start"]
    | `inline_end [@bs.as "inline-end"]
    ]
    [@@bs.deriving jsConverter]
end

(* TODO find the specs for these *)
module ParentRelative = struct
  (** {{: https://www.w3.org/TR/CSS22/propidx.html } Property table} *)

  module Convert = struct
    type t =
      [
      | `baseline | `sub | `super | `text_top [@bs.as "text-top"]
      | `text_bottom [@bs.as "text-bottom"] | `middle
      ]
      [@@bs.deriving jsConverter]
  end

  type t =
    [
    | `baseline | `sub | `super | `text_top | `text_bottom | `middle
    | `length of Css_Unit.Length.t | `percent of Css_Unit.Percent.t
    ]

  let show: t -> string = function
  | ( `baseline | `sub | `super | `text_top | `text_bottom | `middle ) as t ->
    Convert.tToJs t
  | `length distance -> Css_Unit.Length.show distance
  | `percent percent -> Css_Unit.Percent.tToJs percent
end

module LineRelative = struct
  (** {{: https://www.w3.org/TR/CSS22/propidx.html } Property table} *)

  type t = [ `top | `bottom ] [@@bs.deriving jsConverter]
end

module Unit = struct
  type t = float * Css_Unit.t 

  let show ((amount, unit'): t): string =
    let amount' =
      amount |> string_of_float |> Js.String.replaceByRe [%re "/\.$/"] ""
    in
    amount' ^ Css_Unit.show unit' 
end
