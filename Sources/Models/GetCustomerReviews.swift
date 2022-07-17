
extension APIEndpoint where T == CustomerReviewsResponse {
    /// Get information about an app that is currently live on App Store, or that goes live with the next version.
    ///
    /// - Parameters:
    ///   - id: An opaque resource ID that uniquely identifies the resource.
    ///   - fields: Fields to return for included related types.
    ///   - limit: Number of resources to return.
    ///   - next: The next URL to use as a base. See `PagedDocumentLinks`.
    public static func getCustomerReviews(
        forAppWithId id: String,
        fields: [GetCustomerReviews.Field]? = nil,
        filter: [GetCustomerReviews.Filter]? = nil,
        sort: [GetCustomerReviews.Sort]? = nil,
        limit: Int? = nil,
        next: PagedDocumentLinks? = nil) -> APIEndpoint {
        var parameters = [String: Any]()
        if let fields = fields { parameters.add(fields) }
        if let limit = limit {
            parameters["limit"] = limit
        } else if let nextLimit = next?.nextLimit {
            parameters["limit"] = nextLimit
        }
        if let nextCursor = next?.nextCursor { parameters["cursor"] = nextCursor }
        return APIEndpoint(
            path: "apps/\(id)/customerReviews",
            method: .get,
            parameters: parameters)
    }
}

public enum GetCustomerReviews {
    /// Fields to return for included related types.
    public enum Field: NestableQueryParameter {
        case customerReviewResponses([CustomerReviewResponses])
        case customerReviews([CustomerReviews])

        static var key: String = "fields"
        var pair: Pair {
            switch self {
            case .customerReviewResponses(let value):
                return (CustomerReviewResponses.key, value.map { $0.pair.value }.joinedByCommas())
            case .customerReviews(let value):
                return (CustomerReviews.key, value.map { $0.pair.value }.joinedByCommas())
            }
        }
    }
    
    /// Attributes, relationships, and IDs by which to filter.
    public enum Filter: NestableQueryParameter {
        case rating([Int]), territory([String])

        static var key: String = "filter"
        var pair: Pair {
            switch self {
            case .rating(let values):
                return ("rating", values.map({ String($0) }).joinedByCommas())
            case .territory(let values):
                return ("territory", values.joinedByCommas())
            }
        }
    }
    
    public enum Sort: String, CaseIterable, NestableQueryParameter {
        case createdDateAscending = "createdDate"
        case createdDateDescending = "-createdDate"
        
        case ratingAscending = "rating"
        case ratingDescending = "-rating"
        
        static var key: String = "sort"
        var pair: NestableQueryParameter.Pair { return (nil, rawValue) }
    }
}

extension GetCustomerReviews.Field {
    public enum CustomerReviewResponses: String, CaseIterable, NestableQueryParameter {
        case lastModifiedDate, responseBody, review, state

        static var key: String = "customerReviewResponses"
        var pair: NestableQueryParameter.Pair { return (nil, rawValue) }
    }
    
    public enum CustomerReviews: String, CaseIterable, NestableQueryParameter {
        case body, createdDate, rating, response, reviewerNickname, territory, title

        static var key: String = "customerReviews"
        var pair: NestableQueryParameter.Pair { return (nil, rawValue) }
    }
}
