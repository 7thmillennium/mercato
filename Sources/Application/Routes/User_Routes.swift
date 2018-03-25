import Kitura
import KituraContracts

func initializeUser_Routes(app: App) {
    app.router.post("\(basePath)/user") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.post("\(basePath)/user/createWithArray") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.post("\(basePath)/user/createWithList") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/user/login") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/user/logout") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("\(basePath)/user/:username") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.put("\(basePath)/user/:username") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.delete("\(basePath)/user/:username") { request, response, next in
        response.send(json: [:])
        next()
    }
}
