// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestingSpm",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Lib1",
            targets: ["Tar1A", "Tar1B"]),
        .library(name: "Lib2",
                 targets: ["Tar2A", "Tar2B"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "Package1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "Tar1A",
                dependencies: ["Lib1FromPk1"]),
        .target(name: "Tar1B",
                dependencies: ["Lib2FromPk1"]),
        .target(name: "Tar2A"),
        .target(name: "Tar2B")
    ]
)
