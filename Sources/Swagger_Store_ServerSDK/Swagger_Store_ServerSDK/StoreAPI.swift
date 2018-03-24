import Foundation
import SimpleHttpClient

public class StoreAPI: Swagger_Store_ServerSDKUtility {

    /**
        Delete purchase order by ID

        - parameter orderId: ID of the order that needs to be deleted
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func deleteOrder(orderId: Int64, completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        var path = "/store/order/{orderId}"
        path = path.replacingOccurrences(of: "{orderId}", with: "\(orderId)")

        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!

        let scheme: String  = requestUrl.scheme ?? "https" // default to https if nothing specified
        let host: String  = requestUrl.host ?? "" // get 404 instead of uwrapping nil at runtime
        var port: String?
        if let requestPort = requestUrl.port {
            port = String(requestPort)
        }

        let httpResource = HttpResource(schema: scheme, host: host, port: port, path: requestUrl.path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "DELETE", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, headers, error)
                return
            }

            completionHandler(status, headers, error)

        }
    }

    /**
        Returns item inventories by status

        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func getInventory(completionHandler: @escaping (_ returnedData: [String:Int]?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/store/inventory"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!

        let scheme: String  = requestUrl.scheme ?? "https" // default to https if nothing specified
        let host: String  = requestUrl.host ?? "" // get 404 instead of uwrapping nil at runtime
        var port: String?
        if let requestPort = requestUrl.port {
            port = String(requestPort)
        }

        let httpResource = HttpResource(schema: scheme, host: host, port: port, path: requestUrl.path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        if let apiKey = Swagger_Store_ServerSDKUtility.apiKeys["api_key"] {
            requestHeaders["api_key"] = apiKey
        }

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard let status = status else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status,
               status == 200,
               let data = data {
                 do {
                   let returnValue = try JSONDecoder().decode([String:Int].self, from: data)
                   completionHandler(returnValue, status, headers, error)
                 } catch {
                   completionHandler(nil, status, headers, .ServerError)
                 }
            } else {
                completionHandler(nil, status, headers, error)
            }
        }
    }

    /**
        Find purchase order by ID

        - parameter orderId: ID of item that needs to be fetched
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func getOrderById(orderId: Int64, completionHandler: @escaping (_ returnedData: Order?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        var path = "/store/order/{orderId}"
        path = path.replacingOccurrences(of: "{orderId}", with: "\(orderId)")

        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!

        let scheme: String  = requestUrl.scheme ?? "https" // default to https if nothing specified
        let host: String  = requestUrl.host ?? "" // get 404 instead of uwrapping nil at runtime
        var port: String?
        if let requestPort = requestUrl.port {
            port = String(requestPort)
        }

        let httpResource = HttpResource(schema: scheme, host: host, port: port, path: requestUrl.path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"

        HttpClient.sendRequest(to: httpResource, method: "GET", headers: requestHeaders) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard let status = status else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status,
               status == 200,
               let data = data {
                 do {
                   let returnValue = try JSONDecoder().decode(Order.self, from: data)
                   completionHandler(returnValue, status, headers, error)
                 } catch {
                   completionHandler(nil, status, headers, .ServerError)
                 }
            } else {
                completionHandler(nil, status, headers, error)
            }
        }
    }

    /**
        Place an order for a item

        - parameter body: order placed for purchasing the item
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func placeOrder(body: Order, completionHandler: @escaping (_ returnedData: Order?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/store/order"
        let components = URLComponents(string: self.basePath + path)

        let requestUrl: URL = components!.url!

        let scheme: String  = requestUrl.scheme ?? "https" // default to https if nothing specified
        let host: String  = requestUrl.host ?? "" // get 404 instead of uwrapping nil at runtime
        var port: String?
        if let requestPort = requestUrl.port {
            port = String(requestPort)
        }

        let httpResource = HttpResource(schema: scheme, host: host, port: port, path: requestUrl.path)

        var requestHeaders: [String: String] = [:]
        requestHeaders["Accept"] = "application/json"
        requestHeaders["Content-Type"] = "application/json"
        let requestBody = try? JSONEncoder().encode(body)

        HttpClient.sendRequest(to: httpResource, method: "POST", headers: requestHeaders, data: requestBody) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard let status = status else {
                completionHandler(nil, nil, headers, error)
                return
            }

            guard error == nil else {
                completionHandler(nil, status, headers, error)
                return
            }

            if 200 ..< 300 ~= status,
               status == 200,
               let data = data {
                 do {
                   let returnValue = try JSONDecoder().decode(Order.self, from: data)
                   completionHandler(returnValue, status, headers, error)
                 } catch {
                   completionHandler(nil, status, headers, .ServerError)
                 }
            } else {
                completionHandler(nil, status, headers, error)
            }
        }
    }
}
