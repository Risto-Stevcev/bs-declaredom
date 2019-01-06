(**
 Creates CSS modules -- styles that are scoped by components and identified 
 by a uniquely generated class name.

 Theming works in the same way as {{: https://github.com/css-modules/css-modules/blob/master/docs/theming.md} postcss module theming}.
 *)

type 'a t

(** Gets a class name from the className and/or cssModule if provided *)
val get_class : ?className:string -> ?cssModule:'a t -> unit -> string option

val map : 
  ( ([< Css_Property.display ] as 'a) Js.Dict.t ->
    ([< Css_Property.display ] as 'b) Js.Dict.t
  ) -> 'a t -> 'b t

val merge :
  ([< Css_Property.display ] as 'a) t ->
  ([< Css_Property.display ] as 'a) t ->
  ([< Css_Property.display ] as 'a) t

val to_display : [< Css_Property.display ] t -> Css_Property.display t

val make :
  ?position:Css_Property.Position.t ->
  ([< Css_Property.display ] as 'a) Js.Dict.t -> 'a t

val class_name : 'a t -> string

val show : ?indent:int -> [< Css_Property.display ] t -> string
