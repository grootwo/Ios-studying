//
//  MyAlternativeFile.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/2/24.
//

import SwiftUI

struct MyAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }
        
        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif
    }
}
