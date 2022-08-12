//
//  ChatApp_DemoApp.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//


import Firebase
import SwiftUI

@main
struct ChatApp_DemoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
