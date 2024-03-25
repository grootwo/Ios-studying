//
//  SwiftUIView.swift
//  
//
//  Created by Groo on 3/25/24.
//

import SwiftUI

struct MakeReviewView: View {
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
            Text("후기 남기기")
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
                            Text("후기 사진 업로드하기")
                                .foregroundStyle(Color.gray)
                        }
                        .sheet(isPresented: $showImagePicker, onDismiss: {
                            loadImage()
                        }) {
                            ImagePicker(image: $selectedUIImage)
                    }
            TextField(
                "후기를 입력해주세요. 느꼈던 감정이나 생각, 나누고 싶은 이야기 등을 자유롭게 작성하면 됩니다.",
                text: $inputContent,
                axis: .vertical
            )
                Button(action: {
                    print("후기 업로드하기 클릭")
                }, label: {
                    Text("후기 업로드하기")
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
    MakeReviewView()
}
