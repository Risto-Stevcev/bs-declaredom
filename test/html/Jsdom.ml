let init: (unit -> unit [@bs]) = [%raw {|
  function () {
    if (!global.document) {
      const { JSDOM } = require("jsdom");
      const { document } = new JSDOM('').window
      global.document = document
    }
  }
|}];;
