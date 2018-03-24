import Foundation
import SimpleHttpClient

public class UserAPI: Swagger_Store_ServerSDKUtility {

    /**
        Create user

        - parameter body: Created user object
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func createUser(body: User, completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/user"
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

            guard status != nil else {
                completionHandler(nil, headers, error)
                return
            }

            completionHandler(status, headers, error)

        }
    }

    /**
        Creates list of users with given input array

        - parameter body: List of user object
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func createUsersWithArrayInput(body: [User], completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/user/createWithArray"
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

            guard status != nil else {
                completionHandler(nil, headers, error)
                return
            }

            completionHandler(status, headers, error)

        }
    }

    /**
        Creates list of users with given input array

        - parameter body: List of user object
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func createUsersWithListInput(body: [User], completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/user/createWithList"
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

            guard status != nil else {
                completionHandler(nil, headers, error)
                return
            }

            completionHandler(status, headers, error)

        }
    }

    /**
        Delete user

        - parameter username: The name that needs to be deleted
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func deleteUser(username: String, completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)")

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
        Get user by user name

        - parameter username: The name that needs to be fetched. Use user1 for testing. 
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func getUserByName(username: String, completionHandler: @escaping (_ returnedData: User?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)")

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
                   let returnValue = try JSONDecoder().decode(User.self, from: data)
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
        Logs user into the system

        - parameter username: The user name for login
        - parameter password: The password for login in clear text
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter returnedData: The data that this method is retrieving from the server
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func loginUser(username: String, password: String, completionHandler: @escaping (_ returnedData: String?, _ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/user/login"
        var components = URLComponents(string: self.basePath + path)
        var queryParameters: [URLQueryItem] = []
        queryParameters.append(URLQueryItem(name: "username", value: username.description))
        queryParameters.append(URLQueryItem(name: "password", value: password.description))
        queryParameters = queryParameters.filter { (item) -> Bool in
            item.value != nil
        }

        if !queryParameters.isEmpty {
            components?.queryItems = queryParameters
        }

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
                   let returnValue = try JSONDecoder().decode(String.self, from: data)
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
        Logs out current logged in user session

        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func logoutUser(completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        let path = "/user/logout"
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

            guard status != nil else {
                completionHandler(nil, headers, error)
                return
            }

            completionHandler(status, headers, error)

        }
    }

    /**
        Updated user

        - parameter username: name that need to be updated
        - parameter body: Updated user object
        - parameter completionHandler: The callback that will be executed once the underlying HTTP call completes
        - parameter response: The HTTP response returned by the server
        - parameter error: An error that prevented a successful request
    */
    public static func updateUser(username: String, body: User, completionHandler: @escaping (_ statusCode: Int?, _ responseHeaders: [String: String]?, _ error: HttpError?) -> Void) {


        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)")

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

        HttpClient.sendRequest(to: httpResource, method: "PUT", headers: requestHeaders, data: requestBody) {
            (error: HttpError?, status: Int?, headers: [String: String]?, data: Data?) in

            guard status != nil else {
                completionHandler(nil, headers, error)
                return
            }

            completionHandler(status, headers, error)

        }
    }
}
