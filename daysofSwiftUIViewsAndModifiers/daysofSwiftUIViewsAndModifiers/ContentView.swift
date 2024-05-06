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

struct BlueTitle: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        VStack {
            Text(text)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.blue)
            content
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
    func blueTitle(text: String) -> some View {
        modifier(BlueTitle(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .watermarked(with: "This is watermark")
            Image(systemName: "square.and.pencil.circle.fill")
                .resizable()
                .scaledToFit()
                .blueTitle(text: "pencil")
            Image(systemName: "paperplane.circle")
                .resizable()
                .scaledToFit()
                .blueTitle(text: "paperplane")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
