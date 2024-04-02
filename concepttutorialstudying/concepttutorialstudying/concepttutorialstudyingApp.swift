//
//  concepttutorialstudyingApp.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/1/24.
//

import SwiftUI

@main
struct concepttutorialstudyingApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
