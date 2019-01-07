(** Provides shorthand functions to {!module:Html_Nodes} *)

let a = Html_Nodes.A.make
let br = Html_Nodes.Br.make
let div = Html_Nodes.Div.make
let span = Html_Nodes.Span.make
let text = Html_Nodes.Text.make

(* Override nodes *)
let a' = Html_Overrides.Div.make


module Jsx = struct
  let a = Html_Nodes.A.jsx
  let br = Html_Nodes.Br.jsx
  let div = Html_Nodes.Div.jsx
  let span = Html_Nodes.Span.jsx

  (* Override nodes *)
  let div' = Html_Overrides.Div.jsx
end
