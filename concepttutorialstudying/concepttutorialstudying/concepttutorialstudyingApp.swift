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
        #if os(iOS)
        MyScene()
        #elseif os(macOS)
        MyAlternativeScene()
        #endif // MyAlternativeScene에서 endif를 작성했는데도 사용하는 이유를 모르겠다
    }
}
