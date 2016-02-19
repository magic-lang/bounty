# Assigning value with covers and properties does not always work
**Last updated: 2016-02-17**
*Properties or operators that return covers must be stored in an intermediary variable*

## Description
Properties or operators that return covers must be stored in an intermediary variable before being assigned to something. An example:

```ooc
// myAttribute in MyCover is calculated using a property

// Not working
result = myCovers[i] myAttribute

// Working
myCover := myCovers[i] // Convert rvalue to lvalue
result = myCover myAttribute
```

The attached test files show some examples using both an `ArrayList` and `Array`.

## Relevant links
This has been discussed in the following issue: https://github.com/fasterthanlime/rock/issues/940

## Details
**Reward type:** Medium (XXX USD)

**Deadline:** 2016-04-30

**Contact information**: Abcdef Ghijkl (abcdef.ghijkl@mnopqrs.tu)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
