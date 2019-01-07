(**
 HTML Node Overrides

 This module provides from {!module:Html_Nodes} that take display override 
 styles
 *)


(* TODO: hide *)
module Internal = struct
  (* Erases type information *)
  external generalize:
    [< Css_Property.display] Js.Dict.t ->
    [< Css_Property.display] Js.Dict.t = "%identity"

  external generalize_module:
    [< Css_Property.display] Css_Module.t ->
    [< Css_Property.display] Css_Module.t = "%identity"
end


module Override = struct
  (** Display overrides *)

  module Style = struct
    type t =
      [ `block of Css_Property.override_block Js.Dict.t
      | `flex of Css_Property.override_flex Js.Dict.t
      | `list_item of Css_Property.override_list_item Js.Dict.t
      | `inline of Css_Property.override_inline Js.Dict.t
      | `inline_block of Css_Property.override_inline_block Js.Dict.t
      | `inline_flex of Css_Property.override_inline_flex Js.Dict.t
      | `table_header_group of
        Css_Property.override_table_header_group Js.Dict.t
      | `table_footer_group of
        Css_Property.override_table_footer_group Js.Dict.t
      | `table_caption of Css_Property.override_table_caption Js.Dict.t
      | `table of Css_Property.override_table Js.Dict.t
      | `inline_table of Css_Property.override_inline_table Js.Dict.t
      | `table_cell of Css_Property.override_table_cell Js.Dict.t
      | `table_column of Css_Property.override_table_column Js.Dict.t
      | `table_column_group of
        Css_Property.override_table_column_group Js.Dict.t
      | `table_row of Css_Property.override_table_row Js.Dict.t
      | `table_row_group of
        Css_Property.override_table_row_group Js.Dict.t
      ]

    (* TODO: hide *)
    let to_display: t -> [< Css_Property.display] Js.Dict.t = function
    | `block styles -> Internal.generalize styles
    | `flex styles -> Internal.generalize styles
    | `list_item styles -> Internal.generalize styles
    | `inline styles -> Internal.generalize styles
    | `inline_block styles -> Internal.generalize styles
    | `inline_flex styles -> Internal.generalize styles
    | `table_header_group styles -> Internal.generalize styles
    | `table_footer_group styles -> Internal.generalize styles
    | `table_caption styles -> Internal.generalize styles
    | `table styles -> Internal.generalize styles
    | `inline_table styles -> Internal.generalize styles
    | `table_cell styles -> Internal.generalize styles
    | `table_column styles -> Internal.generalize styles
    | `table_column_group styles -> Internal.generalize styles
    | `table_row styles -> Internal.generalize styles
    | `table_row_group styles -> Internal.generalize styles
  end


  module CssModule = struct
    type t =
      [ `block of Css_Property.override_block Css_Module.t
      | `flex of Css_Property.override_flex Css_Module.t
      | `list_item of Css_Property.override_list_item Css_Module.t
      | `inline of Css_Property.override_inline Css_Module.t
      | `inline_block of Css_Property.override_inline_block Css_Module.t
      | `inline_flex of Css_Property.override_inline_flex Css_Module.t
      | `table_header_group of
        Css_Property.override_table_header_group Css_Module.t
      | `table_footer_group of
        Css_Property.override_table_footer_group Css_Module.t
      | `table_caption of Css_Property.override_table_caption Css_Module.t
      | `table of Css_Property.override_table Css_Module.t
      | `inline_table of Css_Property.override_inline_table Css_Module.t
      | `table_cell of Css_Property.override_table_cell Css_Module.t
      | `table_column of Css_Property.override_table_column Css_Module.t
      | `table_column_group of
        Css_Property.override_table_column_group Css_Module.t
      | `table_row of Css_Property.override_table_row Css_Module.t
      | `table_row_group of
        Css_Property.override_table_row_group Css_Module.t
      ]

    (* TODO: hide *)
    let to_display: t -> [< Css_Property.display] Css_Module.t = function
    | `block css_module -> Internal.generalize_module css_module
    | `flex css_module -> Internal.generalize_module css_module
    | `list_item css_module -> Internal.generalize_module css_module
    | `inline css_module -> Internal.generalize_module css_module
    | `inline_block css_module -> Internal.generalize_module css_module
    | `inline_flex css_module -> Internal.generalize_module css_module
    | `table_header_group css_module -> Internal.generalize_module css_module
    | `table_footer_group css_module -> Internal.generalize_module css_module
    | `table_caption css_module -> Internal.generalize_module css_module
    | `table css_module -> Internal.generalize_module css_module
    | `inline_table css_module -> Internal.generalize_module css_module
    | `table_cell css_module -> Internal.generalize_module css_module
    | `table_column css_module -> Internal.generalize_module css_module
    | `table_column_group css_module -> Internal.generalize_module css_module
    | `table_row css_module -> Internal.generalize_module css_module
    | `table_row_group css_module -> Internal.generalize_module css_module
  end
end


module Div = struct
  let make
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule children =
    Html_Nodes.Div.make
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting
      ?style:(Belt.Option.map style Override.Style.to_display)
      ?cssModule:(Belt.Option.map cssModule Override.CssModule.to_display)
      children


  let jsx
    ?aria_atomic ?aria_busy ?aria_controls ?aria_current
    ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
    ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
    ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
    ?aria_owns ?aria_relevant ?aria_roledescription
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make
      ?aria_atomic ?aria_busy ?aria_controls ?aria_current
      ?aria_describedby ?aria_details ?aria_disabled ?aria_dropeffect
      ?aria_errormessage ?aria_flowto ?aria_grabbed ?aria_haspopup ?aria_hidden
      ?aria_invalid ?aria_keyshortcuts ?aria_label ?aria_labelledby ?aria_live
      ?aria_owns ?aria_relevant ?aria_roledescription
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule 
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end
