Polynomial: class {
	power: Int
	derivativeProperty ::= This new(this power - 1)
	derivativeFunc: func -> Polynomial { this power > 0 ? This new(this power - 1) : null }
	increasePower: func { this power += 1 }
	init: func (=power)
}

(square, cubic, quartic) := (Polynomial new(2), Polynomial new(3), Polynomial new(4))

(_linear, _square, _cubic) := (square, cubic, quartic) derivativeFunc()
raise(_linear power != 1, "(a) _linear power != 1")
raise(_square power != 2, "(a) _square power != 2")
raise(_cubic power != 3, "(a) _cubic power != 3")
(_linear, _square, _cubic) free()

(_linear, _square, _cubic) = (square, cubic, quartic) derivativeProperty
raise(_linear power != 1, "(b) _linear power != 1")
raise(_square power != 2, "(b) _square power != 2")
raise(_cubic power != 3, "(b) _cubic power != 3")

(_linear, _square) increasePower()
raise(_linear power != 2, "(c) _linear power != 2")
raise(_square power != 3, "(c) _square power != 3")
(_linear, _square, _cubic) free()
