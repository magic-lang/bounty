# Slow compilation of properties
**Last updated: 2016-02-17**
*For unknown reasons, certain properties take a very long to compile.*

## Description
As originally discussed here: https://github.com/fasterthanlime/rock/issues/909, code using properties can sometimes take a long time to compile. This may be due to the fact that properties-related code in middle-end often return `Response LOOP`.

To solve this problem, either

1) Show the cause of the slow compilation and prove with sufficient reason why it cannot be optimized.
2) Find the cause of the slow compilation and reduce the pathologically slow cases.

## Details
**Reward type:** Low (200 EUR)

**Deadline:** 2016-06-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
