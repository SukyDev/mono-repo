// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cicd-ios",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "cicd-ios",
            targets: ["cicd-ios", "BaseView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/luismachado/xcore", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "1.14.0")),
        .package(path: "../../../Packages/CommonPackage"),
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            .exactItem("1.17.5")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "cicd-ios"),
        .testTarget(
            name: "cicd-iosTests",
            dependencies: ["cicd-ios"]
        ),
        .target(
            name: "BaseView"),
        .testTarget(
            name: "BaseViewTests",
            dependencies: ["cicd-ios"]
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
                "BaseView",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        )
    ]
)
