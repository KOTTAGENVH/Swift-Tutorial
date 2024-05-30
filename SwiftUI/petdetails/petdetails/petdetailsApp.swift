//
//  petdetailsApp.swift
//  petdetails
//
//  Created by Nowen on 2024-05-30.
//

import SwiftUI

@main
struct petdetailsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
