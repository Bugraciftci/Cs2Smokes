//
//  Cs2SmokeApp.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

@main
struct Cs2SmokeApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Home")
                    }
                    .tag(0)
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(1)
            
                // Diğer sekmeleri buraya ekleyebilirsiniz
            }
        }
    }
}

