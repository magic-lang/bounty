# Extend version flag functionality
**Last updated: 2016-04-05**
*Version flags cannot contain import or use statements, and they are very limited inside use files.*

## Description
This bounty contains two parts.

### Import and use
It is possible to surround `include`-statements inside version-blocks, and have these files only included if the correct version flag(s) are supplied to rock.

The same does *not* apply to `use` and `import` statements. The following is not, but should be, possible:

```ooc
version(someFlag && someOtherFlag) {
use geometry
use draw
use collections
use base

import GpuContext, GpuImage, Mesh, GpuYuv420Semiplanar

MyClass: class Canvas {
	...
} // end MyClass
} // end version
```

In short, version blocks should be able to encapsulate `use` and `import` the same way that `include` is treated. If the correct version flag(s) are not supplied to rock, there should be *no* side-effects from anything used or imported. The files should not even have to exist.

### Version inside use files
At present, only a fixed set of flags (like `windows`, `apple`, `android`, etc.) can be used inside a use file.

A typical use file we would like to be able to use (no pun intended) would look something like this:

```ooc
Name: Plot
Description: Plot functionality library.
SourcePath: source/plot
version (usePlots) {
	version (lines && !preventLines) {
		Imports: LinePlotData2D
	}
	Imports: ScatterPlotData2D
}
```

In short, version blocks as they appear in normal `ooc`-files should work the same way inside use-files, and surround `Imports:` and `Libs:` statements with any generic version flag name. If the correct version flag(s) are not supplied to rock, there should be *no* side-effects from anything imported. The files should not even have to exist.

## Details
**Reward type:** Medium (400 EUR). This bounty consists of two parts worth 200 EUR each.

**Deadline:** 2016-06-30

**Contact information**: Fredrik Bryntesson, [fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

---

This bounty is a part of the ooc bounty challenge. Its complete set of rules is available in the main README of the [bounty repo](https://github.com/magic-lang/bounty).

Code examples are provided in the same folder as this document has been taken from.

A solution is submitted as a pull request to our [rock fork repo](https://github.com/magic-lang/rock).
