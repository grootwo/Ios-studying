//
//  ContentView.swift
//  TimerTest
//
//  Created by Groo on 10/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isTicking = false
    @State private var timeCounting = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("\(timeCounting)")
                .font(.largeTitle)
                .onReceive(timer) { time in
                    if isTicking {
                        timeCounting += 1
                    }
                }
            Button(isTicking ? "Pause" : "Start") {
                isTicking.toggle()
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            Button("Stop") {
                isTicking = false
                timeCounting = 0
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
