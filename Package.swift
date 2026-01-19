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
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.0/UnityAds.zip",
            checksum: "60538a0a7d7b4467a4d4bd302154e99a56f95fb680801da63da6395be92c92cf",
        ),
    ]
)
