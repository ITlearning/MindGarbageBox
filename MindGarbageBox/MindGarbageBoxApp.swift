//
//  MindGarbageBoxApp.swift
//  MindGarbageBox
//
//  Created by 인병윤 on 2022/07/07.
//

import SwiftUI

@main
struct MindGarbageBoxApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
//            CoreDataExampleView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
