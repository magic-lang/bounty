Foo: cover {
    calculated ::= 42
}

arr := Foo[1] new()
foo: Foo
arr[0] = foo

arr[0] calculated toString() println()
