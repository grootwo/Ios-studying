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
        HStack {
            Image(systemName: "thermometer.sun.fill")
            Image(systemName: "arcade.stick.and.arrow.up.and.arrow.down")
            Image(systemName: "globe.asia.australia.fill")
        }
        .symbolRenderingMode(.multicolor)
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
