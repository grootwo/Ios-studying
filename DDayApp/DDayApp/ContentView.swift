import SwiftUI

struct Memo {
    var id: UUID = UUID()
    var title: String
    var endDate: Date
    
    func getDDayString() -> String {
        let offsetComps = Calendar.current.dateComponents([.day], from: self.endDate, to: Date())
        guard let offsetDay = offsetComps.day else { return "error" } // offsetComps.day의 타입 Int?는 optional이다
        if offsetDay > 0 {
            return "D+\(offsetDay)"
        } else if offsetDay == 0 {
            return "D-Day"
        } else {
            return "D\(offsetDay)"
        }
    }
}

struct ContentView: View {
    @State var showSheet = false
    @State var titleInput = ""
    @State var dateInput = Date()
    @State var memoList: [Memo] = [
        Memo(title: "여름휴가", endDate: Date.now)
    ]
    var body: some View {
        NavigationStack {
            List(memoList, id: \.id) { memo in
                HStack {
                    Text(memo.title)
                    Spacer()
                    Text(memo.getDDayString())                }
            }
            .toolbar {
                Button(action: {
                    showSheet = true
                }, label: {
                    Image(systemName: "plus.circle.fill")
                })
            }
            .sheet(isPresented: $showSheet, content: {
                TextField("새로운 일정 제목을 입력하세요", text: $titleInput)
                DatePicker("종료일을 선택하세요", selection: $dateInput,
                           displayedComponents: [.date])
                .datePickerStyle(.graphical)
                Button(action: {
                    memoList.append(Memo(title: titleInput, endDate: dateInput))
                    showSheet = false
                }, label: {
                    Image(systemName: "checkmark.circle.fill")
                })
            })
        }
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
