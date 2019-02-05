open Html.Jsx;

let foo: Html_Node.t([> Html_Node.div]) =
  <div>
    <span style=Css_Style.inline(~color=`green, ())>
      <text>"Hello, world!"</text>
    </span>
    <br/>
  </div>
