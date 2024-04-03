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
            Image(systemName: "aqi.high")
            Image(systemName: "waveform.badge.plus")
        }
        .symbolRenderingMode(.multicolor)
        .font(.largeTitle)
        Label("This is a Label", systemImage: "bookmark.circle.fill")
            .labelStyle(.titleAndIcon)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
