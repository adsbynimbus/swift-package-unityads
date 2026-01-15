// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-package-template",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "swift-package",
            targets: ["swift-package-xcframework"],
        ),
    ],
    targets: [
        .binaryTarget(
            name: "swift-package-xcframework",
            url: "https://path-to-xcframework",
            checksum: "8675309",
        ),
    ]
)
