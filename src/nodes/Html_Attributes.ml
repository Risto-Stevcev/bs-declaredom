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


module Target = struct
  (** {{: https://www.w3.org/TR/html52/browsers.html#browsing-context-names} Browsing context} *)

  type value =
    [ `blank | `self | `parent | `top ] [@@bs.deriving jsConverter]

  type t = [ value | `browsing_context of string ]

  let show: t -> string = function
  | #value as value ->
    valueToJs value
  | `browsing_context name ->
    name
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


module CrossOrigin = struct
  (* TODO: add spec reference *)
  type t =
    [ `anonymous | `use_credentials [@bs.as "use-credentials"] ]
    [@@bs.deriving jsConverter]

  let show = tToJs
end


module AutoComplete = struct
  (** {{: https://www.w3.org/TR/html52/sec-forms.html#autofill-detail-tokens} Autofill detail tokens} *)

  type t =
    [ `on | `off | `name | `honorific_prefix [@bs.as "honorific-prefix"]
    | `given_name [@bs.as "given-name"]
    | `additional_name [@bs.as "additional-name"]
    | `family_name [@bs.as "family-name"]
    | `honorific_suffix [@bs.as "honorific-suffix"]
    | `nickname | `organization_title [@bs.as "organization-title"]
    | `username | `new_password [@bs.as "new-password"]
    | `current_password [@bs.as "current-password"]
    | `organization | `street_address [@bs.as "street-address"]
    | `address_line1 [@bs.as "address-line1"]
    | `address_line2 [@bs.as "address-line2"]
    | `address_line3 [@bs.as "address-line3"]
    | `address_level1 [@bs.as "address-level1"]
    | `address_level2 [@bs.as "address-level2"]
    | `address_level3 [@bs.as "address-level3"]
    | `address_level4 [@bs.as "address-level4"]
    | `country | `country_name [@bs.as "country-name"]
    | `postal_code [@bs.as "postal-code"] | `cc_name [@bs.as "cc-name"]
    | `cc_given_name [@bs.as "cc-given-name"]
    | `cc_additional_name [@bs.as "cc-additional-name"]
    | `cc_family_name [@bs.as "cc-family-name"]
    | `cc_number [@bs.as "cc-number"]
    | `cc_exp [@bs.as "cc-exp"]
    | `cc_exp_month [@bs.as "cc-exp-month"]
    | `cc_exp_year [@bs.as "cc-exp-year"]
    | `cc_csc [@bs.as "cc-csc"]
    | `cc_type [@bs.as "cc-type"]
    | `transaction_currency [@bs.as "transaction-currency"]
    | `transaction_amount [@bs.as "transaction-amount"]
    | `language | `bday
    | `bday_day [@bs.as "bday-day"]
    | `bday_month [@bs.as "bday-month"]
    | `bday_year [@bs.as "bday-year"]
    | `sex | `url | `photo | `tel
    | `tel_country_code [@bs.as "tel-country-code"]
    | `tel_national [@bs.as "tel-national"]
    | `tel_area_code [@bs.as "tel-area-code"]
    | `tel_local [@bs.as "tel-local"]
    | `tel_local_prefix [@bs.as "tel-local-prefix"]
    | `tel_local_suffix [@bs.as "tel-local-suffix"]
    | `tel_extension [@bs.as "tel-extension"]
    | `email | `impp
    ] [@@bs.deriving jsConverter]

  let show = tToJs
end


module Form = struct
  module Enctype = struct
    (** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype} Form Enctype} *)

    type t =
      [ `x_www_form_urlencoded | `form_data | `plain ]
      [@@bs.deriving jsConverter]

    let show = tToJs
  end

  module Method = struct
    (** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-method} Form Method} *)
    type t = [ `get | `post | `dialog ] [@@bs.deriving jsConverter]

    let show = tToJs
  end
end


module Dirname = struct
  (** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname} Dirname} *)

  type t = [ `ltr | `rtl ] [@@bs.deriving jsConverter] 

  let show = tToJs
end


module Preload = struct
  (** {{: https://html.spec.whatwg.org/multipage/media.html#attr-media-preload} Preload} *)

  type t = [ `none | `metadata | `auto ] [@@bs.deriving jsConverter]

  let show = tToJs
end


module Aria = struct
  (**
    {{: https://www.w3.org/TR/html52/dom.html#allowed-aria-roles-states-and-properties} Aria Roles} 
    and {{: https://www.w3.org/TR/wai-aria-1.1/#role_definitions} Role Definitions}
  *)

  type +'a t

  external merge: 'a t array -> 'a t = "assign"
    [@@bs.scope ("Object")] [@@bs.splice] [@@bs.val]

  (* Core role *)
  type roletype = [ `roletype ]

  (* Abstract roles *)
  type structure = roletype
  type widget = roletype
   and window = roletype
  type command = widget
   and composite = widget
   and input = widget
   and range = widget
  type section = structure
   and sectionhead = structure
  type landmark = section

  type alert = [ `alert | section ]
   and dialog = [ `dialog | window ]
  type alertdialog = [ `alertdialog | alert | dialog ]
   and application = [ `application | structure ]
   and document = [ `document | structure ]
  type article = [ `article | document ]
   and banner = [ `banner | landmark ]
   and button = [ `button | command ]
   and cell = [ `cell | section ]
   and checkbox = [ `checkbox | input ]
  type gridcell = [ `gridcell | cell | widget ]
  type columnheader = [ `columnheader | cell | gridcell | sectionhead ]
   and group = [ `group | section ]
  type select = [ composite | group ]
  type combobox = [ `combobox | select ]
   and complementary = [ `complementary | landmark ]
   and contentinfo = [ `contentinfo | landmark ]
   and definition = [ `definition | section ]
   and list = [ `list | section ]
  type directory = [ `directory | list ]
   and feed = [ `feed | list ]
   and figure = [ `figure | section ]
   and form = [ `form | landmark ]
  type table = [ `table | section ]
  type grid = [ `grid | composite | table ]
   and heading = [ `heading | sectionhead ]
   and img = [ `img | section ]
   and link = [ `link | command ]
   and listbox = [ `listbox | select ]
   and listitem = [ `listitem | section ]
   and log = [ `log | section ]
   and main = [ `main | landmark ]
   and marquee = [ `marquee | section ]
   and math = [ `math | section ]
   and menu = [ `menu | select ]
  type menubar = [ `menubar | menu ]
   and menuitem = [ `menuitem | command ]
  type menuitemcheckbox = [ `menuitemcheckbox | menuitem | checkbox ]
   and radio = [ `radio | input ]
  type menuitemradio = [ `menuitemradio | menuitemcheckbox | radio ]
   and navigation = [ `navigation | landmark ]
   and none = [ `none ]
   and note = [ `note | section ]
   and option = [ `option | input ]
   and presentation = [ `presentation | structure ]
   and progressbar = [ `progressbar | range ]
   and radiogroup = [ `radiogroup | select ]
   and region = [ `region | landmark ]
   and row = [ `row | group | widget ]
   and rowgroup = [ `rowgroup | structure ]
   and rowheader = [ `rowheader | cell | gridcell | sectionhead ]
   and scrollbar = [ `scrollbar | range ]
   and search = [ `search | landmark ]
   and separator = [ `separator | structure | widget ]
   and textbox = [ `textbox | input ]
  type searchbox = [ `searchbox | textbox ]
   and separatable = [ `separatable | structure | widget ]
   and slider = [ `slider | input | range ]
   and spinbutton = [ `spinbutton | composite | input | range ]
   and status = [ `status | section ]
   and switch = [ `switch | checkbox ]
   and tab = [ `tab | sectionhead | widget ]
   and tablist = [ `tablist | composite ]
   and tabpanel = [ `tabpanel | section ]
   and term = [ `term | section ]
  type timer = [ `timer | status ]
   and toolbar = [ `toolbar | group ]
   and tooltip = [ `tooltip | section ]
   and tree = [ `tree | select ]
  type treegrid = [ `treegrid | grid | tree ]
   and treeitem = [ `treeitem | listitem | option ]


  module Value = struct
    type autocomplete =
      [ `inline | `list | `both | `none ]
      [@@bs.deriving jsConverter]

    type current =
      [ `page | `step | `location | `date | `time
      | `true_ [@bs.as "true"] | `false_ [@bs.as "false"] ]
      [@@bs.deriving jsConverter]

    type dropeffect =
      [ `copy | `execute | `link | `move | `none | `popup ]
      [@@bs.deriving jsConverter]

    let dropeffects value =
      value |. Belt.List.map dropeffectToJs |. Util.join_with " "

    type haspopup =
      [ `true_ [@bs.as "true"] | `false_ [@bs.as "false"] | `menu | `listbox
      | `tree | `grid | `dialog ]
      [@@bs.deriving jsConverter]

    type invalid =
      [ `true_ [@bs.as "true"] | `false_ [@bs.as "false"] | `grammaer
      | `spelling ]
      [@@bs.deriving jsConverter]

    type live =
      [ `assertive | `polite | `off ] [@@bs.deriving jsConverter]

    type orientation =
      [ `horizontal | `vertical ] [@@bs.deriving jsConverter]

    type relevant =
      [ `additions | `all | `removals | `text ] [@@bs.deriving jsConverter]

    let relevants value =
      value |. Belt.List.map relevantToJs |. Util.join_with " "

    type sort =
      [ `ascending | `descending | `none | `other ]
      [@@bs.deriving jsConverter]
  end

  (* TODO: hide, *)
  module Properties = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#state_prop_def} Properties} *)

    external _make:
      ?role:string ->
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_autocomplete:string ->
      ?aria_busy:string ->
      ?aria_checked:string ->
      ?aria_colcount:string ->
      ?aria_colindex:string ->
      ?aria_colspan:string ->
      ?aria_controls:string ->
      ?aria_current:string ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:string ->
      ?aria_dropeffect:string ->
      ?aria_errormessage:string ->
      ?aria_expanded:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:string ->
      ?aria_haspopup:string ->
      ?aria_hidden:string ->
      ?aria_invalid:string ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_level:string ->
      ?aria_live:string ->
      ?aria_modal:string ->
      ?aria_multiline:string ->
      ?aria_multiselectable:string ->
      ?aria_orientation:string ->
      ?aria_owns:string ->
      ?aria_placeholder:string ->
      ?aria_posinset:string ->
      ?aria_pressed:string ->
      ?aria_readonly:string ->
      ?aria_relevant:string ->
      ?aria_required:string ->
      ?aria_roledescription:string ->
      ?aria_rowcount:string ->
      ?aria_rowindex:string ->
      ?aria_rowspan:string ->
      ?aria_selected:string ->
      ?aria_setsize:string ->
      ?aria_sort:string ->
      ?aria_valuemax:string ->
      ?aria_valuemin:string ->
      ?aria_valuenow:string ->
      ?aria_valuetext:string ->
      unit ->
      _ t = "" [@@bs.obj]

    let make
      ?role ?aria_activedescendant ?aria_atomic ?aria_autocomplete ?aria_busy
      ?aria_checked ?aria_colcount ?aria_colindex ?aria_colspan ?aria_controls
      ?aria_current ?aria_describedby ?aria_details ?aria_disabled
      ?aria_dropeffect ?aria_errormessage ?aria_expanded ?aria_flowto
      ?aria_grabbed ?aria_haspopup ?aria_hidden ?aria_invalid ?aria_keyshortcuts
      ?aria_label ?aria_labelledby ?aria_level ?aria_live ?aria_modal
      ?aria_multiline ?aria_multiselectable ?aria_orientation ?aria_owns
      ?aria_placeholder ?aria_posinset ?aria_pressed ?aria_readonly
      ?aria_relevant ?aria_required ?aria_roledescription ?aria_rowcount
      ?aria_rowindex ?aria_rowspan ?aria_selected ?aria_setsize ?aria_sort
      ?aria_valuemax ?aria_valuemin ?aria_valuenow ?aria_valuetext () =
      _make
        ?role
        ?aria_activedescendant
        ?aria_atomic
        ?aria_autocomplete:(Belt.Option.map aria_autocomplete Value.autocompleteToJs)
        ?aria_busy:(Belt.Option.map aria_busy Util.string_of_unit)
        ?aria_checked:(Belt.Option.map aria_checked Util.string_of_unit)
        ?aria_colcount:(Belt.Option.map aria_colcount string_of_int)
        ?aria_colindex:(Belt.Option.map aria_colindex string_of_int)
        ?aria_colspan:(Belt.Option.map aria_colspan string_of_int)
        ?aria_controls
        ?aria_current:(Belt.Option.map aria_current Value.currentToJs)
        ?aria_describedby
        ?aria_details
        ?aria_disabled:(Belt.Option.map aria_disabled Util.string_of_unit)
        ?aria_dropeffect:(Belt.Option.map aria_dropeffect Value.dropeffects)
        ?aria_errormessage
        ?aria_expanded:(Belt.Option.map aria_expanded Util.string_of_unit)
        ?aria_flowto
        ?aria_grabbed:(Belt.Option.map aria_grabbed Util.string_of_unit)
        ?aria_haspopup:(Belt.Option.map aria_haspopup Value.haspopupToJs)
        ?aria_hidden:(Belt.Option.map aria_hidden Util.string_of_unit)
        ?aria_invalid:(Belt.Option.map aria_invalid Value.invalidToJs)
        ?aria_keyshortcuts
        ?aria_label
        ?aria_labelledby
        ?aria_level:(Belt.Option.map aria_level string_of_int)
        ?aria_live:(Belt.Option.map aria_live Value.liveToJs)
        ?aria_modal:(Belt.Option.map aria_modal Util.string_of_unit)
        ?aria_multiline:(Belt.Option.map aria_multiline Util.string_of_unit)
        ?aria_multiselectable:(Belt.Option.map aria_multiselectable Util.string_of_unit)
        ?aria_orientation:(Belt.Option.map aria_orientation Value.orientationToJs)
        ?aria_owns
        ?aria_placeholder
        ?aria_posinset:(Belt.Option.map aria_posinset string_of_int)
        ?aria_pressed:(Belt.Option.map aria_pressed Util.string_of_unit)
        ?aria_readonly:(Belt.Option.map aria_readonly Util.string_of_unit)
        ?aria_relevant:(Belt.Option.map aria_relevant Value.relevants)
        ?aria_required:(Belt.Option.map aria_required Util.string_of_unit)
        ?aria_roledescription
        ?aria_rowcount:(Belt.Option.map aria_rowcount string_of_int)
        ?aria_rowindex:(Belt.Option.map aria_rowindex string_of_int)
        ?aria_rowspan:(Belt.Option.map aria_rowspan string_of_int)
        ?aria_selected:(Belt.Option.map aria_selected Util.string_of_unit)
        ?aria_setsize:(Belt.Option.map aria_setsize string_of_int)
        ?aria_sort:(Belt.Option.map aria_sort Value.sortToJs)
        ?aria_valuemax:(Belt.Option.map aria_valuemax string_of_float)
        ?aria_valuemin:(Belt.Option.map aria_valuemin string_of_float)
        ?aria_valuenow:(Belt.Option.map aria_valuenow string_of_float)
        ?aria_valuetext
        ()
  end


  module Roletype = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#roletype} Roletype Role} *)

    let make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): roletype t =
      Properties.make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Alert = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#alert} Alert Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): alert t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"alert" ()
  end

  module AlertDialog = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#alertdialog} Alert Dialog Role} *)

    let make ?aria_expanded ?aria_modal
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): alertdialog t =
      Properties.make ?aria_expanded ?aria_modal
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"alertdialog" ()
  end

  module Application = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#application} Application Role} *)

    let make ?aria_activedescendant
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): application t =
      Properties.make ?aria_activedescendant
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"application" ()
  end

  module Article = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#article} Article Role} *)

    let make ?aria_expanded ?aria_posinset ?aria_setsize
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): article t =
      Properties.make ?aria_expanded ?aria_posinset ?aria_setsize
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"article" ()
  end

  module Banner = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#banner} Banner Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): banner t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"banner" ()
  end

  module Button = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#button} Button Role} *)

    let make ?aria_expanded ?aria_pressed
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): button t =
      Properties.make ?aria_expanded ?aria_pressed
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"button" ()
  end

  module Cell = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#cell} Cell Role} *)

    let make ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
      ?aria_rowspan
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): cell t =
      Properties.make ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
        ?aria_rowspan
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"cell" ()
  end

  module Checkbox = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#checkbox} Checkbox Role} *)

    let make ~aria_checked ?aria_readonly
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): checkbox t =
      Properties.make ~aria_checked ?aria_readonly
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"checkbox" ()
  end

  module Columnheader = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#columnheader} Columnheader Role} *)

    let make ?aria_sort ?aria_expanded ?aria_colindex ?aria_colspan
      ?aria_readonly ?aria_required ?aria_selected
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): columnheader t =
      Properties.make ?aria_sort ?aria_expanded ?aria_colindex ?aria_colspan
        ?aria_readonly ?aria_required ?aria_selected
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"columnheader" ()
  end

  module Combobox = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#combobox} Combobox Role} *)

    let make ~aria_expanded ?aria_autocomplete ?aria_readonly ?aria_required
      ?aria_orientation ?aria_activedescendant
      ?aria_atomic ?aria_busy ~aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): combobox t =
      Properties.make ~aria_expanded ?aria_autocomplete ?aria_readonly
        ?aria_required ?aria_orientation ?aria_activedescendant
        ?aria_atomic ?aria_busy ~aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ~role:"combobox" ()
  end

  module Complementary = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#complementary} Complementary Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): complementary t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Contentinfo = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#contentinfo} Contentinfo Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): contentinfo t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Definition = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#definition} Definition Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): definition t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Dialog = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#dialog} Dialog Role} *)

    let make ?aria_expanded ?aria_modal
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): dialog t =
      Properties.make ?aria_expanded ?aria_modal
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Directory = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#directory} Directory Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): directory t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Document = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#document} Document Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): document t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Feed = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#feed} Feed Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): feed t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Figure = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#figure} Figure Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): figure t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Form = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#form} Form Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): form t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Grid = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#grid} Grid Role} *)

    let make ?aria_expanded ?aria_activedescendant ?aria_colcount ?aria_rowcount
      ?aria_level ?aria_multiselectable ?aria_readonly
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): grid t =
      Properties.make ?aria_expanded ?aria_activedescendant ?aria_colcount ?aria_rowcount
        ?aria_level ?aria_multiselectable ?aria_readonly
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Gridcell = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#gridcell} Gridcell Role} *)

    let make ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
      ?aria_rowspan ?aria_readonly ?aria_required ?aria_selected
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): gridcell t =
      Properties.make ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
        ?aria_rowspan ?aria_readonly ?aria_required ?aria_selected
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Heading = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#heading} Heading Role} *)

    let make ?aria_expanded ~aria_level
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): heading t =
      Properties.make ?aria_expanded ~aria_level
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Img = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#img} Img Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): img t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Link = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#link} Link Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): link t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module List = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#list} List Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): list t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Listbox = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#listbox} Listbox Role} *)

    let make ?aria_expanded ?aria_orientation ?aria_activedescendant
      ?aria_multiselectable ?aria_readonly ?aria_required
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): listbox t =
      Properties.make ?aria_expanded ?aria_orientation ?aria_activedescendant
        ?aria_multiselectable ?aria_readonly ?aria_required
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Listitem = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#listitem} Listitem Role} *)

    let make ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): listitem t =
      Properties.make ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Log = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#log} Log Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): log t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Main = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#main} Main Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): main t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Marquee = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#marquee} Marquee Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): marquee t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Math = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#math} Math Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): math t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Menu = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#menu} Menu Role} *)

    let make ?aria_expanded ?aria_orientation ?aria_activedescendant
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): menu t =
      Properties.make ?aria_expanded ?aria_orientation ?aria_activedescendant
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Menubar = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#menubar} Menubar Role} *)

    let make ?aria_expanded ?aria_orientation ?aria_activedescendant
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): menubar t =
      Properties.make ?aria_expanded ?aria_orientation ?aria_activedescendant
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Menuitem = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#menuitem} Menuitem Role} *)

    let make ?aria_posinset ?aria_setsize
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): menuitem t =
      Properties.make ?aria_posinset ?aria_setsize
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Menuitemcheckbox = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#menuitem} Menuitem Role} *)

    let make ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): menuitemcheckbox t =
      Properties.make ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Menuitemradio = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#menuitemradio} Menuitemradio Role} *)

    let make ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): menuitemradio t =
      Properties.make ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Navigation = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#navigation} Navigation Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): navigation t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module None = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#none} None Role} *)

    let make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): none t =
      Properties.make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Note = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#note} Note Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): note t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Option = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#option} Option Role} *)

    let make ~aria_selected ?aria_checked ?aria_posinset ?aria_setsize
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): option t =
      Properties.make ~aria_selected ?aria_checked ?aria_posinset ?aria_setsize
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Progressbar = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#progressbar} Progressbar Role} *)

    let make ?aria_expanded ?aria_valuemax ?aria_valuemin ?aria_valuenow
      ?aria_valuetext
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): progressbar t =
      Properties.make ?aria_expanded ?aria_valuemax ?aria_valuemin ?aria_valuenow
        ?aria_valuetext
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Radio = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#radio} Radio Role} *)

    let make ~aria_checked ?aria_posinset ?aria_setsize
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): radio t =
      Properties.make ~aria_checked ?aria_posinset ?aria_setsize
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Radiogroup = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#radiogroup} Radiogroup Role} *)

    let make ?aria_expanded ?aria_readonly ?aria_required ?aria_orientation
      ?aria_activedescendant
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): radiogroup t =
      Properties.make ?aria_expanded ?aria_readonly ?aria_required ?aria_orientation
        ?aria_activedescendant
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Region = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#region} Region Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): region t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Row = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#row} Row Role} *)

    let make ?aria_expanded ?aria_activedescendant ?aria_colindex ?aria_level
      ?aria_rowindex ?aria_selected
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): row t =
      Properties.make ?aria_expanded ?aria_activedescendant ?aria_colindex ?aria_level
        ?aria_rowindex ?aria_selected
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Rowgroup = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#rowgroup} Rowgroup Role} *)

    let make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): rowgroup t =
      Properties.make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Rowheader = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#rowheader} Rowheader Role} *)

    let make ?aria_expanded ?aria_rowindex ?aria_rowspan ?aria_readonly
      ?aria_required ?aria_selected ?aria_sort
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): rowheader t =
      Properties.make ?aria_expanded ?aria_rowindex ?aria_rowspan ?aria_readonly
        ?aria_required ?aria_selected ?aria_sort
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Scrollbar = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#scrollbar} Scrollbar Role} *)

    let make ?aria_orientation ?aria_valuemax ?aria_valuemin
      ?aria_valuenow ?aria_valuetext
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): scrollbar t =
      Properties.make ?aria_orientation ?aria_valuemax ?aria_valuemin
        ?aria_valuenow ?aria_valuetext
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Search = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#search} Search Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): search t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Searchbox = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#searchbox} Searchbox Role} *)

    let make ?aria_activedescendant ?aria_autocomplete ?aria_multiline
      ?aria_placeholder ?aria_readonly ?aria_required
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): searchbox t =
      Properties.make ?aria_activedescendant ?aria_autocomplete ?aria_multiline
        ?aria_placeholder ?aria_readonly ?aria_required
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Separator = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#separator} Separator Role} *)

    let make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
      ?aria_valuetext
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): separator t =
      Properties.make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
        ?aria_valuetext
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Slider = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#slider} Slider Role} *)

    let make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
      ?aria_readonly
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): slider t =
      Properties.make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
        ?aria_readonly
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Spinbutton = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#spinbutton} Spinbutton Role} *)

    let make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
      ?aria_readonly ?aria_activedescendant
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): spinbutton t =
      Properties.make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
        ?aria_readonly ?aria_activedescendant
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Status = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#status} Status Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): status t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Switch = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#switch} Switch Role} *)

    let make ~aria_checked ?aria_readonly
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): switch t =
      Properties.make ~aria_checked ?aria_readonly
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Tab = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#tab} Tab Role} *)

    let make ?aria_expanded ?aria_posinset ?aria_selected ?aria_setsize
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): tab t =
      Properties.make ?aria_expanded ?aria_posinset ?aria_selected ?aria_setsize
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Table = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#table} Table Role} *)

    let make ?aria_expanded ?aria_colcount ?aria_rowcount
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): table t =
      Properties.make ?aria_expanded ?aria_colcount ?aria_rowcount
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Tablist = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#tablist} Tablist Role} *)

    let make ?aria_level ?aria_multiselectable ?aria_orientation
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): tablist t =
      Properties.make ?aria_level ?aria_multiselectable ?aria_orientation
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Tabpanel = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#tabpanel} Tabpanel Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): tabpanel t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Term = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#term} Term Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): term t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Textbox = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#textbox} Textbox Role} *)

    let make ?aria_activedescendant ?aria_autocomplete ?aria_multiline
      ?aria_placeholder ?aria_readonly ?aria_required
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): textbox t =
      Properties.make ?aria_activedescendant ?aria_autocomplete ?aria_multiline
        ?aria_placeholder ?aria_readonly ?aria_required
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Timer = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#timer} Timer Role} *)

    let make ?aria_expanded
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): timer t =
      Properties.make ?aria_expanded
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Toolbar = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#toolbar} Toolbar Role} *)

    let make ?aria_expanded ?aria_activedescendant ?aria_orientation
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): toolbar t =
      Properties.make ?aria_expanded ?aria_activedescendant ?aria_orientation
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Tree = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#tree} Tree Role} *)

    let make ?aria_expanded ?aria_orientation ?aria_multiselectable ?aria_required
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): tree t =
      Properties.make ?aria_expanded ?aria_orientation ?aria_multiselectable ?aria_required
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Treegrid = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#treegrid} Treegrid Role} *)

    let make ?aria_expanded ?aria_level ?aria_multiselectable ?aria_readonly
      ?aria_activedescendant ?aria_rowcount ?aria_colcount
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): treegrid t =
      Properties.make ?aria_expanded ?aria_level ?aria_multiselectable ?aria_readonly
        ?aria_activedescendant ?aria_rowcount ?aria_colcount
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end

  module Treeitem = struct
    (** {{: https://www.w3.org/TR/wai-aria-1.1/#treeitem} Treeitem Role} *)

    let make ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
      ~aria_selected ?aria_checked
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription (): treeitem t =
      Properties.make ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
        ~aria_selected ?aria_checked
        ?aria_atomic ?aria_busy ?aria_controls ?aria_current
        ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
        ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
        ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
        ?aria_owns ?aria_relevant ?aria_roledescription ()
  end


  let roletype = Roletype.make
  and alert = Alert.make
  and alertdialog = AlertDialog.make
  and application = Application.make
  and article = Article.make
  and banner = Banner.make
  and button = Button.make
  and cell = Cell.make
  and checkbox = Checkbox.make
  and columnheader = Columnheader.make
  and combobox = Combobox.make
  and complementary = Complementary.make
  and contentinfo = Contentinfo.make
  and definition = Definition.make
  and dialog = Dialog.make
  and directory = Directory.make
  and document = Document.make
  and feed = Feed.make
  and figure = Figure.make
  and form = Form.make
  and grid = Grid.make
  and gridcell = Gridcell.make
  and heading = Heading.make
  and img = Img.make
  and link = Link.make
  and list = List.make
  and listbox = Listbox.make
  and listitem = Listitem.make
  and log = Log.make
  and main = Main.make
  and marquee = Marquee.make
  and math = Math.make
  and menu = Menu.make
  and menubar = Menubar.make
  and menuitem = Menuitem.make
  and menuitemcheckbox = Menuitemcheckbox.make
  and menuitemradio = Menuitemradio.make
  and navigation = Navigation.make
  and none = None.make
  and note = Note.make
  and option = Option.make
  and presentation = None.make
  and progressbar = Progressbar.make
  and radio = Radio.make
  and radiogroup = Radiogroup.make
  and region = Region.make
  and row = Row.make
  and rowgroup = Rowgroup.make
  and rowheader = Rowheader.make
  and scrollbar = Scrollbar.make
  and search = Search.make
  and searchbox = Searchbox.make
  and separator = Separator.make
  and slider = Slider.make
  and spinbutton = Spinbutton.make
  and status = Status.make
  and switch = Switch.make
  and tab = Tab.make
  and table = Table.make
  and tablist = Tablist.make
  and tabpanel = Tabpanel.make
  and term = Term.make
  and textbox = Textbox.make
  and timer = Timer.make
  and toolbar = Toolbar.make
  and tree = Tree.make
  and treegrid = Treegrid.make
  and treeitem = Treeitem.make

  external from_aria: _ t -> Declaredom.property Js.Dict.t = "%identity"
end


module Global = struct
  (**
   {{: https://html.spec.whatwg.org/multipage/dom.html#global-attributes} Global Attributes}
   ({{: https://www.w3.org/TR/html52/dom.html#global-attributes} W3C})
   *)

  module Value = struct
    type autocapitalize =
      [ `off | `none | `on | `sentences | `words | `characters ]
      [@@bs.deriving jsConverter]

    type dir = [ `rtl | `ltr | `auto ] [@@bs.deriving jsConverter]

    type translate = [ `yes | `no ] [@@bs.deriving jsConverter]

    type enterkeyhint =
      [ `enter | `done_ [@bs.as "done"] | `go | `next | `previous | `search
      | `send ]
      [@@bs.deriving jsConverter]

    type inputmode =
      [ `none | `text | `tel | `url | `email | `numeric | `decimal | `search ]
      [@@bs.deriving jsConverter]
  end

  external _make:
    ?accesskey:string ->
    ?autocapitalize:string ->
    ?class_name:string ->
    ?class_set:bool Js.Dict.t ->
    ?contenteditable:string ->
    ?dataset:string Js.Dict.t ->
    ?dir:string ->
    ?draggable:string ->
    ?enterkeyhint:string ->
    ?hidden:string ->
    ?id:string ->
    ?inputmode:string ->
    ?is:string ->
    ?itemid:string ->
    ?itemprop:string ->
    ?itemref:string ->
    ?itemscope:string ->
    ?itemtype:string ->
    ?lang:string ->
    ?nonce:string ->
    ?slot:string ->
    ?spellcheck:string ->
    ?style:string Js.Dict.t ->
    ?tabindex:string ->
    ?title:string ->
    ?translate:string ->
    unit ->
    t = "" [@@bs.obj]

  let make
    ?accesskey ?autocapitalize ?class_name ?class_set ?contenteditable ?dataset
    ?dir ?draggable ?enterkeyhint ?hidden ?id ?inputmode ?is ?itemid ?itemprop
    ?itemref ?itemscope ?itemtype ?lang ?nonce ?slot ?spellcheck ?style ?tabindex
    ?title ?translate () =
    _make
      ?accesskey
      ?autocapitalize:(Belt.Option.map autocapitalize Value.autocapitalizeToJs)
      ?class_name ?class_set
      ?contenteditable:(Belt.Option.map contenteditable Util.string_of_unit)
      ?dataset
      ?dir:(Belt.Option.map dir Value.dirToJs)
      ?draggable:(Belt.Option.map draggable Util.string_of_unit)
      ?enterkeyhint:(Belt.Option.map enterkeyhint Value.enterkeyhintToJs)
      ?hidden:(Belt.Option.map hidden Util.string_of_unit)
      ?id
      ?inputmode:(Belt.Option.map inputmode Value.inputmodeToJs)
      ?is
      ?itemid ?itemprop ?itemref
      ?itemscope:(Belt.Option.map itemscope Util.string_of_unit)
      ?itemtype
      ?lang ?nonce ?slot ?spellcheck
      ?style:(Belt.Option.map style Css_Style.show_dict)
      ?tabindex:(Belt.Option.map tabindex string_of_int)
      ?title
      ?translate:(Belt.Option.map translate Value.translateToJs)
      ()
end
