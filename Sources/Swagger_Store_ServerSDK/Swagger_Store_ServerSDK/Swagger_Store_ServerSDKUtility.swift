import Foundation
import Dispatch

/**
    Contains a set of helper methods and properties that are used by the API classes.
*/
public class Swagger_Store_ServerSDKUtility {

    internal static var apiKeys: [String: String] = [:]

    // This is either defined in the Open API spec, or defined by the user. If neither,
    // then this is the location the Open API spec is served at
    internal static var basePath = "http://store.swagger.io/v2"

    // For switching between base paths
    internal static let originalBasePath = "http://store.swagger.io/v2"

    internal static func delimeter(forCollectionFormat: String) -> String {

        switch forCollectionFormat {
        case "csv":
            return ","
        case "ssv":
            return " "
        case "tsv":
            return "\t"
        case "pipes":
            return "|"
        default:
            return ","
        }
    }

    /**
        Set the username and password to authenticate with Basic auth.
    */
    public static func setApiBasePath(apiBasePath: String) {
        basePath = apiBasePath
    }

    /**
        Revert back to the original base path of the Swagger_Store_ServerSDK's API
    */
    public static func useOriginalApiBasePath(){
      basePath = originalBasePath
    }


    /**
        Set the API key value for api_key.
    */
    public static func setAPIKeyForapi_key(_ apiKey: String) {
        apiKeys["api_key"] = apiKey
    }

}

// MARK: Convert various types to String
public extension Swagger_Store_ServerSDKUtility {

    internal static func convertToString<T>(_ input: T) -> String? {

        var string: String? = nil

        switch input {

        case is String:
            string = (input as! String)
        case is Int,
             is Int32,
             is Int64,
             is Double,
             is Float,
             is Bool:
            string = String(describing: input)
        case is Data:
            string = String(data: (input as! Data), encoding: .utf8)
        default:
            break
        }

        return string
    }

    internal static func convertToString(_ input: [String], collectionFormat: String) -> String? {

        return input.reduce("") { (result, string) -> String in
            result.isEmpty ? string : "\(result)\(delimeter(forCollectionFormat: collectionFormat))\(string)"
        }
    }
}

// MARK: Get ISO 8601 string representations of Date
internal extension Date {

    internal var iso8601DateString: String {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: self)
    }

    internal var iso8601DateTimeString: String {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        return dateFormatter.string(from: self)
    }
}
