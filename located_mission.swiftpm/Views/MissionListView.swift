import SwiftUI

struct MissionListView: View {
    @State private var missions = [
        Mission(id: 0, isBookmarked: true, titleImageName: "city", userImageName: "hiker", correctImageName: "currynoodle", wrongImageName: "restinside", missionTitle: "대담하게 저녁 식당 탐방하기", location: "일본, 도쿄의 신주쿠구", missionInfo: "지도앱을 보느라 여행 중 풍경을 둘러보지 못해 아쉬웠나요? 수많은 식당들의 수많은 리뷰를 훑느라 지치진 않았나요? 한 번 스마트폰을 끄고 가장 먼저 마주치는 양복을 입은 직장인이 들어가는 식당을 따라 가봐요! 그곳에서 가장 끌리는 음식을 먹고 사진과 함께 후기를 남겨주세요."),
        Mission(id: 1, isBookmarked: false, titleImageName: "lyingcat", userImageName: "sittingcat", correctImageName: "turtle", wrongImageName: "cigar", missionTitle: "동물들과 함께 쉬기", location: "대한민국, 부산광역시의 초읍어린이대공원", missionInfo: "초읍 어린이 대공원에는 다양한 동물이 많네요. 같이 앉아서 햇빛을 받으며 잠시 늘어져 봅시다! ⛅️")
    ]
    
    var body: some View {
        
        VStack {
            NavigationStack {
                List(missions.indices) { index in
                    NavigationLink(destination: MissionDetail(mission: $missions[index])) {
                        HStack {
                            Image(missions[index].titleImageName)
                                .resizable()
                                .frame(width: 100, height: 100) // 크기 조정 필요
                                .cornerRadius(20)
                            VStack(alignment: .leading) {
                                Text(missions[index].missionTitle)
                                    .font(.title3)
                                    .padding(.bottom, 10)
                                Text(missions[index].missionInfo.prefix(10)) // 문장 끝에 점을 추가하고 싶음
                            }
                            Spacer()
                            if missions[index].isBookmarked {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 20, height: 25)
                                    .foregroundColor(.mint)
                            }
                        }
                    }
                }
            }
        }
    }
}
