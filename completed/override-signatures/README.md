# Completed



## Function signatures in derived or super classes need not match
**Last updated: 2016-02-17**
*It is, for example, possible to call a super constructor which does not exist.*

## Description
It is at present possible to compile and run the following code:

```ooc
Base: class {
	value: Int
	init: func (=value)
}

Derived: class extends Base {
	init: func (v: Int) {
		super()
	}
}
```

There is no constructor in `Base` which takes zero arguments, but this code still compiles, and even runs as expected.

To solve this problem, the number (and type) of arguments should always have to match when calling super functions - both constructors and regular methods. When they do not, rock should *always* throw a compiler error.

## Relevant links

This same code was reported as an issue to the original rock repo in February 2016: https://github.com/ooc-lang/rock/issues/974

## Details
**Reward type:** High (600 EUR)

**Deadline:** 2016-04-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
