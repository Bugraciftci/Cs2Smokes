import Foundation

class UserSettings: ObservableObject {
    @Published var favoriteMaps: Set<String> {
        didSet {
            saveFavorites()
        }
    }

    init() {
        self.favoriteMaps = Set(UserDefaults.standard.stringArray(forKey: "FavoriteMaps") ?? [])
    }

    private func saveFavorites() {
        UserDefaults.standard.set(Array(favoriteMaps), forKey: "FavoriteMaps")
    }

    func addFavorite(mapName: String) {
        favoriteMaps.insert(mapName)
    }

    func removeFavorite(mapName: String) {
        favoriteMaps.remove(mapName)
    }
}
