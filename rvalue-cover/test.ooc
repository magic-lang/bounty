// Note, ArrayList is a part of the rock/sdk, not magic-sdk
import structs/ArrayList

Foos: class {
    init: func
    operator [] (index: Int) -> Foo {
        Foo new()
    }
}
Foo: cover {
    bar: Int
    init: func@
}

foos := Foos new()
list := ArrayList<Int> new()

// This does not work
list add(foos[0] bar)

// The following rewrite works
foo := foos[0]
list add(foo bar)
