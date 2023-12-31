// UserSettings.swift
import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    // MARK: - Properties
    @Published var favoriteMaps: Set<String> {
        didSet {
            saveFavorites()
        }
    }

    // Add other settings as needed
    // @Published var anotherSetting: DataType = DefaultValue

    // MARK: - Initializer
    init() {
        self.favoriteMaps = Set(UserDefaults.standard.stringArray(forKey: "FavoriteMaps") ?? [])
    }

    // MARK: - Methods for favorite maps
    private func saveFavorites() {
        UserDefaults.standard.set(Array(favoriteMaps), forKey: "FavoriteMaps")
    }

    func addFavorite(mapName: String) {
        favoriteMaps.insert(mapName)
    }

    func removeFavorite(mapName: String) {
        favoriteMaps.remove(mapName)
    }

    // Add methods to handle changes to other settings as needed

    // MARK: - Other Settings Methods
    // func updateAnotherSetting(value: DataType) { ... }
}
