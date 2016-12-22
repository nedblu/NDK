# NedBlu Development Kit (NDK)

**NedBlu Development Kit** (NDK), is an `iOS` SDK (we hope soon be providing `macOS`, `tvOS` and `watchOS` support) powered and used by NedBlu.

NDK is written in *Swift 3*.

## Development / Contribution

### Environment

 Xcode 8.1 (8B62)

 Swift 3.0.1 (swiftlang-800.0.58.6 clang-800.0.42.1)

 Fastlane 1.111.0

 Carthage 0.18.1

 SwiftLint 0.13.2

### Code Quality

#### Code Linter

The iOS project has [SwiftLint](https://github.com/realm/SwiftLint) set up with a suite of rules to follow when coding in order to ensure readability and quality. If you are breaking some of the defined rules, the linter will generate a warning or an error (depending of the severity).

#### TDD (Test-Driven Develpment)

This project is being built under **[Test-Driven Development](https://www.agilealliance.org/glossary/tdd/)**.

#### Code Coverage <a id="code-coverage"></a>

In order to provide *reliability* and *reduce bugs* as much as possible, we must to comply with ***at least 90% of coverage*** in our tests.

#### Before creating a Pull-Request

Before creating a PR, make sure you are complying with the expected code coverage. To do it, just run...

```
fastlane test
``` 

... lane (in macOS's **Terminal**). It runs some lanes. To see the output, take a look at:

+ **/swiftlint/result.json** for swift lint.
+ **/slather/coverage/index.html** for code coverage.
+ **/fastlane/test_output/report.html** for test results.

**NOTE:** PRs won't be approved if the tests are failing or code coverage is less than mentioned in [Code Coverage](#code-coverage) section.

<!---
### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```
$ brew update
$ brew install carthage
```

To integrate Alamofire into your Xcode project using Carthage, specify it in your `Cartfile`:

```
github "nedblu/NDK" ~> 0.0
```

Run `carthage update` to build the framework and drag the built `NDK.framework` into your Xcode project.
-->