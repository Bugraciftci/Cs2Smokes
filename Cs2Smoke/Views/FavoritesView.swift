import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var userSettings: UserSettings
    @State private var showingVideo = false
    @State private var selectedVideoURL: String?
    
    var body: some View {
        NavigationView {
            List {
                // .self yerine .id kullanarak ButtonData'nın Identifiable özelliğini kullanın
                ForEach(Array(userSettings.favoriteMaps), id: \.id) { buttonData in
                    Button(buttonData.title) {
                        selectedVideoURL = buttonData.videoURL
                        showingVideo.toggle()
                    }
                }
                .onDelete(perform: deleteFavorite)
            }
            .navigationTitle("Favorites")
            // showingVideo için Binding kullanın ve selectedVideoURL'nizi content closure içinde kontrol edin.
            .sheet(isPresented: $showingVideo) {
                if let videoURL = selectedVideoURL {
                    VideoView(videoURL: videoURL)
                }
            }
        }
    }
    func deleteFavorite(at offsets: IndexSet) {
        let indicesToRemove = Array(offsets)
        let favoriteMapsArray = Array(userSettings.favoriteMaps)
        if indicesToRemove.indices.contains(where: { $0 < favoriteMapsArray.count }) {
            for index in indicesToRemove {
                let mapNameToRemove = favoriteMapsArray[index]
                userSettings.removeFavorite(map: mapNameToRemove)
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView().environmentObject(UserSettings())
    }
}
