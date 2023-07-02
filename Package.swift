// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "OpenSourceViewer",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OpenSourceViewer",
            targets: ["OpenSourceViewer"]
        )
    ],
    targets: [
        .target(
            name: "OpenSourceViewer",
            dependencies: []
        )
    ]
)
