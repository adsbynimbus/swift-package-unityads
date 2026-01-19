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
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.1/UnityAds.zip",
            checksum: "cb8ba2a90c8f16ccafd5958d4d8457dab578865629dd3aa1ac1fc4677ec9cf54",
        ),
    ]
)
