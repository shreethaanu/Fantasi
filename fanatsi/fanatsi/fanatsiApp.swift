//
//  fanatsiApp.swift
//  fanatsi
//
//  Created by ShreeThaanu on 05/04/23.
//

import SwiftUI

@main
struct fanatsiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           onBoardingVC()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
