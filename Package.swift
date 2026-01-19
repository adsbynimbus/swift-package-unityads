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
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.5/UnityAds.zip",
            checksum: "40b2dceb61335093548cf86fee2658391509c7d8c16fea5335813b76dbfb3089",
        ),
    ]
)
