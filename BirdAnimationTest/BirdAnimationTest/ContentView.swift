//
//  ContentView.swift
//  BirdAnimationTest
//
//  Created by Groo on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    @State var nestOpacityAmount = 0.0
    @State var eggRotationAmount = -1080.0
    @State var eggOffsetAmount = -600.0
    @State var eagleOpacityAmount = 0.0
    @State var eagleScaleAmount = 0.0
    let animation2 = 2.5
    let animation3 = 5.0
    var body: some View {
        ZStack {
            Image("nest")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .shadow(radius: 10, y: 20)
                .opacity(nestOpacityAmount)
                .animation(.easeInOut(duration: 3.0), value: nestOpacityAmount)
            Image("easterEgg")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .offset(y: eggOffsetAmount)
                .rotation3DEffect(.degrees(eggRotationAmount), axis: (x: 0.0, y: 1.0, z: 0.0))
                .animation(.easeInOut(duration: 1.5).delay(animation2), value: eggRotationAmount)
                .animation(.bouncy.delay(animation2), value: eggOffsetAmount)
            Image("eagle")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .offset(y: -50)
                .opacity(eagleOpacityAmount)
                .scaleEffect(eagleScaleAmount)
                .animation(.spring(duration: 0.3, bounce: 0.7).delay(animation3))
        }
        .padding()
        .onAppear {
            nestOpacityAmount = 1.0
            eggRotationAmount = 0.0
            eggOffsetAmount = -50.0
            eagleOpacityAmount = 1.0
            eagleScaleAmount = 1.3
            
        }
    }
}

#Preview {
    ContentView()
}
