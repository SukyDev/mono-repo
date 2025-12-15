// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cicddev-ios",
    platforms: [
            .iOS(.v18)   // or .iOS(.v18) — both OK
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "cicddev-ios",
            targets: ["cicddev-ios"]),
        .library(name: "CustomContentView", targets: ["CustomContentView"])
    ],
    dependencies: [
        .package(url: "https://github.com/luismachado/xcore", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "1.14.0")),
        .package(path: "../../../Packages/Sources/CommonPackage"),
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.17.5"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "cicddev-ios",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .testTarget(
            name: "cicddev-iosTests",
            dependencies: [
                "cicddev-ios",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .target(
            name: "CustomContentView",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
            ]
        ),
        .target(
            name: "XCTestSupport",
            dependencies: [
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
                .product(name: "Xcore", package: "Xcore")
            ],
            path: "Tests/XCTestSupport"
        ),
        .testTarget(
            name: "ContentViewTests",
            dependencies: [
                "CustomContentView",
                "XCTestSupport",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        )
    ]
)
