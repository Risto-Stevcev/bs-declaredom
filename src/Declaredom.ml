(* TODO: update declaredom so that it parses attrs like "aria_label" as "aria-label" *)

type property

external make:
  string ->
  property Js.Dict.t ->
  Dom.node array -> Dom.node = "element" [@@bs.module "declaredom"]
