type property
type args = { attributes: property Js.Dict.t; children: Dom.node array }

external set_content_editable: Dom.htmlElement -> bool -> unit = "contentEditable" [@@bs.set]

external as_node: _ Dom.node_like -> Dom.node = "%identity"

module DomTokenList = struct
  external to_string: Dom.domTokenList -> string array = "Array.prototype.slice.call" [@@bs.val]
end

module Dataset = struct
  external set : Dom.domStringMap -> string -> string -> unit = "" [@@bs.set_index]
end

module Case = struct
  let snake_to_title: (string -> string [@bs]) = [%raw {|
    function(text) {
      return text.replace(/_([a-z]{1})/g, function(_, c) {
        return c.toUpperCase()
      })
    }|}]

  let snake_to_spinal text = Js.String.replaceByRe [%re "/_/g"] "-" text
end


let make_text (text: string): Dom.node =
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.createTextNode text
  |> as_node

let make_fragment (children: Dom.node array): Dom.node =
  let fragment =
    Webapi.Dom.window
    |> Webapi.Dom.Window.document
    |> Webapi.Dom.Document.createDocumentFragment in
  children
  |> Js.Array.forEach (fun child -> begin
       Webapi.Dom.DocumentFragment.appendChild child fragment
     end);
  fragment |> as_node

module HtmlElement = struct
  external set_style: Dom.cssStyleDeclaration -> string -> string -> unit = ""
  [@@bs.set_index]

  let set_attribute: Dom.htmlElement -> string * property -> unit =
    fun element (key, value) ->
    match key with
    | "id" -> Webapi.Dom.HtmlElement.setId element (Obj.magic value)
    | "class_name" ->
      Webapi.Dom.HtmlElement.setClassName element (Obj.magic value)
    | "class_set" ->
      let class_set =
        (Obj.magic value : bool Js.Dict.t)
        |> Js.Dict.entries
        |> Js.Array.filter (fun (_, is_included) -> is_included)
        |> Js.Array.map (fun (class_name, _) -> class_name)
      and class_names =
        element
        |> Webapi.Dom.HtmlElement.classList
        |> DomTokenList.to_string
      in
      Js.Array.concat class_set class_names
      |> Js.Array.joinWith " "
      |> Webapi.Dom.HtmlElement.setClassName element
    | "dataset" ->
      let set_dataset =
        element
        |> Webapi.Dom.HtmlElement.dataset
        |> Dataset.set
      in
      (Obj.magic value : string Js.Dict.t)
      |> Js.Dict.entries
      |> Js.Array.forEach (fun (key, value) -> set_dataset key value)
    | "style" ->
      let style = Webapi.Dom.HtmlElement.style element in
      (Obj.magic value : string Js.Dict.t)
      |> Js.Dict.entries
      |> Js.Array.forEach (fun (property, value) ->
          set_style style (Case.snake_to_title property [@bs]) value)
    | "contentEditable" ->
      let content_editable =
        (Obj.magic value : bool)
      in
      element
      |. set_content_editable content_editable
    | attribute when attribute |> Js.String.startsWith "on" ->
      let callback: Dom.event -> unit = Obj.magic value
      and event_name =
        attribute
        |> Js.String.replaceByRe [%re "/^on[_]{0,1}/"] ""
        |> Js.String.toLowerCase
      in
      element
      |> Webapi.Dom.HtmlElement.addEventListener event_name callback
    | _ ->
      element
      |> Webapi.Dom.HtmlElement.setAttribute (Case.snake_to_spinal key) (Obj.magic value)

  let set_attributes element (attributes: property Js.Dict.t): unit =
    attributes
    |> Js.Dict.entries
    |> Js.Array.forEach (set_attribute element)

  let set_children element children =
    let fragment =
      Webapi.Dom.window
      |> Webapi.Dom.Window.document
      |> Webapi.Dom.Document.createDocumentFragment
    in
    children
    |> Js.Array.forEach
      (fun child -> fragment |> Webapi.Dom.DocumentFragment.appendChild child);
    element |> Webapi.Dom.HtmlElement.appendChild fragment
end

let make_element tag_name: Dom.htmlElement =
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.createElement tag_name
  |> Obj.magic

let make tag_name attributes children =
  let element = make_element tag_name in
  HtmlElement.set_attributes element attributes;
  HtmlElement.set_children element children;
  as_node element

let make_empty tag_name attributes () =
  let element = make_element tag_name in
  HtmlElement.set_attributes element attributes;
  as_node element

let make_with_text tag_name attributes text =
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.createTextNode text
  |> as_node
  |> Array.make 1
  |> make tag_name attributes
