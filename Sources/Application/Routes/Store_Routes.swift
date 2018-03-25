import Kitura
import KituraContracts

func initializeStore_Routes(app: App) {
    app.router.get("\(basePath)/store/inventory") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.post("\(basePath)/store/order") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/store/order/:orderId") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.delete("\(basePath)/store/order/:orderId") { request, response, next in
        response.send(json: [:])
        next()
    }
}
