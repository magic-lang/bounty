# Bounty program for ooc bug fixing

## Short explanation
This is a bounty program which inspires interested programmers to solve bugs in the ooc language in exchange for fame, glory, and some money.

## The history of ooc and the magic fork
The ooc language was first released in 2009 and is a general-purpose high-level language which compiles to C code. Its compiler is called `rock`.

In mid-2014 a fork was made of both the SDK, which is now greatly rewritten and extended, and the compiler. The latter has undergone some changes. Most notably, this fork does not use any garbage collection and introduces the `virtual` and `override` keywords. To distinguish it from upstream ooc it is sometimes called `magic` or `magic-lang`, but it is really `ooc` with minor changes.

## Rules and practices
All the code submitted through this process will be made available under the MIT license just as the rock compiler is.

A solution is accepted if:

1) It solves all the problems presented in its description

2) It accurately compiles and runs the accompanied test files without crashes or memory leaks

3) An inspection by us does not find any bugs

4) The changes can be merged into the rock repo without any conflicts or introducing new problems

When a solution is accepted you will be contacted to receive your reward. This sum is specified in each problem's respective description. Any taxes or fees are paid for by the recipient.

## How to get started

### ...with ooc:

0) Make sure you have Ubuntu (14.04 or later), with `gcc` and `git` installed (`sudo apt-get install gcc git`).

1) Run the script you find at the [magic-tools repo](https://github.com/magic-lang/magic-tools). This will install an editor (VS Code) with proper syntax highlighting, the latest rock compiler, and some other useful tools.

2) Make a directory and clone the [ooc-kean repo](https://github.com/magic-lang/ooc-kean).

3) Run the `test.sh` file you find in its root directory to make sure everything works.

4) Create a file called "helloworld.ooc" with the content `"Hello world!" println()`.

5) Set the `OOC_LIBS` environment variable to the root of the `ooc-kean` directory. `export OOC_LIBS=...`.

6) Compile and run the file with `rock -r helloworld.ooc`

You're good to go! You can start learning the language by browsing the code and reading the original (though slightly outdated) language documentation: https://ooc-lang.org/docs/lang/

### ...working on the compiler:

1) Clone the [rock fork repo](https://github.com/magic-lang/rock).

2) Run `make clean` followed by `make rescue`. It is always a good idea to do both.

3) The binary is now available in the `bin` folder.

4) Copy the new rock binary to where you want to use it, to a system directory, or make a symlink.

Yes, it's that easy. Whenever you make changes, it is a good idea to run `make clean` before `make rescue`.

The beginnings of a rock documentation (updated almost daily) is available at the [rock-dev repo](https://github.com/shamanas/rock-dev). It includes a lot more detail on how to build rock, as well as information on its code structure and where different parts are located. 

### ...solving bounty problems:
1) Find a problem which interests you among the folders in the [bounty repo](https://github.com/magic-lang/bounty) (this repo).

2) Not mandatory, but recommended: Contact us (see below) with a short message describing who you are, what problem(s) you want to tackle, and any questions you may have. We are happy to help guide you through the process. We can offer some help on ooc questions, but little to no help on rock-specific questions.
 
3) Solve the problem.

4) Make a pull request to our [rock repo](https://github.com/magic-lang/rock) with the solution. Your pull request's description should contain a brief summary of what has been done, how it works and how the solution was found. This makes it easier for others to review and learn about rock. If you are unfamiliar with `git` or `GitHub`, contact us and we will help you.

5) Wait for us to review it (within a few work days)

6) Your pull request is either accepted or commented with questions or bugs we have found. Revise them and go to step 5.

7) Collect money.

## Contact info
For more information, please contact:

**Fredrik Bryntesson**

[fredrik.bryntesson@vidhance.com](mailto:fredrik.bryntesson@vidhance.com)

Uppsala, Sweden
