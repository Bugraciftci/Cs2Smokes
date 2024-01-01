//
//  SecondView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

struct MapView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    let imageName: String
    let mapButtons: [String: [ButtonData]] = [
        "Ancient": [ 
            buttonAC1,
            buttonAC2,
            buttonAC3,
            buttonAC4,
            buttonAC5,
            buttonAC6,
            buttonAC7
        ],
        "Anubis": [
            buttonAU1,
            buttonAU2,
            buttonAU3,
            buttonAU4,
            buttonAU5,
            buttonAU6
        ],
        "Inferno": [
            buttonIN1,
            buttonIN2,
            buttonIN3,
            buttonIN4,
            buttonIN5,
            buttonIN6,
            buttonIN7,
            buttonIN8
        ],
        "Mirage": [
            buttonMI1,
            buttonMI2,
            buttonMI3,
            buttonMI4,
            buttonMI5,
            buttonMI6,
            buttonMI7
        ],
        "Nuke": [
            buttonNU1,
            buttonNU2,
            buttonNU3,
            buttonNU4,
            buttonNU5
        ],
        "Overpass": [
            buttonOV1,
            buttonOV2,
            buttonOV3,
            buttonOV4,
            buttonOV5,
            buttonOV6,
            buttonOV7,
            buttonOV8
        ],
        "Vertigo": [
            buttonVE1,
            buttonVE2,
            buttonVE3,
            buttonVE4,
            buttonVE5,
            buttonVE6
        ]
    ]
    
    @State private var isShowingVideoView = false
    @State private var selectedVideoURL: String?

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.black , .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("\(imageName)Map")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width * 0.9)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .padding()
                    List {
                        ForEach(mapButtons[imageName] ?? [], id: \.self) { buttonData in
                            Button(action: {
                                selectedVideoURL = buttonData.videoURL
                                isShowingVideoView = true
                            }) {
                                HStack {
                                    Text(buttonData.title)
                                    Spacer()
                                    Button(action: {
                                        if userSettings.favoriteMaps.contains(where: { $0.title == buttonData.title }) {
                                            userSettings.removeFavorite(map: buttonData)
                                        } else {
                                            userSettings.addFavorite(map: buttonData)
                                        }
                                    }) {
                                        Image(systemName: userSettings.favoriteMaps.contains(where: { $0.title == buttonData.title }) ? "star.fill" : "star")
                                            .foregroundColor(.yellow)
                                    }

                                }
                            }
                        }
                    }
                }
            }
        }
            .navigationViewStyle(StackNavigationViewStyle())
            .sheet(isPresented: $isShowingVideoView, content: {
                    if let videoURL = selectedVideoURL {
                        VideoView(videoURL: videoURL)
                    }})
            }
        }
    

#Preview {
    MapView(imageName:"Mirage").environmentObject(UserSettings())
}
