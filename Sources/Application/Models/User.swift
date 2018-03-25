

public struct User: Codable {
    let id: Int64
    let username: String
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let phone: String

    /// User Status
    let userStatus: Int32
}
