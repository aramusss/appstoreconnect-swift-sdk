// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaAppClipInvocationLocalizationResponse: Codable {
	/// BetaAppClipInvocationLocalization
	public var data: BetaAppClipInvocationLocalization
	public var links: DocumentLinks

	public init(data: BetaAppClipInvocationLocalization, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}