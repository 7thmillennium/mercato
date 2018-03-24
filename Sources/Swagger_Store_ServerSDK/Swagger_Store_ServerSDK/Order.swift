import Foundation

public class Order: Codable {
    /// Order Status
    public var status: status?
    public var id: Int64?
    public var itemId: Int64?
    public var quantity: Int?
    public var shipDate: Date?
    public var complete: Bool?

    public enum status: String, Codable {
        case placed = "placed"
        case approved = "approved"
        case delivered = "delivered"
    }
}
