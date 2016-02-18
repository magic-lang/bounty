# Bounty program for ooc bug fixing

## Short explanation
This is a bounty program which inspires interested programmers to solve bugs in the ooc language in exchange for fame, glory, and some money.

## The history of ooc and the magic fork
The ooc language was first released in 2009 and is a general-purpose high-level language which compiles to C code. Its compiler is called `rock`.

In mid-2014 a fork was made of both the SDK, which is now greatly rewritten and extended, and the compiler. The latter has undergone some changes. Most notably, this fork does not use any garbage collection and introduces the `virtual` and `override` keywords.

## Rules and practices
All the code submitted through this process will be made available under the MIT license just as the rock compiler is.

A solution is accepted if:
1) It solves all the problems presented in its description
2) It accurately compiles and runs the accompanied test files without crashes or memory leaks
3) An inspection by us do not find any bugs
4) The changes can be merged into the rock repo without any conflicts or introducing new problems

When a solution is accepted you will be contacted to receive your reward.

## How to get started (and learn ooc)

### To get started with ooc:

0) Make sure you have Ubuntu (14.04 or later), `gcc` and `git` installed.

1) Run the script you find at the [magic-tools repo](https://github.com/magic-lang/magic-tools). This will install an editor (VS Code) with proper syntax highlighting, the latest rock compiler, and some other useful tools.

2) Make a directory and clone the [ooc-kean repo](https://github.com/magic-lang/ooc-kean).

3) Run the `test.sh` file you find in its root directory to make sure everything works.

4) Create a file called "helloworld.ooc" with the content `"Hello world!" println()`.

5) Set the `OOC_LIBS` environment variable to the root of the `ooc-kean` directory. `export OOC_LIBS=...`.

6) Compile and run the file with `rock -r helloworld.ooc`

You're good to go! You can start learning the language by browsing the code and reading the original (though slightly outdated) language documentation: https://ooc-lang.org/docs/lang/

### To get started working on the compiler:

1) Clone the [rock fork repo](https://github.com/magic-lang/rock).

2) Run `make clean` followed by `make rescue`. It is always a good idea to do both.

3) The binary is now available in the `bin` folder.

4) Copy the new rock binary to where you want to use it, to a system directory, or make a symlink.

Yes, it's that easy. Whenever you make changes, it is a good idea to run `make clean` before `make rescue`.

### To solve problems:
1) Find a problem which interests you among the folders in the [bounty repo](https://github.com/magic-lang/bounty) (this repo).

2) Solve it.

3) Make a pull request to our [rock repo](https://github.com/magic-lang/rock) with the solution. Your pull request's description should contain a brief summary of what has been done, how it works and how the solution was found. This makes it easier for others to review and learn about rock.

4) Wait for us to accept it, or revise according to our comments.

5) Collect money.

## Contact info
This bounty program, as well as the ooc and rock forks, are managed by XXX.

For more information, please contact:

**ABCDEF GHIJKL**

abcdef.ghijkl@mnopqrs.tu

www.abcdef.gh

Abc, Defland
