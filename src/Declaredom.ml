(* TODO: update declaredom so that it parses attrs like "aria_label" as "aria-label" *)

type property

external make:
  string ->
  property Js.Dict.t ->
  Dom.node array -> Dom.node = "element" [@@bs.module "declaredom"]

external make_empty:
  string ->
  property Js.Dict.t ->
  unit -> Dom.node = "element" [@@bs.module "declaredom"]

external make_with_text:
  string ->
  property Js.Dict.t ->
  string -> Dom.node = "element" [@@bs.module "declaredom"]

(** Makes a text node *)
external make_text:
  (_ [@bs.as "text"]) -> string -> Dom.node = "element" [@@bs.module "declaredom"]
