//
//  SwiftUIView.swift
//  
//
//  Created by Groo on 3/22/24.
//

import SwiftUI
import MapKit

struct SearchView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                MapView()
                VStack {
                    HStack {
                        Button(action: {
                            print("검색 필터 클릭")
                        }, label: {
                            Image(systemName: "camera.filters")
                                .resizable()
                                .foregroundColor(.mint)
                                .frame(width: 30, height: 30)
                        })
                        .padding()
                        .frame(width: 70)
                        .background(Color.white)
                        .cornerRadius(35)
                        Spacer()
                        Button(action: {
                            print("검색 클릭")
                        }, label: {
                            Spacer()
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .foregroundColor(.mint)
                                .frame(width: 30, height: 30)
                        })
                        .frame(width: 240)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(35)
                    }
                    .padding()
                    Spacer()
                    VStack {
                        HStack {
                            Spacer()
                            NavigationLink(destination: MakeMissionView()) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                            .padding()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.mint)
                            .background(Color.white)
                            .cornerRadius(30)
                            .offset(y: 50)
                        }
                        NavigationLink(destination: MissionListView()) {
                            Text("미션 둘러보기")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 70)
                        .foregroundColor(.mint)
                        .background(Color.white)
                        .cornerRadius(30)
                        .offset(y: 60)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
