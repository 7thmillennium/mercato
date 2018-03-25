// import Foundation
// import Kitura
// import LoggerAPI
// import Configuration
// import CloudEnvironment
// import KituraContracts
// import Health

// // Service imports
// import SwiftRedis
// import SwiftKueryORM

// public let projectPath = ConfigurationManager.BasePath.project.path
// public var basePath = "/v2"
// public let health = Health()

// class ApplicationServices {
//     // Initialize services
//     public let redisService: RedisCredentials

//     public init(cloudEnv: CloudEnv) throws {
//         // Run service initializers
//         redisService = try initializeServiceRedis(cloudEnv: cloudEnv)
//         try initializeServicePostgre(cloudEnv: cloudEnv)
//     }
// }

// public class App {
//     let router = Router()
//     let cloudEnv = CloudEnv()
//     let swaggerPath = projectPath + "/definitions/mercato.yaml"
//     let services: ApplicationServices

//     public init() throws {
//         // Run the metrics initializer
//         initializeMetrics(router: router)
//         // Services
//         services = try ApplicationServices(cloudEnv: cloudEnv)
//     }

//     func postInit() throws {
//         // Middleware
//         router.all(middleware: StaticFileServer())
//         // Endpoints
//         initializeHealthRoutes(app: self)
//         initializeItem_Routes(app: self)
//         initializeStore_Routes(app: self)
//         initializeUser_Routes(app: self)
//         initializeSwaggerRoutes(app: self)
//     }

//     public func run() throws {
//         try postInit()
//         Kitura.addHTTPServer(onPort: cloudEnv.port, with: router)
//         Kitura.run()
//     }
// }