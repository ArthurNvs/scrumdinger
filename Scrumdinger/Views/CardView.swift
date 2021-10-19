//
//  CardView.swift
//  Scrumdinger
//
//  Created by Arthur Neves on 18/10/21.
//

import SwiftUI

struct CardView: View {
    let dailyScrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(dailyScrum.title)
                .font(.headline)
        Spacer()
        HStack {
            Label("\(dailyScrum.attendees.count)", systemImage: "person.3")
                .accessibilityElement(children: .ignore)
                .accessibilityLabel(Text("Attendees"))
                .accessibilityValue(Text("\(dailyScrum.attendees.count)"))
            Spacer()
            Label("\(dailyScrum.lengthInMinutes)", systemImage: "clock")
                .padding(.trailing, 20)
                .accessibilityElement(children: .ignore)
                .accessibilityLabel(Text("Lengh In Minutes"))
                .accessibilityValue(Text("\(dailyScrum.lengthInMinutes)"))
            }
            .font(.caption)
        }
        .padding()
        //.foregroundColor(dailyScrum.color.accessibleFontColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var dailyScrum = DailyScrum.data[0]
    static var previews: some View {
        CardView(dailyScrum: dailyScrum)
            .background(dailyScrum.color)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
