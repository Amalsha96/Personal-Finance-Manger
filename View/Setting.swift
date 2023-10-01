//
//  Setting.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-23.
//

import SwiftUI

struct Setting: View {
    @State private var darkModeToggle = false
        @State private var selectedLanguage = 0
        @State private var notificationToggle = true
        @State private var selectedTheme = 0
        
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Account Settings")) {
                        Text("Edit Profile")
                        Text("Change Password")
                    }
                    
                    Section(header: Text("App Settings")) {
                        Toggle("Dark Mode", isOn: $darkModeToggle)
                        
                        Picker("Language", selection: $selectedLanguage) {
                            Text("English").tag(0)
                            Text("Spanish").tag(1)
                        }
                        
                        Toggle("Notifications", isOn: $notificationToggle)
                        
                        Picker("Theme", selection: $selectedTheme) {
                            Text("Light").tag(0)
                            Text("Dark").tag(1)
                            Text("System").tag(2)
                        }
                    }
                    
                    Section(header: Text("Advanced Settings")) {
                        NavigationLink(destination: Text("Placeholder for Advanced Settings")) {
                            Text("Advanced Options")
                        }
                    }
                    
                    Section(header: Text("Feedback")) {
                        Button(action: {
                            // Handle feedback button tap
                        }) {
                            Text("Provide Feedback")
                        }
                    }
                }
                .navigationBarTitle("Settings")
            }
        }
    }

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}

