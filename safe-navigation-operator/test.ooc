Polynomial: class {
	power: Int
	derivativeMember: This
	derivativeProperty ::= This new(this power - 1)
	derivativeFunc: func -> Polynomial { this power > 0 ? This new(this power - 1) : null }
	init: func (=power) {
		this derivativeMember = this derivativeFunc()
	}
}

somePolynomial := Polynomial new(8)
thirdDerivativeA: Polynomial
thirdDerivativeB: Polynomial
thirdDerivativeC: Polynomial

thirdDerivativeA = somePolynomial $ derivativeMember $ derivativeMember $ derivativeMember
thirdDerivativeB = somePolynomial $ derivativeProperty $ derivativeProperty $ derivativeProperty
thirdDerivativeC = somePolynomial $ derivativeFunc() $ derivativeFunc() $ derivativeFunc()

raise(thirdDerivativeA == null, "thirdDerivativeA is null")
raise(thirdDerivativeB power != 5, "thirdDerivativeB power is not 5")
raise(thirdDerivativeC power != 5, "thirdDerivativeC power is not 5")

// This should not crash
thirdDerivativeD := Polynomial new(2) $ derivativeFunc() $ derivativeFunc() $ derivativeFunc() $ derivativeFunc()
raise(thirdDerivativeD power != 0, "thirdDerivativeD power is not 0")
