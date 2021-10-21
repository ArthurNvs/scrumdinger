//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Arthur Neves on 21/10/21.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    var body: some View {
        Text("Daily Scrum details")
    }
}

struct DetailView_Previews: PreviewProvider {
    static let scrum = DailyScrum.data[0]
    static var previews: some View {
        NavigationView {
            DetailView(scrum: scrum)
        }
    }
}
