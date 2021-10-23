//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Arthur Neves on 18/10/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
