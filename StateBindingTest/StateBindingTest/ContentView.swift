//
//  ContentView.swift
//  StateBindingTest
//
//  Created by Groo on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    var body: some View {
        VStack {
            Button("show modal") {
                showModal.toggle()
            }
        }
        .padding()
        .sheet(isPresented: $showModal, content: {
            ModalChild(showModal: $showModal)
        })
    }
}

struct ModalChild: View {
    @Binding var showModal: Bool
    var body: some View {
        VStack {
            Text("child")
            Button("close") {
                showModal = false
            }
        }
    }
}

#Preview {
    ContentView()
}
