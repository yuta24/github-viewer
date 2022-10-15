// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Modules",
            targets: ["Modules"]),
        .library(
            name: "Presentation",
            targets: ["Presentation"]),
        .library(
            name: "GitHubAPI",
            targets: ["GitHubAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Resolver", from: "1.5.0"),
        .package(url: "https://github.com/kean/Get", from: "1.0.2"),
        .package(url: "https://github.com/kean/Nuke", from: "11.3.0"),
        .package(url: "https://github.com/kean/Pulse", from: "2.1.3"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess", from: "4.2.2"),
        .package(url: "https://github.com/CreateAPI/HTTPHeaders", from: "0.1.0"),
        .package(url: "https://github.com/CreateAPI/URLQueryEncoder", from: "0.2.0"),
    ],
    targets: [
        .target(
            name: "GitHubAPI",
            dependencies: [
                .product(name: "Get", package: "Get"),
                .product(name: "HTTPHeaders", package: "HTTPHeaders"),
                .product(name: "URLQueryEncoder", package: "URLQueryEncoder")
            ]
        ),
        .target(
            name: "Modules",
            dependencies: []),
        .testTarget(
            name: "ModulesTests",
            dependencies: ["Modules"]),
        .target(
            name: "Presentation",
            dependencies: [
                "GitHubAPI",
                .product(name: "KeychainAccess", package: "KeychainAccess"),
                .product(name: "NukeUI", package: "Nuke"),
                .product(name: "PulseUI", package: "Pulse"),
                .product(name: "Resolver", package: "Resolver"),
            ]),
    ]
)
