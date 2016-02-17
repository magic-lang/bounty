// This should throw a compiler warning because there is no 0-argument constructor in Base

Base: abstract class {
	value: Int
	init: func ~default (=value)
}

Derived: class extends Base {
	init: func (v: Int) {
		super()
	}
}

x := Derived new(3)
x value toString() println()
