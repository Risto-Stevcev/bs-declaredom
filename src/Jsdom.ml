(**
 * Initializes mock window and document objects from JSDOM.
 * Useful for reusing DOM code on the backend
 *)
let init: unit -> unit = [%raw fun () ->
"if (!global.document) {
  var JSDOM = require('jsdom').JSDOM;
  var dom = new JSDOM('');
  global.window = dom.window;
  global.document = dom.window.document;
}"]
