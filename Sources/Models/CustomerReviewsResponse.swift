//
//  CustomerReviewsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Aram Miquel Mateu on 16/07/2022.
//

import Foundation

/// A response containing a list of resources.
public struct CustomerReviewsResponse: Codable {

    /// The resource data.
    public let data: [CustomerReview]

    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
}
