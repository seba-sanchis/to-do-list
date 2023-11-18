//
//  to_do_listApp.swift
//  to do list
//
//  Created by Sebastian Sanchis on 17/11/2023.
//

import SwiftUI
import FirebaseCore

@main
struct to_do_listApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainView()
            }
        }
    }
}
