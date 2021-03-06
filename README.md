# SwiftUIStarterKit

<p>
    <img src="https://img.shields.io/badge/iOS-13.0+-865EFC.svg" />
    <img src="https://img.shields.io/badge/iPadOS-13.0+-F65EFC.svg" />
    <img src="https://img.shields.io/badge/macOS-10.15+-179AC8.svg" />
    <img src="https://img.shields.io/badge/tvOS-13.0+-41465B.svg" />
    <img src="https://img.shields.io/badge/watchOS-6.0+-1FD67A.svg" />
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <img src="https://github.com/CypherPoet/SwiftUIStarterKit/workflows/Build%20&%20Test/badge.svg" />
    <a href="https://github.com/apple/swift-package-manager">
      <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" />
    </a>
    <a href="https://twitter.com/cypher_poet">
        <img src="https://img.shields.io/badge/Contact-@cypher_poet-lightgrey.svg?style=flat" alt="Twitter: @cypher_poet" />
    </a>
</p>

_A collection of personal utilities that I use for building SwiftUI applications._



## Installation

### Xcode Projects

Select `File` -> `Swift Packages` -> `Add Package Dependency` and enter `https://github.com/CypherPoet/SwiftUIStarterKit`.


### Swift Package Manager Projects

You can add `SwiftUIStarterKit` as a package dependency in your `Package.swift` file:

```swift
let package = Package(
    //...
    dependencies: [
        .package(url: "https://github.com/CypherPoet/SwiftUIStarterKit", .exact("0.0.52")),
    ],
    //...
)
```

From there, refer to `SwiftUIStarterKit` as a "target dependency" in any of _your_ package's targets that need it.

```swift
targets: [
    .target(
        name: "YourLibrary",
        dependencies: [
          "SwiftUIStarterKit",
        ],
        ...
    ),
    ...
]
```

Then simply `import SwiftUIStarterKit` wherever you’d like to use it.

## ⚠️ Disclaimer

Currently, this project is mainly for personal use, and, as the commit history shows, is subject to fast and loose changes.

Nonetheless, several people have asked me to open-source it so they can use it as inspiration or as a starting point for their own utilities. That would be my recommended approach &mdash; though if you really want to be edgy and attempt direct usage, please at least pin it to an exact release tag, as shown in the installation instructions above.


## 💻 Developing

### Requirements

- Xcode 12.5+ (Recommended)


### 📜 Generating Documentation

Documentation is generated by [Jazzy](https://github.com/realm/jazzy). Installation instructions can be found [here](https://github.com/realm/jazzy#installation), and as soon as you have it set up, docs can be generated simply by running `jazzy` from the command line.

📝 Note that this will only generate the `docs` folder for you to view locally. This folder is being ignored by `git`, as an [action](./.github/workflows/PublishDocumentation.yml) exists to automatically generate docs and serve them on the project's `gh-pages` branch.



## 🏷 License

`SwiftUIStarterKit` is available under the MIT license. See the [LICENSE file](./LICENSE) for more info.
