//
//  AppInfoLocalizationsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Aram Miquel Mateu on 29/06/2022.
//

import Foundation

public struct AppInfoLocalizationsResponse: Codable {
    /// The resource data.
    public let data: [AppInfoLocalization]

    /// The requested relationship data.￼
    ///  Possible types: AppInfoLocalization, AppCategory
    public let included: [AppInfoLocalizationRelationship]?

    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
}
