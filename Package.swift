// swift-tools-version:5.5
// We're hiding dev, test, and danger dependencies with to make sure they're not fetched by users of this package.
import PackageDescription

let package = Package(
    name: "AppStoreConnect-Swift-SDK",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"]),
        .library(name: "AppStoreConnect-Swift-SDK", targets: ["AppStoreConnect-Swift-SDK"])
    ],
    dependencies: [
        .package(name: "danger-swift", url: "https://github.com/danger/swift", from: "3.12.1"),
        .package(name: "WeTransferPRLinter", path: "Submodules/WeTransfer-iOS-CI/WeTransferPRLinter")
        ],
    targets: [
        .target(name: "DangerDependencies", dependencies: [
            .product(name: "Danger", package: "danger-swift"),
            .product(name: "WeTransferPRLinter", package: "WeTransferPRLinter")
        ], path: "Submodules/WeTransfer-iOS-CI/DangerFakeSources", sources: ["DangerFakeSource.swift"]),
        .testTarget(name: "AppStoreConnect-Swift-SDK-Tests", dependencies: ["AppStoreConnect-Swift-SDK"], path: "Tests", exclude: ["LinuxMain.swift"]),
        .target(name: "AppStoreConnect-Swift-SDK", path: "Sources")
    ]
)
