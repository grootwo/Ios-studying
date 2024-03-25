import SwiftUI

struct MissionDetail: View {
    @Binding var mission: Mission
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Image(mission.titleImageName)
                            .resizable()
                            .cornerRadius(10)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 300)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text(mission.missionTitle)
                                    .font(.largeTitle)
                                Text(mission.location)
                            }
                            Spacer()
                            Image(mission.userImageName)
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 70, height: 70)
                            
                        }
                        Divider()
                            .padding([.bottom], 20)
                        Text("미션 내용")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text(mission.missionInfo)
                        HStack {
                            Image(mission.correctImageName)
                                .resizable()
                                .frame(width: .infinity, height: 250)
                                .cornerRadius(30)
                            Spacer()
                            Image(mission.wrongImageName)
                                .resizable()
                                .frame(width: .infinity, height: 250)
                                .cornerRadius(30)
                        }
                    }
                }
                .padding(.horizontal, 30)
                
                VStack {
                    HStack {
                        Button(action: {
                            print("뒤로 가기 클릭")
                        }, label: {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.mint)
                        })
                        Spacer()
                        Button(action: {
                            mission.isBookmarked.toggle()
                            print("북마크 클릭")
                        }, label: {
                            if mission.isBookmarked {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 20, height: 25)
                                    .foregroundColor(.mint)
                            } else {
                                Image(systemName: "bookmark")
                                    .resizable()
                                    .frame(width: 20, height: 25)
                                    .foregroundColor(.mint)
                            }
                        })
                    }
                    Spacer()
                    Button(action: {
                            print("미션 도전하기 클릭")
                        }, label: {
                            Text("미션 도전하기")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        })
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 70)
                        .foregroundColor(.white)
                        .background(Color.mint)
                        .cornerRadius(30)
                        .offset(y: 35)
                }
                .padding()
                
            }
        }
    }
}
