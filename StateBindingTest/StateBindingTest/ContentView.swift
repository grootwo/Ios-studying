//
//  ContentView.swift
//  StateBindingTest
//
//  Created by Groo on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var names = ["world", "Hallo", "Groo"]
    @State var index = 0
    var body: some View {
        VStack {
            Text("Hello, \(names[index])!")
            Button(action: {
                if index == names.count - 1 {
                    index = 0
                } else {
                    index += 1
                }
            }, label: {
                Text("Change name")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
