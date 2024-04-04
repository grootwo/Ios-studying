//
//  CaptionedPhoto.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/4/24.
//

import SwiftUI

struct CaptionedPhoto: View {
    let assetName: String
    let captionText: String
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom) {
                Caption(text: captionText)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .padding()
    }
}

struct Caption: View {
    let text: String
    var body: some View {
        Text(text)
            .padding()
            .background(Color("TextContrast").opacity(0.75), in: RoundedRectangle(cornerRadius: 15, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .padding()
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static let imageName1 = "shark"
    static let imageCaption1 = "This is a cute shark."
    static let imageName2 = "happycat"
    static let imageCaption2 = "This is a happy cat."
    static var previews: some View {
        VStack {
            CaptionedPhoto(assetName: imageName1, captionText: imageCaption1)
            CaptionedPhoto(assetName: imageName2, captionText: imageCaption2)
        }
    }
}
