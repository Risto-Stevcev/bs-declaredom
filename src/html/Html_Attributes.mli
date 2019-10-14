(** HTML Attributes *)

type t = Declaredom.property Js.Dict.t
module LinkType :
  sig
    (** {{: https://www.w3.org/TR/html52/links.html#sec-link-types} Link Types} *)

    module Link :
      sig
        type t =
            [ `alternate
            | `author
            | `help
            | `icon
            | `license
            | `next
            | `prev
            | `search
            | `stylesheet ]
        val show : t -> string
      end
    module Hyperlink :
      sig
        type t =
            [ `alternate
            | `author
            | `bookmark
            | `help
            | `license
            | `next
            | `nofollow
            | `noopener
            | `noreferrer
            | `prev
            | `search
            | `tag ]
        val show : t -> string
      end
    type t =
        [ `alternate
        | `author
        | `bookmark
        | `help
        | `icon
        | `license
        | `next
        | `nofollow
        | `noopener
        | `noreferrer
        | `prev
        | `search
        | `stylesheet
        | `tag ]
    val show : t -> string
  end
module Target :
  sig
    (** {{: https://www.w3.org/TR/html52/browsers.html#browsing-context-names} Browsing context} *)

    type value = [ `blank | `parent | `self | `top ]
    type t =
        [ `blank | `browsing_context of string | `parent | `self | `top ]
    val show : t -> string
  end
module ReferrerPolicy :
  sig
    (** {{: https://www.w3.org/TR/referrer-policy/#referrer-policies} Referrer Policies} *)

    type t =
        [ `no_referrer
        | `no_referrer_when_downgrade
        | `origin
        | `origin_when_cross_origin
        | `same_origin
        | `strict_origin
        | `strict_origin_when_cross_origin
        | `unsafe_url ]
    val show : t -> string
  end
module CrossOrigin :
  sig
    (** {{: https://html.spec.whatwg.org/multipage/media.html#attr-media-crossorigin} Crossorigin} *)

    type t = [ `anonymous | `use_credentials ]
    val show : t -> string
  end
module AutoComplete :
  sig
    (** {{: https://www.w3.org/TR/html52/sec-forms.html#autofill-detail-tokens} Autofill detail tokens} *)

    type t =
        [ `additional_name
        | `address_level1
        | `address_level2
        | `address_level3
        | `address_level4
        | `address_line1
        | `address_line2
        | `address_line3
        | `bday
        | `bday_day
        | `bday_month
        | `bday_year
        | `cc_additional_name
        | `cc_csc
        | `cc_exp
        | `cc_exp_month
        | `cc_exp_year
        | `cc_family_name
        | `cc_given_name
        | `cc_name
        | `cc_number
        | `cc_type
        | `country
        | `country_name
        | `current_password
        | `email
        | `family_name
        | `given_name
        | `honorific_prefix
        | `honorific_suffix
        | `impp
        | `language
        | `name
        | `new_password
        | `nickname
        | `off
        | `on
        | `organization
        | `organization_title
        | `photo
        | `postal_code
        | `sex
        | `street_address
        | `tel
        | `tel_area_code
        | `tel_country_code
        | `tel_extension
        | `tel_local
        | `tel_local_prefix
        | `tel_local_suffix
        | `tel_national
        | `transaction_amount
        | `transaction_currency
        | `url
        | `username ]
    val show : t -> string
  end
module Form :
  sig
    module Enctype :
      sig
        (** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype} Form Enctype} *)

        type t = [ `form_data | `plain | `x_www_form_urlencoded ]
        val show : t -> string
      end
    module Method :
      sig
        (** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-method} Form Method} *)

        type t = [ `dialog | `get | `post ]
        val show : t -> string
      end
  end
module Dirname :
  sig
    (** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname} Dirname} *)

    type t = [ `ltr | `rtl ]
    val show : t -> string
  end
module Preload :
  sig
    (** {{: https://html.spec.whatwg.org/multipage/media.html#attr-media-preload} Preload} *)

    type t = [ `auto | `metadata | `none ]
    val show : t -> string
  end
module Aria :
  sig
    (**
      {{: https://www.w3.org/TR/html52/dom.html#allowed-aria-roles-states-and-properties} Aria Roles} 
      and {{: https://www.w3.org/TR/wai-aria-1.1/#role_definitions} Role Definitions}
    *)

    type +'a t

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
    type alert = [ `alert | `roletype ]
    and dialog = [ `dialog | `roletype ]
    type alertdialog = [ `alert | `alertdialog | `dialog | `roletype ]
    and application = [ `application | `roletype ]
    and document = [ `document | `roletype ]
    type article = [ `article | `document | `roletype ]
    and banner = [ `banner | `roletype ]
    and button = [ `button | `roletype ]
    and cell = [ `cell | `roletype ]
    and checkbox = [ `checkbox | `roletype ]
    type gridcell = [ `cell | `gridcell | `roletype ]
    type columnheader = [ `cell | `columnheader | `gridcell | `roletype ]
    and group = [ `group | `roletype ]
    type select = [ `group | `roletype ]
    type combobox = [ `combobox | `group | `roletype ]
    and complementary = [ `complementary | `roletype ]
    and contentinfo = [ `contentinfo | `roletype ]
    and definition = [ `definition | `roletype ]
    and list = [ `list | `roletype ]
    type directory = [ `directory | `list | `roletype ]
    and feed = [ `feed | `list | `roletype ]
    and figure = [ `figure | `roletype ]
    and form = [ `form | `roletype ]
    type table = [ `roletype | `table ]
    type grid = [ `grid | `roletype | `table ]
    and heading = [ `heading | `roletype ]
    and img = [ `img | `roletype ]
    and link = [ `link | `roletype ]
    and listbox = [ `group | `listbox | `roletype ]
    and listitem = [ `listitem | `roletype ]
    and log = [ `log | `roletype ]
    and main = [ `main | `roletype ]
    and marquee = [ `marquee | `roletype ]
    and math = [ `math | `roletype ]
    and menu = [ `group | `menu | `roletype ]
    type menubar = [ `group | `menu | `menubar | `roletype ]
    and menuitem = [ `menuitem | `roletype ]
    type menuitemcheckbox =
        [ `checkbox | `menuitem | `menuitemcheckbox | `roletype ]
    and radio = [ `radio | `roletype ]
    type menuitemradio =
        [ `checkbox
        | `menuitem
        | `menuitemcheckbox
        | `menuitemradio
        | `radio
        | `roletype ]
    and navigation = [ `navigation | `roletype ]
    and none = [ `none ]
    and note = [ `note | `roletype ]
    and option = [ `option | `roletype ]
    and presentation = [ `presentation | `roletype ]
    and progressbar = [ `progressbar | `roletype ]
    and radiogroup = [ `group | `radiogroup | `roletype ]
    and region = [ `region | `roletype ]
    and row = [ `group | `roletype | `row ]
    and rowgroup = [ `roletype | `rowgroup ]
    and rowheader = [ `cell | `gridcell | `roletype | `rowheader ]
    and scrollbar = [ `roletype | `scrollbar ]
    and search = [ `roletype | `search ]
    and separator = [ `roletype | `separator ]
    and textbox = [ `roletype | `textbox ]
    type searchbox = [ `roletype | `searchbox | `textbox ]
    and separatable = [ `roletype | `separatable ]
    and slider = [ `roletype | `slider ]
    and spinbutton = [ `roletype | `spinbutton ]
    and status = [ `roletype | `status ]
    and switch = [ `checkbox | `roletype | `switch ]
    and tab = [ `roletype | `tab ]
    and tablist = [ `roletype | `tablist ]
    and tabpanel = [ `roletype | `tabpanel ]
    and term = [ `roletype | `term ]
    type timer = [ `roletype | `status | `timer ]
    and toolbar = [ `group | `roletype | `toolbar ]
    and tooltip = [ `roletype | `tooltip ]
    and tree = [ `group | `roletype | `tree ]
    type treegrid =
        [ `grid | `group | `roletype | `table | `tree | `treegrid ]
    and treeitem = [ `listitem | `option | `roletype | `treeitem ]
    module Value :
      sig
        type autocomplete = [ `both | `inline | `list | `none ]
        type current =
            [ `date | `false_ | `location | `page | `step | `time | `true_ ]
        type dropeffect =
            [ `copy | `execute | `link | `move | `none | `popup ]
        val dropeffects : dropeffect Belt.List.t -> string
        type haspopup =
            [ `dialog | `false_ | `grid | `listbox | `menu | `tree | `true_ ]
        type invalid = [ `false_ | `grammar | `spelling | `true_ ]
        type live = [ `assertive | `off | `polite ]
        type orientation = [ `horizontal | `vertical ]
        type relevant = [ `additions | `all | `removals | `text ]
        val relevants : relevant Belt.List.t -> string
        type sort = [ `ascending | `descending | `none | `other ]
      end
    module Roletype :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#roletype} Roletype Role} *)

        val make :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> roletype t
      end
    module Alert :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#alert} Alert Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> alert t
      end
    module AlertDialog :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#alertdialog} Alert Dialog Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_modal:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> alertdialog t
      end
    module Application :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#application} Application Role} *)

        val make :
          ?aria_activedescendant:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> application t
      end
    module Article :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#article} Article Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> article t
      end
    module Banner :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#banner} Banner Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> banner t
      end
    module Button :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#button} Button Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_pressed:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> button t
      end
    module Cell :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#cell} Cell Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_colindex:int ->
          ?aria_colspan:int ->
          ?aria_rowindex:int ->
          ?aria_rowspan:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> cell t
      end
    module Checkbox :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#checkbox} Checkbox Role} *)

        val make :
          aria_checked:unit ->
          ?aria_readonly:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> checkbox t
      end
    module Columnheader :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#columnheader} Columnheader Role} *)

        val make :
          ?aria_sort:Value.sort ->
          ?aria_expanded:unit ->
          ?aria_colindex:int ->
          ?aria_colspan:int ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_selected:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> columnheader t
      end
    module Combobox :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#combobox} Combobox Role} *)

        val make :
          aria_expanded:unit ->
          ?aria_autocomplete:Value.autocomplete ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_activedescendant:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> combobox t
      end
    module Complementary :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#complementary} Complementary Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> complementary t
      end
    module Contentinfo :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#contentinfo} Contentinfo Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> contentinfo t
      end
    module Definition :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#definition} Definition Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> definition t
      end
    module Dialog :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#dialog} Dialog Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_modal:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> dialog t
      end
    module Directory :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#directory} Directory Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> directory t
      end
    module Document :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#document} Document Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> document t
      end
    module Feed :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#feed} Feed Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> feed t
      end
    module Figure :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#figure} Figure Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> figure t
      end
    module Form :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#form} Form Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> form t
      end
    module Grid :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#grid} Grid Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_activedescendant:string ->
          ?aria_colcount:int ->
          ?aria_rowcount:int ->
          ?aria_level:int ->
          ?aria_multiselectable:unit ->
          ?aria_readonly:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> grid t
      end
    module Gridcell :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#gridcell} Gridcell Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_colindex:int ->
          ?aria_colspan:int ->
          ?aria_rowindex:int ->
          ?aria_rowspan:int ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_selected:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> gridcell t
      end
    module Heading :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#heading} Heading Role} *)

        val make :
          ?aria_expanded:unit ->
          aria_level:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> heading t
      end
    module Img :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#img} Img Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> img t
      end
    module Link :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#link} Link Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> link t
      end
    module List :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#list} List Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> list t
      end
    module Listbox :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#listbox} Listbox Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_activedescendant:string ->
          ?aria_multiselectable:unit ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> listbox t
      end
    module Listitem :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#listitem} Listitem Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_level:int ->
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> listitem t
      end
    module Log :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#log} Log Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> log t
      end
    module Main :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#main} Main Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> main t
      end
    module Marquee :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#marquee} Marquee Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> marquee t
      end
    module Math :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#math} Math Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> math t
      end
    module Menu :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#menu} Menu Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_activedescendant:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> menu t
      end
    module Menubar :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#menubar} Menubar Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_activedescendant:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> menubar t
      end
    module Menuitem :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#menuitem} Menuitem Role} *)

        val make :
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> menuitem t
      end
    module Menuitemcheckbox :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#menuitem} Menuitem Role} *)

        val make :
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_checked:unit ->
          ?aria_readonly:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> menuitemcheckbox t
      end
    module Menuitemradio :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#menuitemradio} Menuitemradio Role} *)

        val make :
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_checked:unit ->
          ?aria_readonly:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> menuitemradio t
      end
    module Navigation :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#navigation} Navigation Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> navigation t
      end
    module None :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#none} None Role} *)

        val make :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> none t
      end
    module Note :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#note} Note Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> note t
      end
    module Option :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#option} Option Role} *)

        val make :
          aria_selected:unit ->
          ?aria_checked:unit ->
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> option t
      end
    module Progressbar :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#progressbar} Progressbar Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_valuemax:float ->
          ?aria_valuemin:float ->
          ?aria_valuenow:float ->
          ?aria_valuetext:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> progressbar t
      end
    module Radio :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#radio} Radio Role} *)

        val make :
          aria_checked:unit ->
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> radio t
      end
    module Radiogroup :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#radiogroup} Radiogroup Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_activedescendant:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> radiogroup t
      end
    module Region :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#region} Region Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> region t
      end
    module Row :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#row} Row Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_activedescendant:string ->
          ?aria_colindex:int ->
          ?aria_level:int ->
          ?aria_rowindex:int ->
          ?aria_selected:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> row t
      end
    module Rowgroup :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#rowgroup} Rowgroup Role} *)

        val make :
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> rowgroup t
      end
    module Rowheader :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#rowheader} Rowheader Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_rowindex:int ->
          ?aria_rowspan:int ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_selected:unit ->
          ?aria_sort:Value.sort ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> rowheader t
      end
    module Scrollbar :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#scrollbar} Scrollbar Role} *)

        val make :
          ?aria_orientation:Value.orientation ->
          ?aria_valuemax:float ->
          ?aria_valuemin:float ->
          ?aria_valuenow:float ->
          ?aria_valuetext:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> scrollbar t
      end
    module Search :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#search} Search Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> search t
      end
    module Searchbox :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#searchbox} Searchbox Role} *)

        val make :
          ?aria_activedescendant:string ->
          ?aria_autocomplete:Value.autocomplete ->
          ?aria_multiline:unit ->
          ?aria_placeholder:string ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> searchbox t
      end
    module Separator :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#separator} Separator Role} *)

        val make :
          aria_valuemax:float ->
          aria_valuemin:float ->
          aria_valuenow:float ->
          ?aria_orientation:Value.orientation ->
          ?aria_valuetext:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> separator t
      end
    module Slider :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#slider} Slider Role} *)

        val make :
          aria_valuemax:float ->
          aria_valuemin:float ->
          aria_valuenow:float ->
          ?aria_orientation:Value.orientation ->
          ?aria_readonly:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> slider t
      end
    module Spinbutton :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#spinbutton} Spinbutton Role} *)

        val make :
          aria_valuemax:float ->
          aria_valuemin:float ->
          aria_valuenow:float ->
          ?aria_orientation:Value.orientation ->
          ?aria_readonly:unit ->
          ?aria_activedescendant:string ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> spinbutton t
      end
    module Status :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#status} Status Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> status t
      end
    module Switch :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#switch} Switch Role} *)

        val make :
          aria_checked:unit ->
          ?aria_readonly:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> switch t
      end
    module Tab :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#tab} Tab Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_posinset:int ->
          ?aria_selected:unit ->
          ?aria_setsize:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> tab t
      end
    module Table :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#table} Table Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_colcount:int ->
          ?aria_rowcount:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> table t
      end
    module Tablist :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#tablist} Tablist Role} *)

        val make :
          ?aria_level:int ->
          ?aria_multiselectable:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> tablist t
      end
    module Tabpanel :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#tabpanel} Tabpanel Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> tabpanel t
      end
    module Term :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#term} Term Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> term t
      end
    module Textbox :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#textbox} Textbox Role} *)

        val make :
          ?aria_activedescendant:string ->
          ?aria_autocomplete:Value.autocomplete ->
          ?aria_multiline:unit ->
          ?aria_placeholder:string ->
          ?aria_readonly:unit ->
          ?aria_required:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> textbox t
      end
    module Timer :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#timer} Timer Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> timer t
      end
    module Toolbar :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#toolbar} Toolbar Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_activedescendant:string ->
          ?aria_orientation:Value.orientation ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> toolbar t
      end
    module Tree :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#tree} Tree Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_orientation:Value.orientation ->
          ?aria_multiselectable:unit ->
          ?aria_required:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> tree t
      end
    module Treegrid :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#treegrid} Treegrid Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_level:int ->
          ?aria_multiselectable:unit ->
          ?aria_readonly:unit ->
          ?aria_activedescendant:string ->
          ?aria_rowcount:int ->
          ?aria_colcount:int ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> treegrid t
      end
    module Treeitem :
      sig
        (** {{: https://www.w3.org/TR/wai-aria-1.1/#treeitem} Treeitem Role} *)

        val make :
          ?aria_expanded:unit ->
          ?aria_level:int ->
          ?aria_posinset:int ->
          ?aria_setsize:int ->
          aria_selected:unit ->
          ?aria_checked:unit ->
          ?aria_atomic:string ->
          ?aria_busy:unit ->
          ?aria_controls:string ->
          ?aria_current:Value.current ->
          ?aria_describedby:string ->
          ?aria_details:string ->
          ?aria_disabled:unit ->
          ?aria_dropeffect:Value.dropeffect Belt.List.t ->
          ?aria_errormessage:string ->
          ?aria_flowto:string ->
          ?aria_grabbed:unit ->
          ?aria_haspopup:Value.haspopup ->
          ?aria_hidden:unit ->
          ?aria_invalid:Value.invalid ->
          ?aria_keyshortcuts:string ->
          ?aria_label:string ->
          ?aria_labelledby:string ->
          ?aria_live:Value.live ->
          ?aria_owns:string ->
          ?aria_relevant:Value.relevant Belt.List.t ->
          ?aria_roledescription:string -> unit -> treeitem t
      end
    val roletype :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> roletype t
    val alert :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> alert t
    val alertdialog :
      ?aria_expanded:unit ->
      ?aria_modal:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> alertdialog t
    val application :
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> application t
    val article :
      ?aria_expanded:unit ->
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> article t
    val banner :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> banner t
    val button :
      ?aria_expanded:unit ->
      ?aria_pressed:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> button t
    val cell :
      ?aria_expanded:unit ->
      ?aria_colindex:int ->
      ?aria_colspan:int ->
      ?aria_rowindex:int ->
      ?aria_rowspan:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> cell t
    val checkbox :
      aria_checked:unit ->
      ?aria_readonly:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> checkbox t
    val columnheader :
      ?aria_sort:Value.sort ->
      ?aria_expanded:unit ->
      ?aria_colindex:int ->
      ?aria_colspan:int ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_selected:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> columnheader t
    val combobox :
      aria_expanded:unit ->
      ?aria_autocomplete:Value.autocomplete ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> combobox t
    val complementary :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> complementary t
    val contentinfo :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> contentinfo t
    val definition :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> definition t
    val dialog :
      ?aria_expanded:unit ->
      ?aria_modal:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> dialog t
    val directory :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> directory t
    val document :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> document t
    val feed :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> feed t
    val figure :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> figure t
    val form :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> form t
    val grid :
      ?aria_expanded:unit ->
      ?aria_activedescendant:string ->
      ?aria_colcount:int ->
      ?aria_rowcount:int ->
      ?aria_level:int ->
      ?aria_multiselectable:unit ->
      ?aria_readonly:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> grid t
    val gridcell :
      ?aria_expanded:unit ->
      ?aria_colindex:int ->
      ?aria_colspan:int ->
      ?aria_rowindex:int ->
      ?aria_rowspan:int ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_selected:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> gridcell t
    val heading :
      ?aria_expanded:unit ->
      aria_level:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> heading t
    val img :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> img t
    val link :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> link t
    val list :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> list t
    val listbox :
      ?aria_expanded:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_activedescendant:string ->
      ?aria_multiselectable:unit ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> listbox t
    val listitem :
      ?aria_expanded:unit ->
      ?aria_level:int ->
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> listitem t
    val log :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> log t
    val main :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> main t
    val marquee :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> marquee t
    val math :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> math t
    val menu :
      ?aria_expanded:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> menu t
    val menubar :
      ?aria_expanded:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> menubar t
    val menuitem :
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> menuitem t
    val menuitemcheckbox :
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_checked:unit ->
      ?aria_readonly:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> menuitemcheckbox t
    val menuitemradio :
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_checked:unit ->
      ?aria_readonly:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> menuitemradio t
    val navigation :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> navigation t
    val none :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> none t
    val note :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> note t
    val option :
      aria_selected:unit ->
      ?aria_checked:unit ->
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> option t
    val presentation :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> none t
    val progressbar :
      ?aria_expanded:unit ->
      ?aria_valuemax:float ->
      ?aria_valuemin:float ->
      ?aria_valuenow:float ->
      ?aria_valuetext:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> progressbar t
    val radio :
      aria_checked:unit ->
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> radio t
    val radiogroup :
      ?aria_expanded:unit ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> radiogroup t
    val region :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> region t
    val row :
      ?aria_expanded:unit ->
      ?aria_activedescendant:string ->
      ?aria_colindex:int ->
      ?aria_level:int ->
      ?aria_rowindex:int ->
      ?aria_selected:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> row t
    val rowgroup :
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> rowgroup t
    val rowheader :
      ?aria_expanded:unit ->
      ?aria_rowindex:int ->
      ?aria_rowspan:int ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_selected:unit ->
      ?aria_sort:Value.sort ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> rowheader t
    val scrollbar :
      ?aria_orientation:Value.orientation ->
      ?aria_valuemax:float ->
      ?aria_valuemin:float ->
      ?aria_valuenow:float ->
      ?aria_valuetext:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> scrollbar t
    val search :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> search t
    val searchbox :
      ?aria_activedescendant:string ->
      ?aria_autocomplete:Value.autocomplete ->
      ?aria_multiline:unit ->
      ?aria_placeholder:string ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> searchbox t
    val separator :
      aria_valuemax:float ->
      aria_valuemin:float ->
      aria_valuenow:float ->
      ?aria_orientation:Value.orientation ->
      ?aria_valuetext:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> separator t
    val slider :
      aria_valuemax:float ->
      aria_valuemin:float ->
      aria_valuenow:float ->
      ?aria_orientation:Value.orientation ->
      ?aria_readonly:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> slider t
    val spinbutton :
      aria_valuemax:float ->
      aria_valuemin:float ->
      aria_valuenow:float ->
      ?aria_orientation:Value.orientation ->
      ?aria_readonly:unit ->
      ?aria_activedescendant:string ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> spinbutton t
    val status :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> status t
    val switch :
      aria_checked:unit ->
      ?aria_readonly:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> switch t
    val tab :
      ?aria_expanded:unit ->
      ?aria_posinset:int ->
      ?aria_selected:unit ->
      ?aria_setsize:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> tab t
    val table :
      ?aria_expanded:unit ->
      ?aria_colcount:int ->
      ?aria_rowcount:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> table t
    val tablist :
      ?aria_level:int ->
      ?aria_multiselectable:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> tablist t
    val tabpanel :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> tabpanel t
    val term :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> term t
    val textbox :
      ?aria_activedescendant:string ->
      ?aria_autocomplete:Value.autocomplete ->
      ?aria_multiline:unit ->
      ?aria_placeholder:string ->
      ?aria_readonly:unit ->
      ?aria_required:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> textbox t
    val timer :
      ?aria_expanded:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> timer t
    val toolbar :
      ?aria_expanded:unit ->
      ?aria_activedescendant:string ->
      ?aria_orientation:Value.orientation ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> toolbar t
    val tree :
      ?aria_expanded:unit ->
      ?aria_orientation:Value.orientation ->
      ?aria_multiselectable:unit ->
      ?aria_required:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> tree t
    val treegrid :
      ?aria_expanded:unit ->
      ?aria_level:int ->
      ?aria_multiselectable:unit ->
      ?aria_readonly:unit ->
      ?aria_activedescendant:string ->
      ?aria_rowcount:int ->
      ?aria_colcount:int ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> treegrid t
    val treeitem :
      ?aria_expanded:unit ->
      ?aria_level:int ->
      ?aria_posinset:int ->
      ?aria_setsize:int ->
      aria_selected:unit ->
      ?aria_checked:unit ->
      ?aria_atomic:string ->
      ?aria_busy:unit ->
      ?aria_controls:string ->
      ?aria_current:Value.current ->
      ?aria_describedby:string ->
      ?aria_details:string ->
      ?aria_disabled:unit ->
      ?aria_dropeffect:Value.dropeffect Belt.List.t ->
      ?aria_errormessage:string ->
      ?aria_flowto:string ->
      ?aria_grabbed:unit ->
      ?aria_haspopup:Value.haspopup ->
      ?aria_hidden:unit ->
      ?aria_invalid:Value.invalid ->
      ?aria_keyshortcuts:string ->
      ?aria_label:string ->
      ?aria_labelledby:string ->
      ?aria_live:Value.live ->
      ?aria_owns:string ->
      ?aria_relevant:Value.relevant Belt.List.t ->
      ?aria_roledescription:string -> unit -> treeitem t
    val from_aria : 'a t -> Declaredom.property Js.Dict.t
  end
module Global :
  sig
    (**
     {{: https://html.spec.whatwg.org/multipage/dom.html#global-attributes} Global Attributes}
     ({{: https://www.w3.org/TR/html52/dom.html#global-attributes} W3C})
     *)

    module Value :
      sig
        type autocapitalize =
            [ `characters | `none | `off | `on | `sentences | `words ]
        type dir = [ `auto | `ltr | `rtl ]
        type translate = [ `no | `yes ]
        type enterkeyhint =
            [ `done_ | `enter | `go | `next | `previous | `search | `send ]
        type inputmode =
            [ `decimal
            | `email
            | `none
            | `numeric
            | `search
            | `tel
            | `text
            | `url ]
      end
    val _make :
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
      ?tabindex:string -> ?title:string -> ?translate:string -> unit -> t
     
    val make :
      ?accesskey:string ->
      ?autocapitalize:Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?slot:string ->
      ?spellcheck:string ->
      ?style:[< Css_Property.display ] Css_Style.t ->
      ?tabindex:int ->
      ?title:string -> ?translate:Value.translate -> unit -> t
  end
