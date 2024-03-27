//
//  SwiftUIView.swift
//  
//
//  Created by Groo on 3/27/24.
//

import SwiftUI

struct ReviewListView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image("happycat")
                    .resizable()
                    .frame(height: 250)
                Text("2024년 1월 2일")
                    .padding(.horizontal, 20)
                Text("이번 미션을 통해 정말 오랜만에 쉬었다. 바삐 살아가느라 이 장소에 뭐가 있는지도 몰랐는데, 세상에 고양이가 5마리나 있었다. 다음엔 고양이들이 먹을 것도 챙겨가야겠다.")
                    .padding(.horizontal, 20)
                Image("happycat")
                    .resizable()
                    .frame(height: 250)
                Text("2024년 1월 2일")
                    .padding(.horizontal, 20)
                Text("이번 미션을 통해 정말 오랜만에 쉬었다. 바삐 살아가느라 이 장소에 뭐가 있는지도 몰랐는데, 세상에 고양이가 5마리나 있었다. 다음엔 고양이들이 먹을 것도 챙겨가야겠다.")
                    .padding(.horizontal, 20)
                Image("happycat")
                    .resizable()
                    .frame(height: 250)
                Text("2024년 1월 2일")
                    .padding(.horizontal, 20)
                Text("이번 미션을 통해 정말 오랜만에 쉬었다. 바삐 살아가느라 이 장소에 뭐가 있는지도 몰랐는데, 세상에 고양이가 5마리나 있었다. 다음엔 고양이들이 먹을 것도 챙겨가야겠다.")
                    .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    ReviewListView()
}
