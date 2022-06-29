//
//  AppInfoLocalizationRelationship.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Aram Miquel Mateu on 29/06/2022.
//

import Foundation

public enum AppInfoLocalizationRelationship: Codable {
    case appInfo(AppInfo)

    enum TypeKeys: String, CodingKey {
        case type
    }

    enum CodingKeys: String, Decodable, CodingKey {
        case appInfo
    }

    public init(from decoder: Decoder) throws {
        let type = try decoder.container(keyedBy: TypeKeys.self).decode(CodingKeys.self, forKey: .type)
        switch type {
        case .appInfo:
            self = try .appInfo(AppInfo(from: decoder))
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .appInfo(let value):
            try value.encode(to: encoder)
        }
    }
}
