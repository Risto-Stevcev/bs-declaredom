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
  run grep -q span dist/bundle.webpack.js
  [ "$status" -eq 0 ]
  run grep -q "hello" dist/bundle.webpack.js
  [ "$status" -eq 0 ]
}


@test "webpack bundle should disclude unnecessary code (tree-shaking)" {
  run grep -q blockquote dist/bundle.webpack.js
  [ "$status" -eq 1 ]
}


@test "rollup bundle should include necessary code (tree-shaking)" {
  run grep -q span dist/bundle.rollup.js
  [ "$status" -eq 0 ]
  run grep -q "hello" dist/bundle.rollup.js
  [ "$status" -eq 0 ]
}


@test "rollup bundle should disclude unnecessary code (tree-shaking)" {
  run grep -q blockquote dist/bundle.rollup.js
  [ "$status" -eq 1 ]
}
