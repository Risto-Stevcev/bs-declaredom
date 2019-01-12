(** Provides shorthand functions to {!module:Html_Nodes} *)

let a = Html_Nodes.A.make
let br = Html_Nodes.Br.make
let div = Html_Nodes.Div.make
let span = Html_Nodes.Span.make
let text = Html_Nodes.Text.make
let fragment = Html_Nodes.Fragment.make

(* Override nodes *)
let a' = Html_Overrides.A.make
let div' = Html_Overrides.Div.make
let span' = Html_Overrides.Span.make


module Jsx = struct
  let a = Html_Nodes.A.jsx
  let br = Html_Nodes.Br.jsx
  let div = Html_Nodes.Div.jsx
  let span = Html_Nodes.Span.jsx
  let text = Html_Nodes.Text.jsx
  let fragment = Html_Nodes.Fragment.jsx

  (* Override nodes *)
  let a' = Html_Overrides.A.jsx
  let div' = Html_Overrides.Div.jsx
  let span' = Html_Overrides.Span.jsx
end
