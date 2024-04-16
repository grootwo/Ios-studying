//
//  ContentView.swift
//  ModelTest
//
//  Created by Groo on 4/16/24.
//

import SwiftUI

struct Diary {
    var date: String
    var weather: String
    var title: String
    var content: String
    var hide: Bool = false
}

struct ContentView: View {
    @State var diaries: [Diary] = [
        Diary(date: "4월 15일", weather: "cloud", title: "오늘의 하루", content: "오늘 날이 흐려서 책을 읽었다."),
        Diary(date: "4월 16일", weather: "cloud", title: "오늘의 하루", content: "오늘 날이 흐려서 책을 읽었다.", hide: true),
        Diary(date: "4월 17일", weather: "cloud", title: "오늘의 하루", content: "오늘 날이 흐려서 책을 읽었다."),
    ]
    var body: some View {
        VStack {
            List {            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
