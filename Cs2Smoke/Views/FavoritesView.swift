//
//  FavoritesView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 30.12.2023.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var UserSettings: UserSettings

    var body: some View {
        NavigationView {
            List {
                // Convert the Set to an Array for ForEach to work properly.
                ForEach(Array(UserSettings.favoriteMaps), id: \.self) { map in
                    Text(map)
                    // Add more detailed UI here as needed
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

// Preview
struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        // Provide a mock UserSettings object for previews
        FavoritesView().environmentObject(UserSettings())
    }
}

