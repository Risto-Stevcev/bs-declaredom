type 'a t = 'a Node.t

type ('a, 'child, 'node) fn = (Global.Attributes.t -> 'child -> 'node t [@bs])
type callbag_html

external callbag_html: callbag_html = "declaredom" [@@bs.module]

external element: callbag_html -> string -> ('a, 'child, 'node) fn = ""
[@@bs.get_index]

let make tag props children = (element callbag_html tag) props children [@bs]

external make': string -> Global.t -> 'child -> 'a = "element" [@@bs.module "declaredom"]
external make_text: (_ [@bs.as "text"]) -> string -> 'a = "element" [@@bs.module "declaredom"]
external custom: string -> 'a Js.t -> 'child -> 'node t = "element" [@@bs.module "declaredom"]

module Unsafe = struct
  external _source: (* make *) 'a -> unit Node.t Callbag.t -> unit = "source" [@@bs.send]

  let source cb callbag_node =
    _source callbag_node (CallbagBasics.map (fun e -> Node.unwrap (e :> Node.content)) cb);
    callbag_node
end
