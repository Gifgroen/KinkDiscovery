// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ChannelList",
  platforms: [
    .iOS(.v15),
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "ChannelList",
      targets: ["ChannelList"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/krzysztofzablocki/Inject.git",
      exact: "1.3.0"
    ),
  ],
  targets: [
    .target(
      name: "ChannelList",
      dependencies: ["Inject"]
    ),
    .testTarget(
      name: "ChannelListTests",
      dependencies: ["ChannelList"]
    ),
  ]
)
