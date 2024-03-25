//
//  SwiftUIView.swift
//  
//
//  Created by Groo on 3/25/24.
//

import SwiftUI

struct MakeMissionView: View {
    @State private var inputTitle: String = ""
    @State private var inputContent: String = ""
    
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
    
    var body: some View {
        ScrollView {
        VStack(alignment: .leading, spacing: 30) {
            Text("새로운 미션 생성하기")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if let image = image {
                            image
                                .resizable()
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .frame(height: 200)
                        } else {
                            Image(systemName: "plus.viewfinder")
                                .resizable()
                                .foregroundColor(.mint)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .frame(height: 120)
                        }
            Button {
                            showImagePicker.toggle()
                        } label: {
                            Text("대표 사진 업로드하기")
                                .foregroundStyle(Color.gray)
                        }
                        .sheet(isPresented: $showImagePicker, onDismiss: {
                            loadImage()
                        }) {
                            ImagePicker(image: $selectedUIImage)
                    }
            
            
            Text("미션 제목")
                .font(.title3)
            TextField(
                "미션 제목을 입력해주세요.",
                text: $inputTitle,
                axis: .vertical
            )
            Text("미션 내용")
                .font(.title3)
            TextField(
                "미션 내용을 입력해주세요. 미션 내용은 참가자들이 이해할 수 있도록 자세히, 쉽게 설명해주세요.",
                text: $inputContent,
                axis: .vertical
            )
                Button(action: {
                    print("미션 생성하기 클릭")
                }, label: {
                    Text("미션 생성하기")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                })
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(Color.mint)
                .cornerRadius(30)
        }
        .padding()
    }
    }
}

#Preview {
    MakeMissionView()
}
