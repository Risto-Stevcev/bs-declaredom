open Html.Jsx;

let foo: Html.Node.t([> Html.Node.div]) =
  <div>
    <span style=Css.inline(~color=`green, ())>
      <text>"Hello, world!"</text>
    </span>
    <br/>
  </div>
