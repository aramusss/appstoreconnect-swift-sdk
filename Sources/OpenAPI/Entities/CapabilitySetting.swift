// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CapabilitySetting: Codable {
	public var key: Key?
	public var name: String?
	public var description: String?
	public var isEnabledByDefault: Bool?
	public var isVisible: Bool?
	public var allowedInstances: AllowedInstances?
	public var minInstances: Int?
	public var options: [CapabilityOption]?

	public enum Key: String, Codable, CaseIterable {
		case icloudVersion = "ICLOUD_VERSION"
		case dataProtectionPermissionLevel = "DATA_PROTECTION_PERMISSION_LEVEL"
		case appleIDAuthAppConsent = "APPLE_ID_AUTH_APP_CONSENT"
	}

	public enum AllowedInstances: String, Codable, CaseIterable {
		case entry = "ENTRY"
		case single = "SINGLE"
		case multiple = "MULTIPLE"
	}

	public init(key: Key? = nil, name: String? = nil, description: String? = nil, isEnabledByDefault: Bool? = nil, isVisible: Bool? = nil, allowedInstances: AllowedInstances? = nil, minInstances: Int? = nil, options: [CapabilityOption]? = nil) {
		self.key = key
		self.name = name
		self.description = description
		self.isEnabledByDefault = isEnabledByDefault
		self.isVisible = isVisible
		self.allowedInstances = allowedInstances
		self.minInstances = minInstances
		self.options = options
	}

	private enum CodingKeys: String, CodingKey {
		case key
		case name
		case description
		case isEnabledByDefault = "enabledByDefault"
		case isVisible = "visible"
		case allowedInstances
		case minInstances
		case options
	}
}
