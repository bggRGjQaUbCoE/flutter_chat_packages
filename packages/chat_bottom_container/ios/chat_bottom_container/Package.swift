// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "chat_bottom_container",
    platforms: [
        .iOS("11.0")
    ],
    products: [
        // library and target names.
        // If the plugin name contains "_", replace with "-" for the library name.
        .library(name: "chat-bottom-container", targets: ["chat_bottom_container"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "chat_bottom_container",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                "FSAChatBottomContainer"
            ],
            resources: [
            ]
        ),
        .binaryTarget(
            name: "FSAChatBottomContainer",
            url: "https://github.com/LinXunFeng/flutter_chat_packages_pub/releases/download/chat_bottom_container/ios_0.0.1.zip",
            checksum: "b9c380b72010e5d378cc813fbc5cca9b21471b82134e633567a6beee4b5a2a91"
        )
    ]
)