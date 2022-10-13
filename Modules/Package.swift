// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Modules",
    products: [
        .library(
            name: "Modules",
            targets: ["Modules"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Modules",
            dependencies: []),
        .testTarget(
            name: "ModulesTests",
            dependencies: ["Modules"]),
    ]
)
