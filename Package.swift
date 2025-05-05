// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PhunwareCorePlugin",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        // Only expose these to clients
        .library(
            name: "PhunwareCorePlugin", 
            targets: ["PhunwareCorePluginTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/phunware/artifact-foundation-ios.git", from: "1.1.0")
    ],
    targets: [
        // Internal frameworks
        .binaryTarget(
            name: "PhunwareCorePlugin",
            path: "FrameworksStaticLinks/PhunwareCorePlugin.xcframework"
        ),
        .target(name: "PhunwareFoundationTargets",
            dependencies:[
                .target(name: "PhunwareCorePlugin"),
                .product(name: "PhunwareFoundation", package: "artifact-foundation-ios", condition: nil),
            ],
            path: "PhunwareFoundationTargets"
        )
    ]
)
