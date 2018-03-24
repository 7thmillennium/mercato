import Foundation

public class ApiResponse: Codable {
    public var code: Int?
    public var type: String?
    public var message: String?
}
