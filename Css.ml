module Unit = struct
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
  end

  module Frequency = struct
    (** {{: https://www.w3.org/TR/css-values/#frequency } Frequency Units} *)

    type t = [ `Hz | `kHz ] [@@bs.deriving jsConverter]
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
end


module Value = struct
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
      | `length of Unit.Length.t | `percent of Unit.Percent.t
      ]

    let show: t -> string = function
    | ( `baseline | `sub | `super | `text_top | `text_bottom | `middle ) as t ->
      Convert.tToJs t
    | `length distance -> Unit.Length.show distance
    | `percent percent -> Unit.Percent.tToJs percent
  end

  module LineRelative = struct
    (** {{: https://www.w3.org/TR/CSS22/propidx.html } Property table} *)

    type t = [ `top | `bottom ] [@@bs.deriving jsConverter]
  end

  module Unit = struct
    type t = float * Unit.t 

    let show ((amount, unit'): t): string =
      let amount' =
        amount |> string_of_float |> Js.String.replaceByRe [%re "/\.$/"] ""
      in
      amount' ^ Unit.show unit' 
  end
end


module Property = struct
  (**
   This module defines the CSS properties

   The types correspond to the {{: https://www.w3.org/TR/CSS2/about.html#applies-to } applies to} 
   description for styles for which display property is required for it to render

   See the {{: https://www.w3.org/TR/CSS22/propidx.html } CSS 2.2 full property table} for reference
   *)

  type 'style t

  (* TODO: instead of abstract types use for ex: TextAlign.t here *)
  type text_align
   and vertical_align
   and color
   and clear

  type any = [ `color of color t ]
  type block = [ `text_align of text_align t | `clear of clear t | any ]
  type inline = [ `vertical_align of vertical_align t | any ]
  type table_cell = [ `vertical_align of vertical_align t | any ]
  type display = [ block | inline | table_cell ]
end


module Selector = struct
  module Element = struct
    (**
     {{: https://www.w3.org/TR/selectors-3/#type-selectors } Type}, and
     {{: https://www.w3.org/TR/selectors-3/#universal-selector } Universal} selectors
     *)

    type t =
      [
      | `a | `area | `input | `select | `textarea | `button | `iframe
      | `h1 | `h2 | `h3 | `h4 | `h5
      | `span | `div
      | `any [@bs.as "*"]
      ]
      [@@bs.deriving jsConverter]

    let show = tToJs
  end

  module Attribute = struct
    (** {{: https://www.w3.org/TR/selectors-3/#attribute-selectors } Attribute selectors} *)

    type t =
      [
      | `has of                  string | `equals    of string * string
      | `starts_with of string * string | `ends_with of string * string
      ]

    let show: t -> string = function 
    | `has                  name -> "["^ name ^"]"
    | `equals      (name, value) -> "["^ name ^"=\""^  value ^"\"]"
    | `starts_with (name, value) -> "["^ name ^"^=\""^ value ^"\"]"
    | `ends_with   (name, value) -> "["^ name ^"$=\""^ value ^"\"]"
  end

  module Class = struct
    (** {{: https://www.w3.org/TR/selectors-3/#class-html } Class selector} *)

    type t = [ `class_name of string ]
    let show (`class_name class_name: t): string = "." ^ class_name
  end

  module Id = struct
    (** {{: https://www.w3.org/TR/selectors-3/#id-selectors } ID selector} *)

    type t = [ `id of string ]

    let show (`id id: t): string = "#" ^ id
  end

  module Target = struct
    type t = [ Element.t | Class.t | Id.t ]

    let show: t -> string = function
    | `class_name _ as class_name -> Class.show class_name
    | `id _ as id -> Id.show id
    | ( `a | `area | `input | `select | `textarea | `button | `iframe
      | `h1 | `h2 | `h3 | `h4 | `h5
      | `span | `div
      | `any
      ) as element ->
      Element.show element
  end

  module PseudoClass = struct
    (**
     {{: https://www.w3.org/TR/selectors-3/#the-user-action-pseudo-classes-hover-act } User action}, 
     {{: https://www.w3.org/TR/selectors-3/#target-pseudo } Target}, 
     {{: https://www.w3.org/TR/selectors-3/#lang-pseudo } Lang}, and
     {{: https://www.w3.org/TR/selectors-3/#UIstates } UI state} pseudo-classes
     *)

    type pseudo_class =
      [ `hover | `active | `target | `enabled | `disabled | `checked ]
      [@@bs.deriving jsConverter]

    type t = [ pseudo_class | `lang of string ]

    let show: t -> string = function
    | ( `hover | `active | `target | `enabled | `disabled | `checked )
      as pseudo_class ->
      ":" ^ pseudo_classToJs pseudo_class
    | `lang language -> ":lang("^ language ^")"
  end

  module StructuralPseudoClass = struct
    (** {{: https://www.w3.org/TR/selectors-3/#structural-pseudos } Structural pseudo-classes} *)

    type nth_pseudo_class =
      [
      | `nth_child        of int * int | `nth_of_type of int * int
      | `nth_last_of_type of int * int
      ]

    type structural_pseudo_class =
      [
      | `root         | `first_child  | `last_child   | `first_of_type
      | `last_of_type | `only_child   | `only_of_type | `empty
      ]
      [@@bs.deriving jsConverter]

    type t = [ nth_pseudo_class | structural_pseudo_class ]

    let show: t -> string = function
    | `nth_child (n, m) ->
      ":nth-child("^ Js.Int.toString n ^"n + "^ Js.Int.toString m ^")"
    | `nth_of_type (n, m) ->
      ":nth-of-type("^ Js.Int.toString n ^"n + "^ Js.Int.toString m ^")"
    | `nth_last_of_type (n, m) ->
      ":nth-last-of-type("^ Js.Int.toString n ^"n + "^ Js.Int.toString m ^")"
    | ( `root         | `first_child | `last_child   | `first_of_type
      | `last_of_type | `only_child  | `only_of_type | `empty
      ) as pseudo_class ->
      Util.underscore_to_dash @@ ":"^ structural_pseudo_classToJs pseudo_class
  end

  module PseudoElement = struct
    type t =
      [
      | `first_line [@bs.as "first-line"]
      | `first_letter [@bs.as "first-letter"]
      | `before | `after
      ]
      [@@bs.deriving jsConverter]

    let show = tToJs
  end

  module type Selector = sig
    (**
     This module is for all CSS selectors. In addition to including all the 
     variants from {!Attribute.t}, {!Target.t}, {!PseudoClass.t},
     {!StructuralPseudoClass.t}, and {!PseudoElement.t}, it includes the 
     {{: https://www.w3.org/TR/selectors-3/#combinators } combinators}, 
     {{: https://www.w3.org/TR/selectors-3/#negation } negation pseudo-class}, 
     {{: https://www.w3.org/TR/selectors-3/#the-link-pseudo-classes-link-and-visited } link pseudo-classes}, and the
     {{: https://www.w3.org/TR/selectors-3/#the-user-action-pseudo-classes-hover-act } hover pseudo-class}.

     The {!Anchor} and {!Focusable} modules are for the special pseudo-classes 
     [:link], [:visited], and [:hover], which match only specific selectors for 
     a subset of elements.
     *)

    type anchor and focusable
    type t =
      [
      | Attribute.t | Target.t | PseudoClass.t | StructuralPseudoClass.t
      | PseudoElement.t
      | `not of t | `not' of t * t
      | `attribute of t * Attribute.t
      | `pseudo_class of t * PseudoClass.t
      | `structural_pseudo_class of t * StructuralPseudoClass.t 
      | `pseudo_element of t * PseudoElement.t
      | `descendant of t list | `child    of t list
      | `sibling    of t list | `adjacent of t list
      | `link of anchor | `visited of anchor | `focus of focusable
      ]

    val show : t -> string
  end

  module type Anchor = sig
    (**
     Represents a selector that targets an anchor element. This is used for the
     {{: https://www.w3.org/TR/selectors-3/#the-link-pseudo-classes-link-and-visited } link pseudo-classes} ([:link] and [:visited]), which only work on 
     {{: https://www.w3.org/TR/html52/textlevel-semantics.html#the-a-element } anchor} tags
     *)

    type t and selector
    val to_selector: t -> selector
    val make : selector -> t option
  end

  module type Focusable = sig
		(**
     This module captures selectors that target focusable elements.

     Elements that are focusable are either:
      - Defined to have a [focus()] method in the 
        {{: https://www.w3.org/TR/DOM-Level-2-HTML/html.html} DOM Level 2} spec
      - Any element with a [tabindex] 
      - Any element that is [contenteditable]
     *)

    type t and selector
    val to_selector: t -> selector
    val make : selector -> t option
  end

  module rec Selector: Selector with type anchor    = Anchor.t
                                 and type focusable = Focusable.t = struct
    type anchor = Anchor.t and focusable = Focusable.t
    type t =
      [
      | Attribute.t | Target.t | PseudoClass.t | StructuralPseudoClass.t
      | PseudoElement.t
      | `not of t | `not' of t * t
      | `attribute of t * Attribute.t
      | `pseudo_class of t * PseudoClass.t
      | `structural_pseudo_class of t * StructuralPseudoClass.t 
      | `pseudo_element of t * PseudoElement.t
      | `descendant of t list | `child    of t list
      | `sibling    of t list | `adjacent of t list
      | `link of Anchor.t | `visited of Anchor.t | `focus of Focusable.t
      ]

    let rec show: t -> string = function
    | ( `a | `area | `input | `select | `textarea | `button | `iframe
      | `h1 | `h2 | `h3 | `h4 | `h5
      | `span | `div | `any
      | `class_name _ | `id _ 
      ) as target ->
      Target.show target

    | `not s -> ":not("^ show s ^")"

    | ( `has _ | `equals _ | `starts_with _ | `ends_with _ ) as attribute ->
      Attribute.show attribute

    | ( `hover | `active | `target | `enabled | `disabled | `checked
      | `lang _
      ) as pseudo_class ->
      PseudoClass.show pseudo_class
    
    | ( `nth_child _ | `nth_of_type _ | `nth_last_of_type _ 
      | `root         | `first_child | `last_child   | `first_of_type
      | `last_of_type | `only_child  | `only_of_type | `empty
      ) as pseudo_class ->
      StructuralPseudoClass.show pseudo_class

    | ( `first_line | `first_letter | `before | `after ) as pseudo_element ->
      PseudoElement.show pseudo_element

    | `attribute (s, attribute) ->
      show s ^ Attribute.show attribute
    | `pseudo_class (s, attribute) ->
      show s ^ PseudoClass.show attribute
    | `structural_pseudo_class (s, attribute) ->
      show s ^ StructuralPseudoClass.show attribute
    | `pseudo_element (s, attribute) ->
      show s ^ PseudoElement.show attribute
    | `not' (s1, s2) -> show s1 ^ show s2
   
    | ( `descendant _ | `child _ | `sibling _ | `adjacent _ ) as combinator ->
      show_combinator combinator

    | `link anchor ->
      show (Anchor.to_selector anchor) ^ ":link"
    | `visited anchor ->
      show (Anchor.to_selector anchor) ^ ":visited"
    | `focus focusable ->
      show (Focusable.to_selector focusable) ^ ":focus"

    and show_combinator c =
      let (ss, separator) =
        match c with
        | `descendant ss -> (ss,   " ")
        | `child      ss -> (ss, " > ")
        | `sibling    ss -> (ss, " ~ ")
        | `adjacent   ss -> (ss, " + ")
      in
      ss |. Belt.List.map show |> Js.List.toVector |> Js.Array.joinWith separator
  end

  and Anchor: Anchor with type selector = Selector.t = struct
    type selector = Selector.t
    type t

    external to_selector: t -> Selector.t = "%identity"

    let rec is_anchor: Selector.t -> bool = function
    | `descendant ss | `child ss | `sibling ss | `adjacent ss ->
      Js.List.nth ss (Js.List.length ss - 1)
      |. Belt.Option.mapWithDefault false is_anchor

    | `attribute (s, _) | `pseudo_class (s, _) | `structural_pseudo_class (s, _)
    | `pseudo_element (s, _) | `not' (s, _) ->
      is_anchor s

    | `a -> true
    | _ -> false

    let make s = if is_anchor s then Some (Obj.magic s) else None
  end

  and Focusable: Focusable with type selector = Selector.t = struct
		(* https://stackoverflow.com/questions/1599660/which-html-elements-can-receive-focus *)

    type selector = Selector.t
    type t

    external to_selector: t -> Selector.t = "%identity"

    (** Matches on all focusable selectors *)
    let rec is_focusable: Selector.t -> bool = function
    | `attribute (`a,                 `has "href")
    | `attribute (`a,         `equals ("href", _))
    | `attribute (`a,    `starts_with ("href", _))
    | `attribute (`a,      `ends_with ("href", _))
    | `attribute (`area,              `has "href")
    | `attribute (`area,      `equals ("href", _))
    | `attribute (`area, `starts_with ("href", _))
    | `attribute (`area,   `ends_with ("href", _))
    | `not' (`input,    `has "disabled")
    | `not' (`select,   `has "disabled")
    | `not' (`textarea, `has "disabled")
    | `not' (`button,   `has "disabled")
    | `iframe
    | `has "tabindex"
    | `equals ("contentEditable", "true") -> true

    | `descendant ss | `child ss | `sibling ss | `adjacent ss ->
      Js.List.nth ss (Js.List.length ss - 1)
      |. Belt.Option.mapWithDefault false is_focusable

    | `attribute (s, _) | `pseudo_class (s, _) | `structural_pseudo_class (s, _)
    | `pseudo_element (s, _) | `not' (s, _) ->
      is_focusable s

    | _ -> false

    let make s = if is_focusable s then Some (Obj.magic s) else None
  end


  module Infix = struct
    (** Defines infix operators for selectors *)

    type pseudo_class =
      [ PseudoClass.t | StructuralPseudoClass.t | `not of Selector.t ]

    (** Attribute [=] operator (ie: [a\[href="foo"\]]) *)
    let (:=) name value = `equals (name, value)

    (** Attribute [^=] operator (ie: [a\[href^="foo"\]]) *)
    let (^=) name value = `starts_with (name, value)

    (** Attribute [$=] operator (ie: [a\[href$="foo"\]]) *)
    let ($=) name value = `ends_with (name, value)

    (** Right-associative form of the attribute [=] operator *)
    let (@:=) = (:=)

    (** Right-associative form of the attribute [^=] operator *)
    let (@^=) = (^=)

    (** Right-associative form of the attribute [$=] operator *)
    let (@$=) = ($=)

    (** [target\[attribute\]] operator *)
    let (|=) target attribute: Selector.t = `attribute (target, attribute)

    (** Pseudo-class operator (ie: [a:hover]) *)
    let (|:) (s: Selector.t) (c: pseudo_class): Selector.t =
      match c with
      | ( `lang _ | `hover | `active | `target | `enabled | `disabled
        | `checked
        ) as pseudo_class ->
        `pseudo_class (s, pseudo_class)
      | ( `nth_child _ | `nth_of_type _ | `nth_last_of_type _ | `root
        | `first_child | `last_child    | `first_of_type      | `last_of_type
        | `only_child  | `only_of_type  | `empty
        ) as structural_pseudo_class ->
        `structural_pseudo_class (s, structural_pseudo_class)
      | `not s' -> `not' (s, s')

    (** Pseudo-element operator (ie: [h1::after]) *)
    let (|::) t e: Selector.t = `pseudo_element (t, e)

    (** Child operator (ie: [div > button]) *)
    let (|>.) parent child: Selector.t =
      match (parent, child) with
      | (`child c1, `child c2) -> `child (List.append c1 c2)
      | (`child c1, _) -> `child (List.append c1 [child])
      | (_, `child c2) -> `child (parent :: c2)
      | _ -> `child [parent; child]

    (** Descendant operator (ie: [div button]) *)
    let (|..) parent child: Selector.t =
      match (parent, child) with
      | (`descendant c1, `descendant c2) -> `descendant (List.append c1 c2)
      | (`descendant c1, _) -> `descendant (List.append c1 [child])
      | (_, `descendant c2) -> `descendant (parent :: c2)
      | _ -> `descendant [parent; child]

    (** Sibling operator (ie: [h1 ~ span]) *)
    let (|~) sibling1 sibling2: Selector.t =
      match (sibling1, sibling2) with
      | (`sibling s1, `sibling s2) -> `sibling (List.append s1 s2)
      | (`sibling s1, _) -> `sibling (List.append s1 [sibling2])
      | (_, `sibling s2) -> `sibling (sibling1 :: s2)
      | _ -> `sibling [sibling1; sibling2]

    (** Adjacent operator (ie: [h1 + span]) *)
    let (|+) sibling1 sibling2: Selector.t =
      match (sibling1, sibling2) with
      | (`adjacent s1, `adjacent s2) -> `adjacent (List.append s1 s2)
      | (`adjacent s1, _) -> `adjacent (List.append s1 [sibling2])
      | (_, `adjacent s2) -> `adjacent (sibling1 :: s2)
      | _ -> `adjacent [sibling1; sibling2]
  end

  type t = Selector.t
  let show = Selector.show
end


module Rule = struct
  (* TODO *)
  type 'a t = { selector: Selector.t list; declaration: 'a Property.t list }
end


module Module = struct
  (* TODO: fix comment *)
  (**
   Motivation
    - CSS is supposed to decouple the structure (HTML) with it's
      representation (CSS), but selectors do exactly that: .foo h1,
      .bar [rel="foo"], .baz::nth-child(3n) etc
    - The HTML itself should be dealing with these kinds of relationships,
      not CSS
    - What's worse if that these are weak references. If something in the HTML
      structure changes, it can break the CSS. If an element changes from a 
      block to an inline element, it can prevent styles from rendering.
    - Theming should be handled at the application/component level like 
      css-modules, to avoid these weak references
   
    - modules
      - takes a list of \@media scoped rulesets
      - does not support css that's coupled with html, such as
        structural pseudoclasses
   *)

  (* https://www.w3.org/TR/2011/REC-css3-selectors-20110929/ *)

  (* Creates css modules -- scoped styles that are namespaced by it's class 
   * name
   *)
  type 'a t = { name: string; declaration: 'a array }

  external hrtime: unit -> int * int = "" [@@bs.scope "process"] [@@bs.val]

  let getClass ?(className="") ?(cssModule={name=""; declaration=[||]}) () =
    let {name} = cssModule in
    let separator = if className = "" || name = "" then "" else " " in
    Js.String.trim @@ className ^ separator ^ name

  let make declaration =
    let (s, ms) = hrtime () in
    {name = "m" ^ (Js.Int.toString s) ^ "_" ^ (Js.Int.toString ms); declaration}
end


module Stylesheet = struct
  (* TODO:
   * stylesheet takes a list of:
   *  - directives ie @charset or @font-face
   *  - A `selector list` (which will be comma delimited) with a ruleset
   *  - css modules
   *)

  module Charset = struct
    (**
     {{: https://www.w3.org/International/questions/qa-css-charset#atcharset } Using \@charset }

     {{: https://encoding.spec.whatwg.org/#names-and-labels } List of encodings }
     *)

    (* TODO: add bs.as *)
    type t = 
      [
      | `big5 | `euc_kr | `iso_8859_1 | `iso_8859_2 | `iso_8859_3 | `iso_8859_4
      | `iso_8859_5 | `iso_8859_6 | `iso_8859_7 | `iso_8859_8 | `koi8_r
      | `shift_jis | `x_euc | `utf_8 | `utf_16 | `windows_1250 | `windows_1251
      | `windows_1252 | `windows_1253 | `windows_1254 | `windows_1255
      | `windows_1256 | `windows_1257 | `windows_1258 | `windows_874
      ]
      [@@bs.deriving jsConverter]
  end


  module Media = struct
    (**
     {e NOTE:}
     This is currently based on the W3C candidate recommendation for
     media queries 4. This API is compatible with CSS3 media queries. Follow
     the CSS3 spec instead for better compatibility

     {{: https://www.w3.org/TR/css3-mediaqueries/ } Media Queries 3}

     {{: https://www.w3.org/TR/mediaqueries-4/ } Media Queries 4}

     {{: https://www.w3.org/TR/mediaqueries-4/#mq-ranges } Discrete vs Range types}
     *)

    module Discrete = struct
      module Convert = struct
        type t =
          [
          | `portrait | `landscape | `interlace | `progressive | `slow | `fast
          | `optional_paged [@bs.as "optional-paged"] | `paged | `scroll
          | `srgb | `p3 | `rec2020 | `coarse | `fine | `hover  | `none
          ]
          [@@bs.deriving jsConverter]
      end

      module Value = struct
        type orientation     = [ `portrait | `landscape ]
        type scan            = [ `interlace | `progressive ]
        type update          = [ `none | `slow | `fast ]
        type overflow_block  = [ `none | `scroll | `optional_paged | `paged ]
        type overflow_inline = [ `none | `scroll ]
        type color_gamut     = [ `srgb | `p3 | `rec2020 ]
        type pointer         = [ `none | `coarse | `fine ]
        type hover           = [ `none | `hover ]
      end

      type orientation     = [ `orientation of Value.orientation ]
      type scan            = [ `scan of Value.scan ]
      type grid            = [ `grid ]
      type bitmap          = [ `bitmap ]
      type update          = [ `update of Value.update ]
      type overflow_block  = [ `overflow_block of Value.overflow_block ]
      type overflow_inline = [ `overflow_inline of Value.overflow_inline ]
      type color_gamut     = [ `color_gamut of Value.color_gamut ]
      type pointer         = [ `pointer of Value.pointer ]
      type any_pointer     = [ `any_pointer of Value.pointer ]
      type hover           = [ `hover of Value.hover ]
      type any_hover       = [ `any_hover of Value.hover ]

      type t =
        [
        | orientation | scan | grid | bitmap | update | overflow_block
        | overflow_inline | color_gamut | pointer | hover | any_pointer
        | any_hover
        ]

      let show: t -> string = function
      | `orientation orientation ->
        "orienttion: " ^ Convert.tToJs (orientation :> Convert.t)
      | `scan scan ->
        "scan: " ^ Convert.tToJs (scan :> Convert.t)
      | `grid -> "grid: 1"
      | `bitmap -> "grid: 0"
      | `update update ->
        "update: " ^ Convert.tToJs (update :> Convert.t)
      | `overflow_block overflow_block ->
        "overflow-block: " ^ Convert.tToJs (overflow_block :> Convert.t)
      | `overflow_inline overflow_inline ->
        "overflow-inline: " ^ Convert.tToJs (overflow_inline :> Convert.t)
      | `color_gamut color_gamut ->
        "color-gamut: " ^ Convert.tToJs (color_gamut :> Convert.t)
      | `pointer pointer ->
        "pointer: " ^ Convert.tToJs (pointer :> Convert.t)
      | `hover hover ->
        "hover: " ^ Convert.tToJs (hover :> Convert.t)
      | `any_pointer pointer ->
        "any-pointer: " ^ Convert.tToJs (pointer :> Convert.t)
      | `any_hover hover ->
        "any-hover: " ^ Convert.tToJs (hover :> Convert.t)
    end

    module Range = struct
      (** {{: https://www.w3.org/TR/mediaqueries-4/#mq-range-context } Range Context} *)

      type resolution    = [ `resolution of float * Unit.Resolution.t ]
      type width         = [ `width of float * Unit.Length.t ]
      type height        = [ `height of float * Unit.Length.t ]
      type aspect_ratio  = [ `aspect_ratio of int * int ]
      type color         = [ `color of int ]
      type color_index   = [ `color_index of int ]
      type monochrome    = [ `monochrome of int ]
      type device_width  = [ `device_width of float * Unit.Length.t ]
      type device_height = [ `device_height of float * Unit.Length.t ]

      type min_max = [ `min | `max ] [@@bs.deriving jsConverter]

      type compare =
        [
        | `eq [@bs.as " = "] | `lt [@bs.as " < "] | `le [@bs.as " <= "]
        | `gt [@bs.as " > "] | `ge [@bs.as " >= "] | `none [@bs.as ": "]
        ]
        [@@bs.deriving jsConverter]

      type range =
        [
        | width | height | aspect_ratio | resolution | color | color_index
        | monochrome | device_width | device_height
        ]

      type t = [ `range of min_max option * compare * range ]

      let make ?(m: min_max option) ?(c: compare = `none) (r: range): t =
        `range (m, c, r)

      let width ?(m: min_max option) ?(c: compare = `none) amount unit_ =
        `range (m, c, `width (amount, unit_))

      let show (`range (min_max, c, range): t): string =
        let value = match range with
        | `resolution resolution ->
          "resolution" ^
          compareToJs c ^ Value.Unit.show (resolution :> Value.Unit.t)
        | `width width ->
          "width" ^
          compareToJs c ^ Value.Unit.show (width :> Value.Unit.t)
        | `height height ->
          "height" ^ compareToJs c ^ Value.Unit.show (height :> Value.Unit.t)
        | `aspect_ratio (a, b) ->
          "aspect-ratio" ^ compareToJs c ^ string_of_int a ^"/"^ string_of_int b
        | `color color ->
          "color" ^ compareToJs c ^ string_of_int color
        | `color_index color_index -> 
          "color-index" ^ compareToJs c ^ string_of_int color_index
        | `monochrome monochrome ->
          "monochrome" ^ compareToJs c ^ string_of_int monochrome
        | `device_width device_width ->
          "device-width" ^
          compareToJs c ^ Value.Unit.show (device_width :> Value.Unit.t)
        | `device_height device_height ->
          "device-height" ^
          compareToJs c ^ Value.Unit.show (device_height :> Value.Unit.t)
        in
        let min_max' =
          min_max |. Belt.Option.mapWithDefault "" (fun m -> min_maxToJs m ^ "-")
        in
        min_max' ^ value
    end

    module MediaType = struct
      (** {{: https://www.w3.org/TR/mediaqueries-4/#media-types } Media Type} *)

      module Convert = struct
        type t =
          [
          | `all | `braille | `embossed | `handheld | `print | `projection
          | `screen | `speech | `tty | `tv
          ]
          [@@bs.deriving jsConverter]
      end

      type all      = [ `all ]      and braille    = [ `braille ]
       and embossed = [ `embossed ] and handheld   = [ `handheld ]
       and print    = [ `print ]    and projection = [ `projection ]
       and screen   = [ `screen ]   and speech     = [ `speech ]
       and tty      = [ `tty ]      and tv         = [ `tv ]

      type t =
        [
        | all | braille | embossed | handheld | print | projection | screen
        | speech | tty | tv
        ]

      let show: t -> string = Convert.tToJs
    end

    module MediaFeature = struct
      (** {{: https://www.w3.org/TR/mediaqueries-4/#mq-features } Media Feature} *)

      type t = [ Discrete.t | Range.t ]

      let show: t -> string = function
      | ( `orientation _ | `scan _ | `grid | `bitmap | `update _
        | `overflow_block _ | `overflow_inline _ | `color_gamut _
        | `pointer _ | `any_pointer _ | `hover _ | `any_hover _ ) as discrete ->
        Discrete.show discrete
      | `range _ as range ->
        Range.show range
    end

    module MediaCondition = struct
      (** {{: https://www.w3.org/TR/mediaqueries-4/#media-conditions } Media Condition} *)

      type t =
        [
        | `not of t | `and_ of t list | `or_ of t list | `group of t
        | MediaFeature.t
        ]

      let rec show: t -> string = function
      | ( `orientation _ | `scan _ | `grid | `bitmap | `update _
        | `overflow_block _ | `overflow_inline _ | `color_gamut _
        | `pointer _ | `any_pointer _ | `hover _ | `any_hover _ | `range _
        ) as media_feature ->
        "("^ MediaFeature.show media_feature ^")"
      | `not condition -> "not "^ show condition
      | `and_ xs -> xs |> Js.List.toVector |> Js.Array.joinWith " and "
      | `or_  xs -> xs |> Js.List.toVector |> Js.Array.joinWith " or "
      | `group condition -> "("^ show condition ^")"
    end

    module Informative = struct
      module MediaFeatureGroup = struct
        (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-dimensions } Dimensions} *)
        type dimension =
          [ 
          | Range.width | Range.height | Range.aspect_ratio
          | Discrete.orientation
          ]

        (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-display-quality } Display Quality} *)
        type display_quality =
          [
          | Range.resolution | Discrete.scan | Discrete.grid
          | Discrete.update | Discrete.overflow_block | Discrete.overflow_inline
          ]

        (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-colors } Color} *)
        type color =
          [
          | Range.color | Range.color_index | Range.monochrome
          | Discrete.color_gamut
          ]

        (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-interaction } Interaction} *)
        type interaction =
          [
          | Discrete.pointer | Discrete.hover
          | Discrete.any_pointer | Discrete.any_hover
          ]
      end

      module MediaGroup = struct
        (** {{: https://www.w3.org/TR/CSS2/media.html#media-groups } Media Group} *)

        type continuous =
          [
          | MediaType.braille | MediaType.handheld | MediaType.screen
          | MediaType.speech | MediaType.tty | MediaType.tv
          ]

        type paged =
          [
          | MediaType.embossed | MediaType.handheld | MediaType.print
          | MediaType.projection | MediaType.tv
          ]

        type visual =
          [
          | MediaType.handheld | MediaType.print | MediaType.projection
          | MediaType.screen | MediaType.tty | MediaType.tv
          ]

        type audio = [ MediaType.handheld | MediaType.screen | MediaType.tv ]

        type speech = [ MediaType.handheld | MediaType.speech ]

        type tactile = [ MediaType.braille | MediaType.embossed ]

        type grid =
          [
          | MediaType.braille | MediaType.embossed | MediaType.handheld
          | MediaType.tty
          ]

        type bitmap =
          [
          | MediaType.handheld | MediaType.print | MediaType.projection
          | MediaType.screen | MediaType.tv
          ]

        type interactive =
          [
          | MediaType.braille | MediaType.handheld | MediaType.projection
          | MediaType.screen | MediaType.speech | MediaType.tty | MediaType.tv
          ]

        type static =
          [
          | MediaType.braille | MediaType.embossed | MediaType.handheld
          | MediaType.print | MediaType.screen | MediaType.speech
          | MediaType.tty | MediaType.tv
          ]

        type t = [ continuous | paged | visual | audio | speech | tactile ] 
      end
    end

    module Modifier = struct
      (** @see < https://www.w3.org/TR/mediaqueries-4/#mq-prefix > *)

      type t =
        [ `not of MediaType.t | `only of MediaType.t | MediaType.t ]

      let show: t -> string = function
      | `not media_type -> "not " ^ MediaType.show media_type
      | `only media_type -> "only " ^ MediaType.show media_type
      | ( `all        | `braille | `embossed | `handheld | `print
        | `projection | `screen  | `speech   | `tty      | `tv
        ) as media_type ->
        MediaType.show media_type
    end

    module MediaQuery = struct
      (** @see < https://www.w3.org/TR/mediaqueries-4/#media-query > *)

      type t =
        [ `media_query of Modifier.t * MediaCondition.t | MediaCondition.t ]

      let media
        ?(t: Modifier.t option) (condition: MediaCondition.t): t =
        match t with
        | Some modifier -> `media_query (modifier, condition)
        | None -> (condition :> t)

      let show: t -> string = function
      | `media_query (modifier, media_condition) ->
        Modifier.show modifier ^" and "^ MediaCondition.show media_condition
      | ( `orientation _ | `scan _ | `grid | `bitmap | `update _
        | `overflow_block _ | `overflow_inline _ | `color_gamut _
        | `pointer _ | `any_pointer _ | `hover _ | `any_hover _ | `range _
        | `not _ | `and_ _  | `or_ _  | `group _ 
        ) as media_condition ->
        MediaCondition.show media_condition
    end

    (**
     {{: https://www.w3.org/TR/mediaqueries-4/#mq-list } Media Query List}

     {{: https://www.w3.org/TR/mediaqueries-4/#media } Media Queries}
     *)
    type t = MediaQuery.t list

    let tToJs (t: t): string =
      t |> List.map MediaQuery.show |> Js.List.toVector |> Js.Array.joinWith ", "
  end

  (**
   @see < https://www.w3.org/TR/mediaqueries-4/ >
   @see < https://www.w3.org/TR/css3-conditional/#at-supports >
   @see < https://www.w3.org/TR/css-page-3/#at-page-rule >
   @see < https://www.w3.org/TR/css-fonts-3/#font-face-rule >
   *)
  type rule = [ `media of Media.t | `page | `supports | `font_face | `style ]

  type t = Stylesheet of Charset.t * rule list 
end
