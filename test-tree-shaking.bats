@test "parcel bundle should include necessary code (no tree-shaking)" {
  run grep -q span dist/Example.bs.js
  [ "$status" -eq 0 ]
  run grep -q "hello" dist/Example.bs.js
  [ "$status" -eq 0 ]
}


@test "parcel bundle should include unnecessary code (no tree-shaking)" {
  run grep -q blockquote dist/Example.bs.js
  [ "$status" -eq 0 ]
}


@test "webpack bundle should include necessary code (tree-shaking)" {
  # This is the variant from Css_Selector.Element.tToJs
  run grep -q "[-866592054,\"span\"]" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
  # This is the constructor for span elements
  run grep -q "\"span\",Object.assign" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
  run grep -q "hello" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
}


@test "webpack bundle should disclude unnecessary code (tree-shaking)" {
  # This is the variant from Css_Selector.Element.tToJs
  run grep -q "[573069007,\"blockquote\"]" dist/bundle.webpack.js
  [ "$status" -eq 0 ]

  # This is the constructor for blockquote elements
  run grep -q "kn(\"blockquote\"" dist/bundle.webpack.js
  [ "$status" -eq 1 ]
}


@test "rollup bundle should include necessary code (tree-shaking)" {
  # This is the variant from Css_Selector.Element.tToJs
  run grep -q "[-866592054,\"span\"]" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
  # This is the constructor for span elements
  run grep -q "\"span\",Object.assign" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
  run grep -q "hello" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
}


@test "rollup bundle should disclude unnecessary code (tree-shaking)" {
  # This is the variant from Css_Selector.Element.tToJs
  run grep -q "[573069007,\"blockquote\"]" dist/bundle.webpack.js
  [ "$status" -eq 0 ]

  # This is the constructor for blockquote elements
  run grep -q "\"blockquote\",Object.assign" dist/bundle.webpack.js
  [ "$status" -eq 1 ]
}
