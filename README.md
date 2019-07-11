# GGObjectiveC
An Objective C playground for practicing data structures and algorithms.

## Usage
1. Download or clone this repository 
1. Goto `GGObjectiveCTests/Problems` group
1. Check the problem link in the top of `GOCxxxTests.m` file
1. Write Objective C code in Google document
1. Paste code into `GOCxxxSolution.m` file
1. Run `GOCxxxTests.m` file to debug and check your solution

## Next Version
### Summary
Make a MacOS app with below features
- Display problem and testcase
- Code solution and run test
- Give feedback
### Tech
1. Get solution code from `NSTextField`
1. Create solution file with solution code
1. Use `NSTask` to run `Clang` command to build `test.o` with main file, solution file and test file
1. Use `NSTask` to run `test.o` to get feedback
### Solve sandbox issue
`xcrun: error: cannot be used within an App Sandbox.`

In order to run `Clang` command, the app need to access the resource out of its sandbox.
There are several ways to solve this problem:

ref: https://stackoverflow.com/questions/26082365/any-possible-way-to-run-the-clang-compiler-from-a-sandboxed-app
- easy: turn off app sandbox
- medium: add a temporary exception key
- hard: XPC-services

## License
GGObjectiveC is released under the MIT license. See `LICENSE` for details.
