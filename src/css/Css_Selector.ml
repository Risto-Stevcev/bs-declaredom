(** {{: https://www.w3.org/TR/selectors-3} CSS Selectors} *)

module Element = struct
  (**
   {{: https://www.w3.org/TR/selectors-3/#type-selectors } Type}, and
   {{: https://www.w3.org/TR/selectors-3/#universal-selector } Universal} Selectors
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
  (** {{: https://www.w3.org/TR/selectors-3/#attribute-selectors } Attribute Selectors} *)

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
  (** {{: https://www.w3.org/TR/selectors-3/#class-html } Class Selector} *)

  type t = [ `class_name of string ]
  let show (`class_name class_name: t): string = "." ^ class_name
end

module Id = struct
  (** {{: https://www.w3.org/TR/selectors-3/#id-selectors } ID Selector} *)

  type t = [ `id of string ]

  let show (`id id: t): string = "#" ^ id
end

module Target = struct
  type t = [ Element.t | Class.t | Id.t ]

  let show: t -> string = function
  | #Class.t as class_name -> Class.show class_name
  | #Id.t as id -> Id.show id
  | #Element.t as element ->
    Element.show element
end

module PseudoClass = struct
  (**
   {{: https://www.w3.org/TR/selectors-3/#the-user-action-pseudo-classes-hover-act } User Action},
   {{: https://www.w3.org/TR/selectors-3/#target-pseudo } Target},
   {{: https://www.w3.org/TR/selectors-3/#lang-pseudo } Lang}, and
   {{: https://www.w3.org/TR/selectors-3/#UIstates } UI State} Pseudo-Classes
   *)

  type pseudo_class =
    [ `hover | `active | `target | `enabled | `disabled | `checked ]
    [@@bs.deriving jsConverter]

  type t = [ pseudo_class | `lang of string ]

  let show: t -> string = function
  | #pseudo_class as pseudo_class ->
    ":" ^ pseudo_classToJs pseudo_class
  | `lang language -> ":lang("^ language ^")"
end

module StructuralPseudoClass = struct
  (** {{: https://www.w3.org/TR/selectors-3/#structural-pseudos } Structural Pseudo-Classes} *)

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
  | #structural_pseudo_class as pseudo_class ->
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
  | #Target.t as target ->
    Target.show target

  | `not s -> ":not("^ show s ^")"

  | #Attribute.t as attribute ->
    Attribute.show attribute

  | #PseudoClass.t as pseudo_class ->
    PseudoClass.show pseudo_class

  | #StructuralPseudoClass.t as pseudo_class ->
    StructuralPseudoClass.show pseudo_class

  | #PseudoElement.t as pseudo_element ->
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
    | #PseudoClass.t as pseudo_class ->
      `pseudo_class (s, pseudo_class)
    | #StructuralPseudoClass.t as structural_pseudo_class ->
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
