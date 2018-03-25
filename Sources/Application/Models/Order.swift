

public struct Order: Codable {
    let id: Int64
    let itemId: Int64
    let quantity: Int32
    let shipDate: String

    /// Order Status
    let status: String
    let complete: Bool
}
