import Kitura
import KituraContracts

func initializeItem_Routes(app: App) {
    app.router.post("\(basePath)/item") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.put("\(basePath)/item") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/item/findByStatus") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/item/findByTags") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/item/:itemId") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.post("\(basePath)/item/:itemId") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.delete("\(basePath)/item/:itemId") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.post("\(basePath)/item/:itemId/uploadImage") { request, response, next in
        response.send(json: [:])
        next()
    }
}
