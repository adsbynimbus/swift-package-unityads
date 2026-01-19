// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "UnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "UnityAds",
            targets: ["UnityAds"],
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.2/UnityAds.zip",
            checksum: "178bb4d16a5fef70470c7d4526fbcebdf3baeeb82d5c80ab1fb5d40b419f4e1a",
        ),
    ]
)
