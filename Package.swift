// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "EvernoteSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "EvernoteSDK",
            targets: ["EvernoteSDK"]
        )
    ],
    targets: [
        .target(
            name: "EvernoteSDK",
            dependencies: [],
            path: "evernote-sdk-ios/ENSDK",
            sources: nil,
            resources: [
                .process("ENSDKResources.bundle")
            ],
            publicHeadersPath: "include"
        )
    ]
)
