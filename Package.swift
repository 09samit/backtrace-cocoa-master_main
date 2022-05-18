// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BackTrace",
    products: [
        .library(
            name: "BackTrace",
            targets: ["BackTrace"]),
    ],
    dependencies: [
        .package(url: "https://github.com/09samit/plcrashreporter-master.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BackTrace",
            dependencies: [
                .product(name: "CrashReporter", package: "plcrashreporter-master")
            ],
            path: "Sources"
        )
    ]
)
