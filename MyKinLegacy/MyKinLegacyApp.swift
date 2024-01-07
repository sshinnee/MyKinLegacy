//
//  MyKinLegacyApp.swift
//  MyKinLegacy
//
//  Created by shinnee on 7/1/24.
//

import SwiftUI

@main
struct MyKinLegacyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
