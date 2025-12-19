fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios test

```sh
[bundle exec] fastlane ios test
```

Run tests with code coverage

### ios coverage

```sh
[bundle exec] fastlane ios coverage
```

Generate code coverage report with xcov

### ios test_with_coverage

```sh
[bundle exec] fastlane ios test_with_coverage
```

Run tests and generate coverage report

### ios build

```sh
[bundle exec] fastlane ios build
```

Build app for release

### ios deploy_testflight

```sh
[bundle exec] fastlane ios deploy_testflight
```

Upload to TestFlight

### ios release

```sh
[bundle exec] fastlane ios release
```

Full release process: build and upload

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
