//
//  EventTile.swift
//  concepttutorialstudying
//
//  Created by Groo on 4/6/24.
//

import SwiftUI

struct Event {
    let title: String
    let date: Date
    let location: String
    let symbol: String
}

struct EventTile: View {
    let event: Event
    let stripeHeight = 15.0
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(
                    event.date,
                    format: Date.FormatStyle()
                        .day(.defaultDigits)
                        .month(.wide)
                )
                Text(event.location)
            }
        }
    }
}

struct EventTile_Previews: PreviewProvider {
    static let event = Event(title: "Study SwiftUi", date: .now, location: "Home", symbol: "lightbulb.min")
    static var previews: some View {
        EventTile(event: event)
    }
}
