(* TODO: fix comment *)
(**
 Motivation
  - CSS is supposed to decouple the structure (HTML) with it's
    representation (CSS), but selectors do exactly that: .foo h1,
    .bar [rel="foo"], .baz::nth-child(3n) etc
  - The HTML itself should be dealing with these kinds of relationships,
    not CSS
  - What's worse if that these are weak references. If something in the HTML
    structure changes, it can break the CSS. If an element changes from a
    block to an inline element, it can prevent styles from rendering.
  - Theming should be handled at the application/component level like
    css-modules, to avoid these weak references

  - modules
    - takes a list of \@media scoped rulesets
    - does not support css that's coupled with html, such as
      structural pseudoclasses
 *)

(* https://www.w3.org/TR/2011/REC-css3-selectors-20110929/ *)

(* Creates css modules -- scoped styles that are namespaced by it's class name *)
type 'a t

(* TODO: hide *)
module Internal = struct
  type 'a value = { name: string; declaration: 'a Js.Dict.t }

  module Convert = struct
    external to_module: 'a value -> 'a t = "%identity"
    external to_value: 'a t -> 'a value = "%identity"

    let position:
      Css_Property.Position.t -> [< Css_Property.display] Js.Dict.t =
    function
    | `static static     -> Obj.magic static
    | `absolute absolute -> Obj.magic absolute
    | `relative relative -> Obj.magic relative
    | `fixed fixed       -> Obj.magic fixed
  end
end

(** Gets a class name from the className and/or cssModule if provided *)
let get_class ?className ?cssModule () =
  match (className, Belt.Option.map cssModule Internal.Convert.to_value) with
  | (Some className', Some {name}) -> className' ^" "^ name |. Some
  | (Some _, None) -> className
  | (None, Some {name}) -> Some name
  | _ -> None

let map fn css_module =
  css_module
  |> Internal.Convert.to_value
  |> fn
  |> Internal.Convert.to_module

let to_display css_module =
  css_module
  |> map @@ fun { name; declaration } -> begin
    { name
    ; declaration =
        declaration |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display))
    }
  end

let make
  ?(position:Css_Property.Position.t option)
  declaration: [< Css_Property.display] t =
  Internal.Convert.to_module
    { name = "m"^ MD5.make @@ Css_Property.show_properties declaration
    ; declaration = match position with
      | Some position' ->
        Util.merge (Internal.Convert.position position') declaration
      | None ->
        declaration
    }

let class_name css_module =
  let {Internal.name} = Internal.Convert.to_value css_module
  in
  name

let show ?indent css_module =
  let {Internal.declaration} = Internal.Convert.to_value css_module
  in
  Css_Property.show_properties ?indent declaration
