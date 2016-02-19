// This should throw compiler warnings because signatures and/or number of arguments do not match

// Note: Some of these already fail in the current rock version, but not all of them.

Base: class {
    value: Int
    init: func {
        this value = 0
    }
    increase: virtual func {
        this value += 1
    }
    increaseByTwo: virtual func -> Int {
        this value += 2
        this
    }
    decrase: abstract func
    decreaseByArgument: virtual func (argument := 2) -> Int {
        this value -= argument
        this value
    }
    setZero: virtual func (arg1, arg2: Int) {
        this value = 0
    }
}

Derived: class {
    init: func { super() }
    increase: override func -> Int {
        this value + 1
    }
    increaseByTwo: override func (argument: Int) -> Int {
        this value -= argument
        this value + 0
    }
    decrase: override func (argument: Int) {
        this value -= argument
    }
    decreaseByArgument: override func (arg1, arg2, arg3: Int) -> Int {
        this value += arg1
        arg2
    }
    setZero: override func (arg1, arg2: Int) -> Int {
        this value = 42
        this value
    }
}

//base := Base new()
//derived := Derived new()
