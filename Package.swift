// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "mercato",
    dependencies: [
      .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.2.0")),
      .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", .upToNextMinor(from: "1.7.1")),
      .package(url: "https://github.com/IBM-Swift/CloudEnvironment.git", from: "6.1.0"),
      .package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", from: "17.0.0"),
      .package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", from: "2.0.0"),
      .package(url: "https://github.com/IBM-Swift/Health.git", from: "0.0.0"),
      .package(url: "https://github.com/ibm-bluemix-mobile-services/bluemix-simple-http-client-swift.git", .upToNextMinor(from: "0.8.0")),
    ],
    targets: [
      .target(name: "mercato", dependencies: [ .target(name: "Application"), "Kitura" , "HeliumLogger"]),
      .target(name: "Application", dependencies: [ "Kitura", "CloudEnvironment","SwiftMetrics","Health",.target(name: "Generated"),
.target(name: "Swagger_Store_ServerSDK"),
      ]),
      .target(name: "Swagger_Store_ServerSDK", dependencies: ["SimpleHttpClient"], path: "Sources/Swagger_Store_ServerSDK" ),
      .target(name: "Generated", dependencies: ["Kitura", "CloudEnvironment","SwiftyJSON", "SwiftMetrics","Health",], path: "Sources/Generated"),

      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura","HeliumLogger" ])
    ]
)
