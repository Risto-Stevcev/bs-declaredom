type t

external style:
  ?fontSize:string ->
  ?fontWeight:string ->
  ?width:string ->
  ?height:string ->
  unit ->
  t = "" [@@bs.obj]
