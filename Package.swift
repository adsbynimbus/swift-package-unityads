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
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.15.1/UnityAds.zip",
            checksum: "14bf337196be779f91f894c6bc919b3394cf599a6c3a2e3da434773906b68a68",
        ),
    ]
)
