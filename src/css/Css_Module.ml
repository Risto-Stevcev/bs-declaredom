(**
 Creates CSS modules -- styles that are scoped by components and identified 
 by a uniquely generated class name
 *)

type 'a t

module Internal = struct
  type 'a value = { name: string; declaration: 'a Css_Property.t Js.Dict.t }

  module Convert = struct
    external to_module: 'a value -> 'a t = "%identity"
    external to_value: 'a t -> 'a value = "%identity"
  end

  let make_name declaration =
    "m"^ MD5.make @@ Css_Property.show_properties declaration

  let map fn css_module =
    css_module
    |> Convert.to_value
    |> fn
    |> Convert.to_module
end

(** Gets a class name from the className and/or cssModule if provided *)
let get_class ?className ?cssModule () =
  match (className, Belt.Option.map cssModule Internal.Convert.to_value) with
  | (Some className', Some {name}) -> className' ^" "^ name |. Some
  | (Some _, None) -> className
  | (None, Some {name}) -> Some name
  | _ -> None

let to_display css_module =
  css_module
  |> Internal.map @@ fun { name; declaration } -> begin
    { name
    ; declaration = declaration
      |> Js.Dict.map (fun [@bs] e -> (e :> Css_Property.display Css_Property.t))
    }
  end

let make declaration: [< Css_Property.display] t =
  Internal.Convert.to_module
    { name = Internal.make_name declaration
    ; declaration
    }

let map f css_module =
  css_module
  |> Internal.Convert.to_value
  |> (fun {declaration} -> begin
      let declaration' = f declaration
      in
      { Internal.name = Internal.make_name declaration'
      ; declaration = declaration' }
     end)
  |> Internal.Convert.to_module

let merge css_module_a css_module_b =
  let {Internal.declaration=a} = Internal.Convert.to_value css_module_a
  and {Internal.declaration=b} = Internal.Convert.to_value css_module_b
  in
  make @@ Util.merge_all [|Js.Dict.empty (); a; b|]

let class_name css_module =
  let {Internal.name} = Internal.Convert.to_value css_module
  in
  name

let show ?indent css_module =
  let {Internal.declaration} = Internal.Convert.to_value css_module
  in
  Css_Property.show_properties ?indent declaration
