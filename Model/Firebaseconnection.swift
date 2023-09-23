//
//  Firebaseconnection.swift
//  Personal Finance Manger
//
//  Created by Amalsha Pramod on 2023-09-16.
//

import Foundation
import SwiftUI
import Firebase

//@main

struct Firebaseconnection: App {
    init() {
        FirebaseApp.configure()
        
    }
    var body: some Scene{
        WindowGroup{
            ContentView()
        }
    }
    
}
