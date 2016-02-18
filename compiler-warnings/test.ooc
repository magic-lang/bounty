// The following code should compile and run with +-Wall +-Wextra +-Werror

"Hello" println()

sum := 0
array := Int[100] new()
for (i in 0 .. 100) {
	array[i] = i
	sum += i - 1
}

Expression: abstract class {
	random: Float
	init: func { this random = 2.3f }
}

AlgebraicExpression: class extends Expression {
	init: func { super() }
}

Polynomial: class extends AlgebraicExpression {
	power: Int
	derivativeProperty ::= This new(this power - 1)
	derivativeFunc: func -> Polynomial { this power > 0 ? This new(this power - 1) : null }
	increasePower: func { this power += 1 }
	init: func (=power) { super() }
}

somePolynomial := Polynomial new(3)
derivative := somePolynomial derivativeFunc() derivativeProperty . increasePower()
derivative free()

"world! %d" printfln(sum)
