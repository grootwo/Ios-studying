//
//  ContentView.swift
//  ModelTest
//
//  Created by Groo on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                ForEach(0..<5) { _ in
                    if true {
                        VStack(alignment: .leading) {
                            Text("4월 15일")
                            Image(systemName: "cloud")
                            Text("오늘의 하루")
                            Text("오늘 날이 흐려서 책을 읽었다.")
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
