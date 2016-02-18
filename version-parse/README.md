# Correct parsing of version flags
**Last updated: 2016-02-17**
*The `!` operator has too high precedence in version statements.*

## Description
Although `if (!a && !b)` is parsed correctly and means the same as `if (!b && !a)`, `version (!a && !b)` is not equivalent to `version (!b && !a)`.

To solve this problem, logic propositions using `&&`, `||`, and `!` operators shall be logically correct in all cases.

## Details
**Reward type:** Low (XXX USD)

**Deadline:** 2016-04-30

**Contact information**: Abcdef Ghijkl (abcdef.ghijkl@mnopqrs.tu)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
