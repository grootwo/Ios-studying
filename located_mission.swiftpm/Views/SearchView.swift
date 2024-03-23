//
//  SwiftUIView.swift
//  
//
//  Created by Groo on 3/22/24.
//

import SwiftUI
import MapKit

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 36.0141447, longitude: 129.3257511))
            VStack {
                HStack {
                    Button(action: {
                        print("검색 필터 클릭")
                    }, label: {
                        Image(systemName: "camera.filters")
                            .resizable()
                            .foregroundColor(.mint)
                            .frame(width: 40, height: 40)
                    })
                    .padding()
                    .frame(width: 70)
                    .background(Color.white)
                    .cornerRadius(35)
                    Spacer()
                    Button(action: {
                        print("검색 클릭")
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .foregroundColor(.mint)
                            .frame(width: 40, height: 40)
                    })
                    .frame(width: 240)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(35)
                }
                .padding()
                Spacer()
                NavigationView {
                    NavigationLink(destination: MissionListView()) { // 해당 페이지로 넘아가되 화면 전체를 차지하지 않음
                            Text("미션 둘러보기")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 100)
                .foregroundColor(.mint)
                .background(Color.white)
                .cornerRadius(30)
                .offset(y: 40)
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
