//
//  ContentView.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyVStack {
            Image(systemName: "globe")
                .imageScale(.medium)
                .foregroundStyle(.primary)
            Text("Hallo, freu mich!")
        }
        .padding([.top, .bottom], 30)
    }
}

#Preview {
    ContentView()
}
