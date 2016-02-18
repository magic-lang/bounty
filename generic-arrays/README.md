# Creating arrays of generic classes
**Last updated: 2016-02-17**
*When using a class using generics, it is impossible to create an array of them*

## Description
Given a generic class `ExampleClass<T>`, the following array cannot be created:

array := ExampleClass<Type>[count] new()

This fails with the error `No such function new() for ArrayClass`.

To solve this problem, generic classes, even those derived from a generic super class, should be able to be the type of an ooc array, both when `T` is a class and when it is a cover.

## Details
**Reward type:** Medium (XXX USD)

**Deadline:** 2016-04-30

**Contact information**: Abcdef Ghijkl (abcdef.ghijkl@mnopqrs.tu)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
