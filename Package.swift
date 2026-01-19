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
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.4/UnityAds.zip",
            checksum: "ddc08bb10f636d51c3fe3d73a38c937ea4b0e13c177dd661ad6826f1e72e8e69",
        ),
    ]
)
