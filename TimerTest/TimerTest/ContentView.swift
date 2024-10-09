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
    let now = Date.now
    var body: some View {
        VStack(spacing: 50) {
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
            BackgroundTimer()
            Text(now, style: .relative)
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
