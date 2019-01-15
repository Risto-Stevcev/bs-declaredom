(** Provides shorthand functions to {!module:Html_Nodes} *)

let a = Html_Nodes.A.make
let br = Html_Nodes.Br.make
let div = Html_Nodes.Div.make
let span = Html_Nodes.Span.make
let text = Html_Nodes.Text.make
let title = Html_Nodes.Title.make
let fragment = Html_Nodes.Fragment.make

(* Override nodes *)
module Div = struct
  let flex = Html_Overrides.Div.flex
  let inline_flex = Html_Overrides.Div.inline_flex
  let inline_block = Html_Overrides.Div.inline_block
end

module Span = struct
  let inline_block = Html_Overrides.Span.inline_block
end


module Jsx = struct
  let a = Html_Nodes.A.jsx
  let br = Html_Nodes.Br.jsx
  let div = Html_Nodes.Div.jsx
  let span = Html_Nodes.Span.jsx
  let text = Html_Nodes.Text.jsx
  let fragment = Html_Nodes.Fragment.jsx

  (* Override nodes *)
  module Div = struct
    let flex = Html_Overrides.Div.Jsx.flex
    let inline_flex = Html_Overrides.Div.Jsx.inline_flex
    let inline_block = Html_Overrides.Div.Jsx.inline_block
  end

  module Span = struct
    let inline_block = Html_Overrides.Span.Jsx.inline_block
  end
end
