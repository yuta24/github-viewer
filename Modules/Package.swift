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
            name: "GitHubAPI",
            targets: ["GitHubAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Get", from: "1.0.2"),
        .package(url: "https://github.com/CreateAPI/HTTPHeaders", from: "0.1.0"),
        .package(url: "https://github.com/CreateAPI/URLQueryEncoder", from: "0.2.0")
    ],
    targets: [
        .binaryTarget(
            name: "create-api",
            url: "https://github.com/CreateAPI/CreateAPI/releases/download/0.1.1/create-api.artifactbundle.zip",
            checksum: "0f0cfe7300580ef3062aacf4c4936d942f5a24ab971e722566f937fa7714369a"
        ),
        .plugin(
            name: "CreateAPI",
            capability: .command(
                intent: .custom(
                    verb: "generate-api",
                    description: "Generates the OpenAPI entities and paths using CreateAPI"
                ),
                permissions: [
                    .writeToPackageDirectory(reason: "To output the generated source code")
                ]
            ),
            dependencies: [
                .target(name: "create-api")
            ]
        ),
        .target(
            name: "GitHubAPI",
            dependencies: [
                .product(name: "Get", package: "Get"),
                .product(name: "HTTPHeaders", package: "HTTPHeaders"),
                .product(name: "URLQueryEncoder", package: "URLQueryEncoder")
            ],
            exclude: ["Spec/github.json", ".create-api.yaml"]
        ),
        .target(
            name: "Modules",
            dependencies: []),
        .testTarget(
            name: "ModulesTests",
            dependencies: ["Modules"]),
    ]
)
