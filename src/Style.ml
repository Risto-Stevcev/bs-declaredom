type t

external style:
  ?fontSize:string ->
  ?fontWeight:string ->
  ?width:string ->
  ?height:string ->
  unit ->
  t = "" [@@bs.obj]


(* TODO: this should have all styles that apply to non-replaced elements *)
external non_replaced:
  ?backgroundAttachment:Css.Property.background_attachment ->
  ?backgroundColor:Css.Property.background_color ->
  unit ->
  Css.Property.non_replaced Js.Dict.t = "" [@@bs.obj]


(* TODO: this should have all styles that apply to replaced elements *)
external replaced:
  ?height:Css.Property.height ->
  unit ->
  Css.Property.replaced Js.Dict.t = "" [@@bs.obj]
