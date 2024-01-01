import Foundation

class UserSettings: ObservableObject {
    @Published var likedMaps: Set<ButtonData> = []
    @Published var favoriteMaps: Set<ButtonData> {
        didSet {
            saveFavorites()
        }
    }

    init() {
        // UserDefaults'tan veri alırken JSON olarak decode etmek
        if let data = UserDefaults.standard.data(forKey: "FavoriteMaps"),
           let decoded = try? JSONDecoder().decode(Set<ButtonData>.self, from: data) {
            self.favoriteMaps = decoded
        } else {
            self.favoriteMaps = []
        }
    }

    private func saveFavorites() {
        // UserDefaults'a veri kaydederken JSON olarak encode etmek
        if let encoded = try? JSONEncoder().encode(favoriteMaps) {
            UserDefaults.standard.set(encoded, forKey: "FavoriteMaps")
        }
    }

    func addFavorite(map: ButtonData) {
        favoriteMaps.insert(map)
    }

    func removeFavorite(map: ButtonData) {
        favoriteMaps.remove(map)
    }
}
