let init: (unit -> unit [@bs]) = [%raw {|
  function () {
    if (!global.document) {
      const { JSDOM } = require("jsdom")
      const { window } = new JSDOM('')
      global.window = window
      global.document = window.document
    }
  }
|}];;
