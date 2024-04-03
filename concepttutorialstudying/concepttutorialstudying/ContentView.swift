//
//  ContentView.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }
    
    
    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        Text("This is Title")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.blue)
        Text("This is footnote")
            .font(.footnote)
            .bold()
            .fontDesign(.rounded)
        HStack {
            Image(systemName: "thermometer.sun.fill")
            Image(systemName: "aqi.high")
            Image(systemName: "waveform.badge.plus")
        }
        .symbolRenderingMode(.multicolor)
        .font(.largeTitle)
        Label("This is a Label", systemImage: "bookmark.circle.fill")
            .labelStyle(.titleAndIcon)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        VStack {
            HStack {
                Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
                Button("Submit") {
                    
                }
            }
            .progressViewStyle(.circular)
            .controlSize(.large)
            Image("shark")
                .resizable()
                .scaledToFit()
            VStack {
                Rectangle()
                    .foregroundColor(.yellow)
                RoundedRectangle(cornerSize: CGSize(width: 200, height: 30), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
                Circle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    ContentView()
}
