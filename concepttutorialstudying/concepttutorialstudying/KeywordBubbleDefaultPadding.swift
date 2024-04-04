//
//  KeywordBubbleDefaultPadding.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/4/24.
//

import SwiftUI

struct KeywordBubbleDefaultPadding: View {
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWidth = 30
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .padding(paddingWidth)
            .background(.blue.opacity(0.8), in: Capsule())
    }
}

struct KeywordBubbleDefaultPadding_Previews: PreviewProvider {
    static let keywords = ["Hallo", "Guten Tag", "Bis morgen"]
    static let symbols = ["figure.wave", "sun.max", "sunrise.fill"]
    static var previews: some View {
        VStack {
            ForEach(symbols, id: \.self) { symbol in
                KeywordBubbleDefaultPadding(keyword: "Text", symbol: symbol)
            }
        }
    }
}
