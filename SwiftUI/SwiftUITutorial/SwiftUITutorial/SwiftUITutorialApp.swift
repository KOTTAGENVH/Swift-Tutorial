//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by Nowen on 2024-05-29.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
