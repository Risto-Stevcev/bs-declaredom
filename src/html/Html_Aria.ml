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
    [ `true_ [@bs.as "true"] | `false_ [@bs.as "false"] | `grammar
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
    _ Html_Attributes.Aria.t = "" [@@bs.obj]

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
      ?aria_valuemax:(Belt.Option.map aria_valuemax Js.Float.toString)
      ?aria_valuemin:(Belt.Option.map aria_valuemin Js.Float.toString)
      ?aria_valuenow:(Belt.Option.map aria_valuenow Js.Float.toString)
      ?aria_valuetext
      ()
end


let roletype ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.roletype Html_Attributes.Aria.t =
  Properties.make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let alert ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.alert Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"alert" ()

let alertdialog ?aria_expanded ?aria_modal
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.alertdialog Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_modal
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"alertdialog" ()

let application ?aria_activedescendant
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.application Html_Attributes.Aria.t =
  Properties.make ?aria_activedescendant
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"application" ()

let article ?aria_expanded ?aria_posinset ?aria_setsize
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.article Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_posinset ?aria_setsize
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"article" ()

let banner ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.banner Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"banner" ()

let button ?aria_expanded ?aria_pressed
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.button Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_pressed
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"button" ()

let cell ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
  ?aria_rowspan
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.cell Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
    ?aria_rowspan
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"cell" ()

let checkbox ~aria_checked ?aria_readonly
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.checkbox Html_Attributes.Aria.t =
  Properties.make ~aria_checked ?aria_readonly
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"checkbox" ()

let columnheader ?aria_sort ?aria_expanded ?aria_colindex ?aria_colspan
  ?aria_readonly ?aria_required ?aria_selected
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.columnheader Html_Attributes.Aria.t =
  Properties.make ?aria_sort ?aria_expanded ?aria_colindex ?aria_colspan
    ?aria_readonly ?aria_required ?aria_selected
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"columnheader" ()

let combobox ~aria_expanded ?aria_autocomplete ?aria_readonly ?aria_required
  ?aria_orientation ?aria_activedescendant
  ?aria_atomic ?aria_busy ~aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.combobox Html_Attributes.Aria.t =
  Properties.make ~aria_expanded ?aria_autocomplete ?aria_readonly
    ?aria_required ?aria_orientation ?aria_activedescendant
    ?aria_atomic ?aria_busy ~aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ~role:"combobox" ()

let complementary ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.complementary Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let contentinfo ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.contentinfo Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let definition ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.definition Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let dialog ?aria_expanded ?aria_modal
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.dialog Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_modal
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let directory ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.directory Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let document ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.document Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let feed ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.feed Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let figure ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.figure Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let form ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.form Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let grid ?aria_expanded ?aria_activedescendant ?aria_colcount ?aria_rowcount
  ?aria_level ?aria_multiselectable ?aria_readonly
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.grid Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_activedescendant ?aria_colcount ?aria_rowcount
    ?aria_level ?aria_multiselectable ?aria_readonly
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let gridcell ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
  ?aria_rowspan ?aria_readonly ?aria_required ?aria_selected
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.gridcell Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_colindex ?aria_colspan ?aria_rowindex
    ?aria_rowspan ?aria_readonly ?aria_required ?aria_selected
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let heading ?aria_expanded ~aria_level
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.heading Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ~aria_level
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let img ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.img Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let link ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.link Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let list ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.list Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let listbox ?aria_expanded ?aria_orientation ?aria_activedescendant
  ?aria_multiselectable ?aria_readonly ?aria_required
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.listbox Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_orientation ?aria_activedescendant
    ?aria_multiselectable ?aria_readonly ?aria_required
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let listitem ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.listitem Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let log ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.log Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let main ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.main Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let marquee ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.marquee Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let math ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.math Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let menu ?aria_expanded ?aria_orientation ?aria_activedescendant
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.menu Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_orientation ?aria_activedescendant
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let menubar ?aria_expanded ?aria_orientation ?aria_activedescendant
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.menubar Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_orientation ?aria_activedescendant
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let menuitem ?aria_posinset ?aria_setsize
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.menuitem Html_Attributes.Aria.t =
  Properties.make ?aria_posinset ?aria_setsize
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let menuitemcheckbox ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.menuitemcheckbox Html_Attributes.Aria.t =
  Properties.make ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let menuitemradio ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.menuitemradio Html_Attributes.Aria.t =
  Properties.make ?aria_posinset ?aria_setsize ?aria_checked ?aria_readonly
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let navigation ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.navigation Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let none ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.none Html_Attributes.Aria.t =
  Properties.make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let note ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.note Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let option ~aria_selected ?aria_checked ?aria_posinset ?aria_setsize
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.option Html_Attributes.Aria.t =
  Properties.make ~aria_selected ?aria_checked ?aria_posinset ?aria_setsize
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let progressbar ?aria_expanded ?aria_valuemax ?aria_valuemin ?aria_valuenow
  ?aria_valuetext
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.progressbar Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_valuemax ?aria_valuemin ?aria_valuenow
    ?aria_valuetext
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let radio ~aria_checked ?aria_posinset ?aria_setsize
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.radio Html_Attributes.Aria.t =
  Properties.make ~aria_checked ?aria_posinset ?aria_setsize
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let radiogroup ?aria_expanded ?aria_readonly ?aria_required ?aria_orientation
  ?aria_activedescendant
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.radiogroup Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_readonly ?aria_required ?aria_orientation
    ?aria_activedescendant
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let region ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.region Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let row ?aria_expanded ?aria_activedescendant ?aria_colindex ?aria_level
  ?aria_rowindex ?aria_selected
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.row Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_activedescendant ?aria_colindex ?aria_level
    ?aria_rowindex ?aria_selected
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let rowgroup ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.rowgroup Html_Attributes.Aria.t =
  Properties.make ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let rowheader ?aria_expanded ?aria_rowindex ?aria_rowspan ?aria_readonly
  ?aria_required ?aria_selected ?aria_sort
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.rowheader Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_rowindex ?aria_rowspan ?aria_readonly
    ?aria_required ?aria_selected ?aria_sort
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let scrollbar ?aria_orientation ?aria_valuemax ?aria_valuemin
  ?aria_valuenow ?aria_valuetext
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.scrollbar Html_Attributes.Aria.t =
  Properties.make ?aria_orientation ?aria_valuemax ?aria_valuemin
    ?aria_valuenow ?aria_valuetext
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let search ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.search Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let searchbox ?aria_activedescendant ?aria_autocomplete ?aria_multiline
  ?aria_placeholder ?aria_readonly ?aria_required
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.searchbox Html_Attributes.Aria.t =
  Properties.make ?aria_activedescendant ?aria_autocomplete ?aria_multiline
    ?aria_placeholder ?aria_readonly ?aria_required
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let separator ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
  ?aria_valuetext
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.separator Html_Attributes.Aria.t =
  Properties.make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
    ?aria_valuetext
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let slider ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
  ?aria_readonly
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.slider Html_Attributes.Aria.t =
  Properties.make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
    ?aria_readonly
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let spinbutton ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
  ?aria_readonly ?aria_activedescendant
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.spinbutton Html_Attributes.Aria.t =
  Properties.make ~aria_valuemax ~aria_valuemin ~aria_valuenow ?aria_orientation
    ?aria_readonly ?aria_activedescendant
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let status ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.status Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let switch ~aria_checked ?aria_readonly
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.switch Html_Attributes.Aria.t =
  Properties.make ~aria_checked ?aria_readonly
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let tab ?aria_expanded ?aria_posinset ?aria_selected ?aria_setsize
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.tab Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_posinset ?aria_selected ?aria_setsize
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let table ?aria_expanded ?aria_colcount ?aria_rowcount
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.table Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_colcount ?aria_rowcount
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let tablist ?aria_level ?aria_multiselectable ?aria_orientation
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.tablist Html_Attributes.Aria.t =
  Properties.make ?aria_level ?aria_multiselectable ?aria_orientation
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let tabpanel ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.tabpanel Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let term ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.term Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let textbox ?aria_activedescendant ?aria_autocomplete ?aria_multiline
  ?aria_placeholder ?aria_readonly ?aria_required
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.textbox Html_Attributes.Aria.t =
  Properties.make ?aria_activedescendant ?aria_autocomplete ?aria_multiline
    ?aria_placeholder ?aria_readonly ?aria_required
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let timer ?aria_expanded
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.timer Html_Attributes.Aria.t =
  Properties.make ?aria_expanded
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let toolbar ?aria_expanded ?aria_activedescendant ?aria_orientation
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.toolbar Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_activedescendant ?aria_orientation
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let tree ?aria_expanded ?aria_orientation ?aria_multiselectable ?aria_required
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.tree Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_orientation ?aria_multiselectable ?aria_required
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let treegrid ?aria_expanded ?aria_level ?aria_multiselectable ?aria_readonly
  ?aria_activedescendant ?aria_rowcount ?aria_colcount
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.treegrid Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_level ?aria_multiselectable ?aria_readonly
    ?aria_activedescendant ?aria_rowcount ?aria_colcount
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()

let treeitem ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
  ~aria_selected ?aria_checked
  ?aria_atomic ?aria_busy ?aria_controls ?aria_current
  ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
  ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
  ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
  ?aria_owns ?aria_relevant ?aria_roledescription (): Html_Attributes.Aria.treeitem Html_Attributes.Aria.t =
  Properties.make ?aria_expanded ?aria_level ?aria_posinset ?aria_setsize
    ~aria_selected ?aria_checked
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription ()
