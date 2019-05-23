# bs-declaredom

[![Build Status](https://travis-ci.org/Risto-Stevcev/bs-declaredom.svg?branch=master)](https://travis-ci.org/Risto-Stevcev/bs-declaredom)
[![Latest release](https://img.shields.io/npm/v/@ristostevcev/bs-declaredom.svg?style=flat)](https://www.npmjs.com/package/@ristostevcev/bs-declaredom)
[![License](https://img.shields.io/npm/l/@ristostevcev/bs-declaredom.svg?style=flat)](https://github.com/Risto-Stevcev/bs-declaredom/blob/master/LICENSE)

Strongly typed declarative markup for the DOM and CSS

- **Complete** - HTML and CSS specifications are fully implemented!
- **Strongly typed** - No more markup or styling silently failing without any guidance
- **Custom Elements** - Create [custom][1] components that can leverage strong typing
- **CSS Modules** - Builtin support for modular CSS with strong typing
- **Tree Shaking** - Remove unused HTML and CSS from the final bundle with tree shaking
- **MVC** - Combine with other tooling for get all of the functionality of frameworks without the headaches


## Install

```sh
npm install --save @ristostevcev/bs-declaredom
```

Make sure to set `package-specs.module` in your project's `bsconfig.json` to 
`es6-global` to compile to ES modules for the browser.

If you're using declaredom to generate static HTML or CSS on the backend, add an 
additional package-spec for `commonjs` in your `bsconfig.json`. If you're generating 
static HTML on the backend, make sure to also install and initialize [jsdom][9] 
and set `global.window` and `global.document`, [like so][10]. 


## Examples

The examples in this README can be found in the [example/][2] folder.


## A Library Or A Framework

Declaredom is intentionally simple. It's intended to do only one thing and one thing well, which is to provide good declarative markup for HTML and CSS.

That being said, it's also intended to be combined with other tools so that you get all of the functionality that you would get from a framework.

There are several advantages to combining several small libraries that only do one thing instead of a large monolithic framework:

- **Only use what you need** - Keep things simple, only pull in extra functionality if it provides value.
- **Highly customizable** - By separating concerns you can tailor everything to your needs, you aren't forced to follow any one specific pattern.
- **Encourages open source contribution** - Callbag follows a similar philosophy and has arguably produced higher quality contributions compared to other js streaming libraries, because it's decentralized and there's no authority you have to get approval from. You can write your own callbag libraries and nobody can stop you.
- **Easier to reason about** - By having several very small libraries instead of one very large one, it becomes much more tractable for developers to peek at the source code to understand what's going on under the hood.

See the [example MVC todo app](https://github.com/Risto-Stevcev/bs-declaredom-mvc-example) for more details.


## Introduction

This library provides sound static typing guarantees for HTML and CSS. It ensures that you
write correct HTML and CSS in your app with good conventions like CSS modules. This library is
based off of and fully compliant with the HTML and CSS specs (see docs).

The HTML that's generated are actual DOM nodes that can be converted into [bs-webapi-incubator's][3] `Dom.element` types using `Html.Node.to_element`, or to a `Dom.node` 
using `Html.Node.to_node` if it's a text node or document fragment.


## Documentation

See the [Html][4] and [Css][5] module [docs][8]


## JSX (Reason) or Ocaml

Use either JSX or vanilla Ocaml depending on which style you prefer. Example JSX:

```reason
let foo: Html.Node.t([> Html.Node.div]) =
  <div>
    <span style=Css.inline(~color=`green, ())>
      <text>"Hello, world!"</text>
    </span>
    <br/>
  </div>
```

The `<text>` markup refers to a [text node][6].


## Strongly typed CSS

Don't worry anymore about CSS silently failing! this library ensures that you only apply CSS styles and attributes that are valid for the element

```ocaml
let _ =
  div ~id:"some_div"
    (* This fails because div elements are block elements - the vertical-align
     * property applies to inline elements
    ~style:(Css.inline ~vertical_align:`baseline ())
     *)
    ~style:(Css.block ~color:`red ())
    [||]
```

You can override the CSS display styles, but this library intentionally restricts this functionality to the generic flow (`<div>`), phrasing (`<span>`) and sectioning (`<section>`) containers as other use cases are usually a CSS antipattern
```ocaml
let _ =
  Div.flex ~style:(Css.flexbox ~justify_content:`center ()) [|
    Span.inline_block ~style:(Css.inline_block ~color:`blue ()) [|text "foo"|];
    Section.inline_flex [|text "bar"|]
  |]
```


## Strongly typed HTML


Only valid children are allowed for each element
```ocaml
let _ =
  html [|
    (* This fails because the <html> tag only takes a <head> or <body> element 
     * as children
    span [|text "foo"|]
     *)
    head [||]
  |]
```

Only valid attributes are allowed for each element. The anchor tag accepts a `href` attribute, and the `link` aria role is also allowed
```ocaml
let anchor =
  a ~id:"link" ~href:"#"
    (* Anchor elements can accept the `link` aria role *)
    ~aria:(Html.Attributes.Aria.link ~aria_hidden:() ~aria_label:"foo" ())
    ~on_click:(fun _ -> Js.log "clicked!")
    [|text "some link"|]
```

## Target specific HTML in functions


Make functions that only take a specific kind of element or group of elements
```ocaml
let f (_: Html.Node.span Html.Node.t): unit = ()
let _ =
  f (span [|text "hello"|])
```

## Custom HTML


Add custom types. This creates a custom type called `foo`. This also works 
very well with web components
```ocaml
let custom_foo: [> [> `foo] Html.Node.custom] Html.Node.t = Obj.magic @@
  span [|text "foo"|]
```

You can even give your custom element the ability to take only specific children! OCaml's powerful polymorphic variants will correctly unify the elements you pass into the array.

This example constructs a custom `foo` element that only takes other custom `foo` elements, custom `bar` elements, and `span` and `br` elements:
```ocaml
let make_custom_bar
  (children: [[`bar | `foo] Html.Node.custom | Html.Node.span | Html.Node.br] Html.Node.t array):
  [> [> `bar] Html.Node.custom] Html.Node.t =
  (* TODO: stubbed, needs implementation *)
  Obj.magic children

let _: [`bar] Html.Node.custom Html.Node.t =
  make_custom_bar
  [|
    span [|text "Custom foo:"|];
    br ();
    custom_foo;
    (* This fails because <p> tags aren't allowed
    p [|text "foobar"|]
     *)
  |]
```

You can also typecheck based on your custom type
```ocaml
let f' (_: [`foo] Html.Node.custom Html.Node.t): unit = ()
let _ = f' custom_foo
```

And since the markup produces real HTML elements, it works very well with [web components][1].


## CSS Modules

CSS modules deal with a lot of the pitfalls of CSS in a large scale app. Provide one CSS module per component and no longer worry about precedence rules, or enforcing conventions like BEM, or applying silly hacks and refactoring if the dev team painted themselves into a corner. Keep it simple.
```ocaml
let my_title = Css.Module.make @@
  Css.block ~color:`coral ~font_size:(`em 24.) ()
```

Instead of mucking around with inheritance using CSS's inheritance model, you can build up 
abstractions using composition instead by merging rulesets, which is more explicit and easier 
to understand and predict.

You can then apply these to your elements, but make sure you serve the CSS module in a stylesheet (inline or served as a CSS file)
```ocaml
let _ =
  h1 ~css_module:my_title [|text "This is my title"|]
```

These work much like postcss modules except that you get to use Ocaml's type system to ensure that you only reference a module that actually exists, and no preprocessing is required.

And you can still build these if you aren't using Ocaml on the backend by generating the CSS stylesheets as part of your build, and then you can even apply other transformations like autoprefixer if you need to.


## Acknowledgments

This library is possible only because of Ocaml's powerful type system that is both 
strong, sound, and flexible. Speficially, it's Ocaml's module system and polymorphic 
variants that make this library possible.


## Tree Shaking

This library generates `es6-global` and `commonjs` output so you can use the es6 
output for tree-shaking using rollup or webpack and the commonjs output for a nodejs backend. 
The resulting bundle won't include any exports that you aren't using, such as HTML nodes or CSS.

Use rollup + google closure compiler on your final bundle if you want to get the most out of tree 
shaking and dead code elimination.


## License

See [LICENSE][7]


[1]: https://wiki.whatwg.org/wiki/Custom_Elements
[2]: https://github.com/Risto-Stevcev/bs-declaredom/tree/master/example
[3]: https://github.com/reasonml-community/bs-webapi-incubator
[4]: https://risto-stevcev.github.io/bs-declaredom/bs-declaredom/Html/index.html
[5]: https://risto-stevcev.github.io/bs-declaredom/bs-declaredom/Css/index.html
[6]: https://dom.spec.whatwg.org/#interface-text
[7]: https://github.com/Risto-Stevcev/bs-declaredom/blob/master/LICENSE
[8]: https://risto-stevcev.github.io/bs-declaredom
[9]: https://github.com/jsdom/jsdom
[10]: https://github.com/Risto-Stevcev/bs-declaredom/blob/master/test/html/Jsdom.ml
