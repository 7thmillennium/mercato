

public struct Item: Codable {
    let id: Int64?
    let category: Category?
    let name: String
    let photoUrls: [String]
    let tags: [Tag]?

    /// item status in the store
    let status: String?
}
