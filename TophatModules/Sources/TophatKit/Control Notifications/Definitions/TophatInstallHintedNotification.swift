//
//  TophatInstallGenericNotification.swift
//  TophatKit
//
//  Created by Lukas Romsicki on 2023-01-27.
//  Copyright © 2023 Shopify. All rights reserved.
//

import Foundation

public struct TophatInstallGenericNotification: TophatInterProcessNotification {
	public static let name = "TophatInstallApplicationGeneric"

	public struct Payload: Codable {
		public let url: URL
		public let isAPI: Bool
		public let launchArguments: [String]

		public init(url: URL, isAPI: Bool, launchArguments: [String]) {
			self.url = url
			self.isAPI = isAPI
			self.launchArguments = launchArguments
		}
	}

	public let payload: Payload

	public init(payload: Payload) {
		self.payload = payload
	}
}
