// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OtherGrid",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13)
    ],
    products: [
        .library(name: "OtherGrid", targets: ["OtherGrid"])
    ],
    targets: [
        .target(name: "OtherGrid", dependencies: [], exclude: ["Demo"]),
        .testTarget(name: "OtherGridTests", dependencies: ["OtherGrid"], exclude: ["Demo"])
    ]
)
