//
//  tracknapApp.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 22/05/23.
//

import SwiftUI

@main
struct tracknapApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
