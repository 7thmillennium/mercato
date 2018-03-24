import Foundation

public class User: Codable {
    public var id: Int64?
    public var username: String?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var password: String?
    public var phone: String?
    /// User Status
    public var userStatus: Int?
}
