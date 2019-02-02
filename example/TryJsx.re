let foo: Html_Node.t([> Html_Node.div]) = {
  open Node.Jsx;
  <div>
    <span style=Css_Style.inline(~color=`green, ())>
      <text>"Hello, world!"</text>
    </span>
    <br/>
  </div>
};
