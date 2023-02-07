//
//  iHeroApp.swift
//  iHero
//
//  Created by roba on 07/02/2023.
//

import SwiftUI

@main
struct iHeroApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
