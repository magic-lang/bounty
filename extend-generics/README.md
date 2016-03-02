# Extending generic classes
**Last updated: 2016-02-17**
*It is currently only possible to extend a generic class for a specific type, not for any type*

## Description
Generic classes cannot be extended. For example, given a generic class `ExampleClass<T>`, the following is allowed:

```ooc
extend ExampleClass<Int> {
    method: func -> String { "Hello world!" }
}
```

The following is not allowed:

```ooc
extend ExampleClass<T> {
    method: func -> String { "Hello world!" }
}
```

To solve this problem, it should be possible to extend generic classes with unspecified type just as for specified types. Members, properties and methods should all work.

## Relevant links
Work on this project started here, but was never finished: https://github.com/fasterthanlime/rock/pull/969

A deeper discussion on this topic is available in the original issue: https://github.com/ooc-lang/rock/issues/830

## Details
**Reward type:** Medium (400 EUR)

**Deadline:** 2016-04-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
