//
//  ContentView.swift
//  daysofSwiftUIViewsAndModifiers
//
//  Created by Groo on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    var text1: some View {
        Text("this is text1")
    }
    let text2 = Text("this is text2")
    var text3: some View {
        Group {
            Text("this is text3")
            Text("this is text3")
        }
    }
    @ViewBuilder var text4: some View {
        Text("this is text4")
        Text("this is text4")
    }
    var body: some View {
        text1
        text2
        text3
        text4
    }
}

#Preview {
    ContentView()
}
