import SwiftUI

struct MountainView: View { // View는 화면, Struct는 구조? 특성?
    var mountain: Mountain
    
    var body: some View { // View는 body를 필요로 함
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack(
                    content: {
                        Image(systemName: "mountain.2.fill")
                        Spacer()
                        Button("즐겨찾기") {
                            print("즐겨찾기 클릭")
                        }
                    }
                )
                Image(mountain.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: .infinity)
                Text(mountain.mountainName)
                Divider()
                HStack {
                    Text("\(mountain.height)m")
                    Spacer()
                    Text(mountain.location)
                }
                Text(mountain.information)
            }
            .padding(.all)
        }
    }
}
