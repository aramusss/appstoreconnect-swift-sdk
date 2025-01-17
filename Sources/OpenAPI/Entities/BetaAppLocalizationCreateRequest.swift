// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaAppLocalizationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case betaAppLocalizations
		}

		public struct Attributes: Codable {
			public var feedbackEmail: String?
			public var marketingURL: String?
			public var privacyPolicyURL: String?
			public var tvOsPrivacyPolicy: String?
			public var description: String?
			public var locale: String

			public init(feedbackEmail: String? = nil, marketingURL: String? = nil, privacyPolicyURL: String? = nil, tvOsPrivacyPolicy: String? = nil, description: String? = nil, locale: String) {
				self.feedbackEmail = feedbackEmail
				self.marketingURL = marketingURL
				self.privacyPolicyURL = privacyPolicyURL
				self.tvOsPrivacyPolicy = tvOsPrivacyPolicy
				self.description = description
				self.locale = locale
			}

			private enum CodingKeys: String, CodingKey {
				case feedbackEmail
				case marketingURL = "marketingUrl"
				case privacyPolicyURL = "privacyPolicyUrl"
				case tvOsPrivacyPolicy
				case description
				case locale
			}
		}

		public struct Relationships: Codable {
			public var app: App

			public struct App: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case apps
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data) {
					self.data = data
				}
			}

			public init(app: App) {
				self.app = app
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
