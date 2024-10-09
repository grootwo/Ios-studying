//
//  ContentView.swift
//  TimerTest
//
//  Created by Groo on 10/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isTicking = false
    @State private var time = 0
    var body: some View {
        VStack {
            Text("\(time)")
                .font(.largeTitle)
            Button(isTicking ? "Pause" : "Start") {
                isTicking.toggle()
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            Button("Stop") {
                
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
