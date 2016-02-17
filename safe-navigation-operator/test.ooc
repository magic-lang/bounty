Polynomial: class {
	power: Int
	derivativeMember: Polynomial new(0)
	derivativeProperty ::= This new(this power - 1)
	derivativeFunc: func -> Polynomial { this power > 0 ? This new(this power - 1) : null }
	init: func (=power)
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
