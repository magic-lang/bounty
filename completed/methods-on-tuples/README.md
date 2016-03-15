# Completed
Completed in https://github.com/magic-lang/rock/pull/40

# An improved syntax for methods on tuples
**Last updated: 2016-02-17**
*Although tuples can be created and returned easily, one must still call methods on each element separately.*

## Description
Tuples provide an elegant way of defining in, and returning multiple variables from, a specific method. It also allows for the pythonic way of swapping the values of two variables:

```ooc
(a, b) = (b, a)
```

However, calling a method on each type requires a separate call to each element, which reduce their usefulness.

As an example, given a class `ExampleClass` with a non-returning method `method`, and three instances `a`, `b`, `c` of `ExampleClass`, the following code segments should be equal:

```ooc
a method()
b method()
c method()
```

```ooc
(a, b, c) method()
```

To solve this problem, the above statements should be equal, and should also work on methods and properties which return values, such as:

```ooc
(x, y, z) = (1, -5, 7) absoluteValue
// (x, y, z) is now (1, 5, 7)
```

## Details
**Reward type:** Medium (400 EUR)

**Deadline:** 2016-04-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
