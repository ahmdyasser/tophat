//
//  SettingsWindow.swift
//  Tophat
//
//  Created by Lukas Romsicki on 2022-11-30.
//  Copyright © 2022 Shopify. All rights reserved.
//

import SwiftUI

enum SettingsTab: Int {
	case general = 0
	case apps = 1
	case devices = 2
	case locations = 3
}

struct SettingsView: View {
	@AppStorage("SettingsSelectedTabIndex") var selectedTab: SettingsTab = .general

	var body: some View {
		TabView(selection: $selectedTab) {
			GeneralTab()
				.tabItem {
					Label("General", systemImage: "gearshape")
				}
				.tag(SettingsTab.general)

			AppsTab()
				.tabItem {
					Label("Apps", systemImage: "apps.iphone")
				}
				.tag(SettingsTab.apps)

			DevicesTab()
				.tabItem {
					Label("Devices", systemImage: "ipad.and.iphone")
				}
				.tag(SettingsTab.devices)

			LocationsTab()
				.tabItem {
					Label("Locations", systemImage: "externaldrive")
				}
				.tag(SettingsTab.locations)
		}

		.frame(width: 600)
		.frame(maxHeight: 500)
		.fixedSize()
	}
}
