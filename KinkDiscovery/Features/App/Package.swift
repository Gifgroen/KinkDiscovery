// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "App",
  platforms: [
    .iOS(.v15),
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "App",
      targets: ["App"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/krzysztofzablocki/Inject.git",
      exact: "1.3.0"
    )
  ],
  targets: [
    .target(
      name: "App",
      dependencies: ["Inject"]
    ),
    .testTarget(
      name: "AppTests",
      dependencies: ["App"]
    ),
  ]
)
