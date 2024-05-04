//
//  ContentView.swift
//  daysofSwiftUIViewsAndModifiers
//
//  Created by Groo on 5/4/24.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .topLeading) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black.opacity(0.5))
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {    
    var body: some View {
        Image(systemName: "pencil")
            .resizable()
            .scaledToFit()
            .watermarked(with: "This is watermark")
            .padding()
    }
}

#Preview {
    ContentView()
}
