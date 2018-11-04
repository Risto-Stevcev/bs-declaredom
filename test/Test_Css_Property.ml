open BsTape
open Test
open Css.Selector.Infix
;;

test ~name:"css property - textAlign" @@ fun t -> begin
  t |> T.equal (Clear.make `inherit_ |> Css.Property.show)
       "clear: inherit";
  t |> T.equal (Clear.make `initial |> Css.Property.show)
       "clear: initial";
  t |> T.equal (Clear.make `unset |> Css.Property.show)
       "clear: unset";
  t |> T.end_
end;

test ~name:"css property - textAlign" @@ fun t -> begin
  t |> T.equal (TextAlign.make `left |> Css.Property.show)
       "text-align: left";
  t |> T.equal (TextAlign.make `right |> Css.Property.show)
       "text-align: right";
  t |> T.equal (TextAlign.make `center |> Css.Property.show)
       "text-align: center";
  t |> T.equal (TextAlign.make `justify |> Css.Property.show)
       "text-align: justify";
  t |> T.equal (TextAlign.make `inherit_ |> Css.Property.show)
       "text-align: inherit";
  t |> T.end_
end
