//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Arthur Neves on 31/10/21.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    var body: some View {
        ScrollView {
            VStack(alignment: . leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String  {
        ListFormatter.localizedString(byJoining: attendees)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History(attendees: ["Ana", "Julia", "Philip"], lengthInMinutes: 10, transcript: "Hey Ana, would you like to start today? Of course, let me just pick up some coffee..."))
    }
}
