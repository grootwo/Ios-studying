//
//  SwiftUIView.swift
//  
//
//  Created by Groo on 3/25/24.
//

import SwiftUI

struct MakeMissionView: View {
    @State private var tempText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("새로운 미션 생성하기")
            TextField(
                "미션 제목을 입력해주세요",
                text: $tempText
            )
        }
        .padding()
    }
}

#Preview {
    SwiftUIView()
}
