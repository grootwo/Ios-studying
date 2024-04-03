//
//  ContentView.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("This is Title")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.blue)
        Text("This is footnote")
            .font(.footnote)
            .bold()
            .fontDesign(.rounded)
    }
}

#Preview {
    ContentView()
}
