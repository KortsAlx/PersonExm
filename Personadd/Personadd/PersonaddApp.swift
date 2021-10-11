//
//  PersonaddApp.swift
//  Personadd
//
//  Created by Brandon Alexis Martinez Cortes on 11/10/21.
//

import SwiftUI

@main
struct PersonaddApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
