# Using the safe navigation operator with properties
**Last updated: 2016-02-17**
*Using the safe navigation operator only works with class members, not properties.*

## Description
Given the following code:

```ooc
Polynomial: class {
    m_derivative: Polynomial
    derivative ::= this m_derivative
    init: func
}

somePolynomial := Polynomial new()
thirdDerivative: Polynomial
```

The following code works as expected:
`thirdDerivative = somePolynomial $ m_derivative $ m_derivative $ m_derivative`

Unfortunately, this does not:
`thirdDerivative = somePolynomial $ derivative $ derivative $ derivative`

The given error message is `'source_Main__Polynomial' has no member named 'derivative'`.

The safe navigation operator should work with both members, methods, and properties, in both classes and covers.

## Details
**Reward type:** Low (200 EUR)

**Deadline:** 2016-04-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
