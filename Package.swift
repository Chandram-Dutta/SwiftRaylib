// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SwiftRaylib",
    products: [
        .library(name: "raylib-5.0_macos", targets: ["raylib-5.0_macos"]),
        .executable(
            name: "SwiftRaylib",
            targets: ["SwiftRaylib"]),
    ],
    targets: [
        .target(
            name: "raylib-5.0_macos"),
        .executableTarget(
            name: "SwiftRaylib",
            dependencies: ["raylib-5.0_macos"],
            swiftSettings: [.interoperabilityMode(.Cxx)]),
    ]
)
