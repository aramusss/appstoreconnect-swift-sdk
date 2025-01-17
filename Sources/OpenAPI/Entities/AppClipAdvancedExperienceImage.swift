// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipAdvancedExperienceImage: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appClipAdvancedExperienceImages
	}

	public struct Attributes: Codable {
		public var fileSize: Int?
		public var fileName: String?
		public var sourceFileChecksum: String?
		public var imageAsset: ImageAsset?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?

		public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, imageAsset: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.sourceFileChecksum = sourceFileChecksum
			self.imageAsset = imageAsset
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}
}
