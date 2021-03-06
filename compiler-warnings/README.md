# Compiler warnings when using Wall and Wextra
**Last updated: 2016-02-17**
*Compiling rock-generated C code using gcc with -Wextra results in warnings.*

## Description
Even the most simple program such as

```ooc
"Hello world!" println()
```

when compiled with `rock -x -r -q helloworld.ooc +-Wall +-Wextra` results in many, many gcc warnings. This is not ideal if, for example, `ooc` is used to build software libraries.

To solve this bounty, C code generated by rock should not give any warnings when compiling with gcc and `-Wall -Wextra`.

## Details
**Reward type:** High (600 EUR)

**Deadline:** 2016-06-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
