//
//  AppInfoLocalization.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Aram Miquel Mateu on 29/06/2022.
//

import Foundation

/// The data structure that represents the resource.
public struct AppInfoLocalization: Codable {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {
        
        /// Locale of the app info localization
        public let locale: String?
        
        /// Localized app name
        public let name: String?
        
        /// Localized app subtitle
        public let subtitle: String?
        
    }

    public struct Relationships: Codable {
        public let appInfo: AppInfoLocalization.Relationships.AppInfo?
    }

    /// The resource's attributes.
    public let attributes: AppInfoLocalization.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String

    /// Navigational links to related data and included resource types and IDs.
    public let relationships: AppInfoLocalization.Relationships?

    /// The resource type.Value: apps
    public private(set) var type: String = "appInfos"

    /// Navigational links that include the self-link.
    public let links: ResourceLinks<AppInfoLocalization>
}

// MARK: AppInfo.Relationships
extension AppInfoLocalization.Relationships {

    public struct AppInfo: Codable {

        /// AppInfo.Relationships.App.Data
        public let data: AppInfoLocalization.Relationships.AppInfo.Data

         /// AppInfo.Relationships.App.Links
        public let links: AppInfoLocalization.Relationships.AppInfo.Links?
    }
    
}

// MARK: AppInfo.Relationships.App
extension AppInfoLocalization.Relationships.AppInfo {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String

        /// The resource type.Value: appStoreVersions
        public private(set) var type: String = "appInfo"
    }

    public struct Links: Codable {

        /// uri-reference
        public let related: URL?

        /// uri-reference
        public let `self`: URL?
    }
}
