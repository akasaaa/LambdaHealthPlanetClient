// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LambdaHealthPlanetClient",
    products: [
        .executable(name: "LambdaHealthPlanetClient", targets: ["LambdaHealthPlanetClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", from: "0.1.0"),
        .package(url: "https://github.com/akasaaa/HealthPlanetClient.git", from: "0.1.4"),
    ],
    targets: [
        .target(name: "LambdaHealthPlanetClient", dependencies: [.product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                                                                 .product(name: "HealthPlanetClient", package: "HealthPlanetClient")]),
    ]
)
