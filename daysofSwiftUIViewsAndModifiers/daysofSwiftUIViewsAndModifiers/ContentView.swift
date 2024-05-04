//
//  ContentView.swift
//  daysofSwiftUIViewsAndModifiers
//
//  Created by Groo on 5/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print(type(of: self.body))
        }, label: {
            Text("This is a Text")
        })
            .font(.largeTitle)
            .frame(width: 300, height: 300)
            .background(.green)
    }
}

#Preview {
    ContentView()
}
