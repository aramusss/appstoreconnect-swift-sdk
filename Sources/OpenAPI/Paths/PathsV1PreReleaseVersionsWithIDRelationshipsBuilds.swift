// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.PreReleaseVersions.WithID.Relationships {
	public var builds: Builds {
		Builds(path: path + "/builds")
	}

	public struct Builds {
		/// Path: `/v1/preReleaseVersions/{id}/relationships/builds`
		public let path: String
	}
}