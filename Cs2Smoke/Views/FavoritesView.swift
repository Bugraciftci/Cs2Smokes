import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var userSettings: UserSettings
    @State private var isEditing = false
    @State private var newFavorite = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Array(userSettings.favoriteMaps), id: \.self) { map in
                    Text(map)
                    // Add more detailed UI here as needed
                }
                .onDelete(perform: deleteFavorite)
            }
            .navigationTitle("Favorites")
        }
    }
    
    func deleteFavorite(at offsets: IndexSet) {
        // Convert IndexSet to an array of indices
        let indicesToRemove = Array(offsets)
        
        // Convert the indices to an array of favorite map names
        let favoriteMapsArray = Array(userSettings.favoriteMaps)
        
        // Ensure indices are within bounds
        if indicesToRemove.indices.contains(where: { $0 < favoriteMapsArray.count }) {
            // Remove items at the specified indices
            for index in indicesToRemove {
                let mapNameToRemove = favoriteMapsArray[index]
                userSettings.removeFavorite(mapName: mapNameToRemove)
            }
        }
    }
    
    func addFavorite() {
        if !newFavorite.isEmpty {
            userSettings.addFavorite(mapName: newFavorite)
            newFavorite = ""
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView().environmentObject(UserSettings())
    }
}
