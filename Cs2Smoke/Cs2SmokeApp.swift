//
//  Cs2SmokeApp.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

@main
struct Cs2SmokeApp: App {
    // Create an instance of UserSettings
    var userSettings = UserSettings()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                FavoritesView() // New Favorites Tab
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favorites")
                    }
                    .tag(1)
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(2)
            }
            .environmentObject(userSettings)
        }
    }
}

