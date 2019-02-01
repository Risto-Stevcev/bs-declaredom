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
let button = Html_Nodes.Button.make
let canvas = Html_Nodes.Canvas.make
let caption = Html_Nodes.Caption.make
let cite = Html_Nodes.Cite.make
let code = Html_Nodes.Code.make
let col = Html_Nodes.Col.make
let colgroup = Html_Nodes.Colgroup.make
let data = Html_Nodes.Data.make
let datalist = Html_Nodes.Datalist.make
let dd = Html_Nodes.Dd.make
let del = Html_Nodes.Del.make
let details = Html_Nodes.Details.make
let dfn = Html_Nodes.Dfn.make
let dialog = Html_Nodes.Dialog.make
let div = Html_Nodes.Div.make
let dl = Html_Nodes.Dl.make
let dt = Html_Nodes.Dt.make
let em = Html_Nodes.Em.make
let embed = Html_Nodes.Embed.make
let fieldset = Html_Nodes.Fieldset.make
let figcaption = Html_Nodes.Figcaption.make
let figure = Html_Nodes.Figure.make
let footer = Html_Nodes.Footer.make
let form = Html_Nodes.Form.make
let h1 = Html_Nodes.H1.make
let h2 = Html_Nodes.H2.make
let h3 = Html_Nodes.H3.make
let h4 = Html_Nodes.H4.make
let h5 = Html_Nodes.H5.make
let h6 = Html_Nodes.H6.make
let head = Html_Nodes.Head.make
let header = Html_Nodes.Header.make
let hgroup = Html_Nodes.Hgroup.make
let hr = Html_Nodes.Hr.make
let html = Html_Nodes.Html.make
let i = Html_Nodes.I.make
let span = Html_Nodes.Span.make
let title = Html_Nodes.Title.make
let text = Html_Nodes.Text.make
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
  let button = Html_Nodes.Button.jsx
  let canvas = Html_Nodes.Canvas.jsx
  let caption = Html_Nodes.Caption.jsx
  let cite = Html_Nodes.Cite.jsx
  let code = Html_Nodes.Code.jsx
  let col = Html_Nodes.Col.jsx
  let colgroup = Html_Nodes.Colgroup.jsx
  let data = Html_Nodes.Data.jsx
  let datalist = Html_Nodes.Datalist.jsx
  let dd = Html_Nodes.Dd.jsx
  let del = Html_Nodes.Del.jsx
  let details = Html_Nodes.Details.jsx
  let dfn = Html_Nodes.Dfn.jsx
  let dialog = Html_Nodes.Dialog.jsx
  let div = Html_Nodes.Div.jsx
  let dl = Html_Nodes.Dl.jsx
  let dt = Html_Nodes.Dt.jsx
  let em = Html_Nodes.Em.jsx
  let embed = Html_Nodes.Embed.jsx
  let fieldset = Html_Nodes.Fieldset.jsx
  let figcaption = Html_Nodes.Figcaption.jsx
  let figure = Html_Nodes.Figure.jsx
  let footer = Html_Nodes.Footer.jsx
  let form = Html_Nodes.Form.jsx
  let h1 = Html_Nodes.H1.jsx
  let h2 = Html_Nodes.H2.jsx
  let h3 = Html_Nodes.H3.jsx
  let h4 = Html_Nodes.H4.jsx
  let h5 = Html_Nodes.H5.jsx
  let h6 = Html_Nodes.H6.jsx
  let head = Html_Nodes.Head.jsx
  let header = Html_Nodes.Header.jsx
  let hgroup = Html_Nodes.Hgroup.jsx
  let hr = Html_Nodes.Hr.jsx
  let html = Html_Nodes.Html.jsx
  let i = Html_Nodes.I.jsx
  let span = Html_Nodes.Span.jsx
  let title = Html_Nodes.Title.jsx
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
