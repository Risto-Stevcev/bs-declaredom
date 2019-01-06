(** HTML Attributes *)

type t = Declaredom.property Js.Dict.t

module LinkType = struct
  (** {{: https://www.w3.org/TR/html52/links.html#sec-link-types} Link Types} *)

  module Link = struct
    type t =
      [ `alternate | `author | `help | `icon | `license | `next | `prev
      | `search | `stylesheet ]
      [@@bs.deriving jsConverter]

    let show = tToJs
  end

  module Hyperlink = struct
    type t =
      [ `alternate | `author | `bookmark | `help | `license | `next | `nofollow
      | `noopener | `noreferrer | `prev | `search | `tag ]
      [@@bs.deriving jsConverter]

    let show = tToJs
  end

  type t = [ Link.t | Hyperlink.t ]
end


module ReferrerPolicy = struct
  (** {{: https://www.w3.org/TR/referrer-policy/#referrer-policies} Referrer Policies} *)

  type t =
    [ `no_referrer [@bs.as "no-referrer"]
    | `no_referrer_when_downgrade [@bs.as "no-referrer-when-downgrade"]
    | `same_origin [@bs.as "same-origin"]
    | `origin
    | `strict_origin [@bs.as "strict-origin"]
    | `origin_when_cross_origin [@bs.as "origin-when-cross-origin"]
    | `strict_origin_when_cross_origin [@bs.as "strict-origin-when-cross-origin"]
    | `unsafe_url [@bs.as "unsafe-url"]
    ]
    [@@bs.deriving jsConverter]

  let show = tToJs
end


module Aria = struct
  (** {{: https://www.w3.org/TR/html52/dom.html#allowed-aria-roles-states-and-properties} Aria Roles} *)

  module Expanded = struct
    external _make: ?aria_expanded:string -> unit -> t = "" [@@bs.obj]

    let make ?aria_expanded () =
      _make
        ?aria_expanded:(Belt.Option.map aria_expanded Util.string_of_unit)
        ()
  end

  module Global = struct
    external _make:
      ?aria_atomic:string ->
      ?aria_busy:string ->
      ?aria_controls:string ->
      ?aria_current:string ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:string ->
      ?aria_dropeffect:string ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:string ->
      ?aria_haspopup:string ->
      ?aria_hidden:string ->
      ?aria_invalid:string ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:string ->
      ?aria_owns:string ->
      ?aria_relevant:string ->
      ?aria_roledescription:string ->
      unit ->
      t = "" [@@bs.obj]

    let make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription () =
      _make ?aria_atomic
        ?aria_busy:(Belt.Option.map aria_busy Util.string_of_unit)
        ?aria_controls
        ?aria_current:(Belt.Option.map aria_current Util.string_of_unit)
        ?aria_describedby ?aria_details
        ?aria_disabled:(Belt.Option.map aria_disabled Util.string_of_unit)
        ?aria_dropeffect ?aria_errormessage ?aria_flowto
        ?aria_grabbed:(Belt.Option.map aria_grabbed Util.string_of_unit)
        ?aria_haspopup
        ?aria_hidden:(Belt.Option.map aria_hidden Util.string_of_unit)
        ?aria_invalid:(Belt.Option.map aria_invalid Util.string_of_unit)
        ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription
        ()
  end
end


module Global = struct
  (** {{: https://www.w3.org/TR/html52/dom.html#global-attributes} Global Attributes} *)
  (* TODO: Some of these attributes are only meaningful for certain elements *)

  module Value = struct
    module Dir = struct
      type t = [ `rtl | `ltr | `auto ] [@@bs.deriving jsConverter]

      let show = tToJs
    end

    module Translate = struct
      type t = [ `yes | `no ] [@@bs.deriving jsConverter]

      let show = tToJs
    end
  end

  external _make:
    ?accessKey:string ->
    ?className:string ->
    ?classSet:bool Js.Dict.t ->
    ?contentEditable:string ->
    ?dataSet:string Js.Dict.t ->
    ?dir:string ->
    ?draggable:string ->
    ?hidden:string ->
    ?id:string ->
    ?lang:string ->
    ?spellCheck:string ->
    ?style:string Js.Dict.t ->
    ?tabIndex:string ->
    ?title:string ->
    ?translate:string ->
    unit ->
    t = "" [@@bs.obj]

  let make
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?style ?tabIndex ?title ?translate
    () =
    _make
      ?accessKey ?className ?classSet
      ?contentEditable:(Belt.Option.map contentEditable string_of_bool) ?dataSet
      ?dir:(Belt.Option.map dir Value.Dir.show)
      ?draggable:(Belt.Option.map draggable string_of_bool)
      ?hidden:(Belt.Option.map hidden Util.string_of_unit) ?id ?lang ?spellCheck
      ?style:(Belt.Option.map style Style.show_dict)
      ?tabIndex:(Belt.Option.map tabIndex string_of_int) ?title
      ?translate:(Belt.Option.map translate Value.Translate.show)
      ()
end
