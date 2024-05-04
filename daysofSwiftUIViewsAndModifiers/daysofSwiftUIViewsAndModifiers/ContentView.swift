//
//  ContentView.swift
//  daysofSwiftUIViewsAndModifiers
//
//  Created by Groo on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showRedBackground = false
    var body: some View {
        Button(action: {
            showRedBackground.toggle()
        }, label: {
            Text("This is a Text")
        })
            .font(.largeTitle)
            .foregroundColor(showRedBackground ? .red : .green)
    }
}

#Preview {
    ContentView()
}
