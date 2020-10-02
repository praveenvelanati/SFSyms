// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package1",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Lib1FromPk1",
            targets: ["Pkg1Tar1"]),
        .library(name: "Lib2FromPk1",
                 targets: ["Pkg1Tar2"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "Package1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "Pkg1Tar1"),
        .target(name: "Pkg1Tar2")
    ]
)
