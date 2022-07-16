//
//  CustomerReview.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Aram Miquel Mateu on 16/07/2022.
//

import Foundation

public struct CustomerReview: Codable {

    /// Attributes that describe a certificate.
    public struct Attributes: Codable {
        
        public let rating: Int?
        public let title: String?
        public let body: String?
        public let reviewerNickname: String?
        public let createdDate: Date?
        public let territory: String?
    }

    /// The resource's attributes.
    public let attributes: CustomerReview.Attributes

    /// The opaque resource ID that uniquely identifies the resource.
    public let `id`: String

    /// The resource type.
    public private(set) var type: String = "customerReviews"

    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
}
