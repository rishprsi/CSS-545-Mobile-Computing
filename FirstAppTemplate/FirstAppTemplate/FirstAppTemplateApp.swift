//
//  FirstAppTemplateApp.swift
//  FirstAppTemplate
//
//  Created by Rishabh Pratap Singh on 03/10/24.
//

import SwiftUI

@main
struct FirstAppTemplateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
