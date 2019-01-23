(** Provides shorthand functions to {!module:Html_Nodes} *)

let a = Html_Nodes.A.make
let abbr = Html_Nodes.Abbr.make
let address = Html_Nodes.Address.make
let area = Html_Nodes.Area.make
let article = Html_Nodes.Article.make
let aside = Html_Nodes.Aside.make
let audio = Html_Nodes.Audio.make
let b = Html_Nodes.B.make
let base = Html_Nodes.Base.make
let bdi = Html_Nodes.Bdi.make
let bdo = Html_Nodes.Bdo.make
let blockquote = Html_Nodes.Blockquote.make
let body = Html_Nodes.Body.make
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
  let abbr = Html_Nodes.Abbr.jsx
  let address = Html_Nodes.Address.jsx
  let area = Html_Nodes.Area.jsx
  let article = Html_Nodes.Article.jsx
  let aside = Html_Nodes.Aside.jsx
  let audio = Html_Nodes.Audio.jsx
  let b = Html_Nodes.B.jsx
  let base = Html_Nodes.Base.jsx
  let bdi = Html_Nodes.Bdi.jsx
  let bdo = Html_Nodes.Bdo.jsx
  let blockquote = Html_Nodes.Blockquote.jsx
  let body = Html_Nodes.Body.jsx
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
