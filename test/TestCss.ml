open BsTape
open Test
open Css.Selector.Infix

type selector = Css.Selector.t

module Test = struct
  test ~name:"css selectors" @@ fun t -> begin
    let equal x y t = t |> T.equal (Css.Selector.show x) y in 

    t |> T.equal (TextAlign.make `center |> Css.Property.show) "center";
    t |> equal `h1 "h1";

    t |> equal `active ":active";
    t |> equal (`h2 |: `active |: `checked) "h2:active:checked";

    t |> equal (`h1 |.. `h2 |: `active |.. `h3) "h1 h2:active h3";
    t |> equal (`h1 |.. `h2 |.. `h3) "h1 h2 h3";
    t |> equal (`h2 |>. `span) "h2 > span";

    let s =
      Css.Selector.Focusable.make
				(`h2 |.. `h3 |: `active |>. `attribute (`a, `has "href"))
      |> Js.Option.andThen (fun [@bs] s -> begin
           Some (`focus s |> Css.Selector.show)
         end)
    in
    t |> T.equal s (Some "h2 h3:active > a[href]:focus");

    t |> equal (`div |.. `h2 |>. `span) "div h2 > span";
    t |> equal (`div |.. `h2 |+ `span) "div h2 + span";
    t |> equal (`div |.. `h2 |~ `span) "div h2 ~ span";

    t |> equal (`has "href") "[href]";
    t |> equal ("title" := "bar") "[title=\"bar\"]";
    t |> equal ("title" ^= "bar") "[title^=\"bar\"]";
    t |> equal ("title" $= "bar") "[title$=\"bar\"]";

    t |> equal (`div |= "title" @$= "bar") "div[title$=\"bar\"]";

    t |> equal (`class_name "foo" |.. `h2) ".foo h2";
    t |> equal (`class_name "foo" |.. `h2) ".foo h2";

    t |> equal (`not `active) ":not(:active)";

    t |> T.end_
  end
end
