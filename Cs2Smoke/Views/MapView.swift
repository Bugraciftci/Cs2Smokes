//
//  SecondView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

struct MapView: View {
    
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
    
    @State private var isShowingVideoView = false // Yeni durum değişkeni, sheet'i göstermek için
    @State private var selectedVideoURL: String? // Seçilen video URL'sini tutacak değişken

    var body: some View {
        NavigationView {
            ZStack {
                // Linear gradient arka planı değiştirelebilir Full Siyah Şimdilik
                LinearGradient(gradient: Gradient(colors: [.black, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("\(imageName)Map")
                        .resizable()
                        .scaledToFit()
                    List {
                        ForEach(mapButtons[imageName] ?? [], id: \.self) { buttonData in
                            Button(action: {
                                selectedVideoURL = buttonData.videoURL
                                isShowingVideoView = true
                            })
                            { Text(buttonData.title)
                            }
                        }
                    }
                }
            }
        }
                .sheet(isPresented: $isShowingVideoView, content: {
                    if let videoURL = selectedVideoURL {
                        VideoView(videoURL: videoURL)
                    }})
            }
        }
    

#Preview {
    MapView(imageName:"Inferno")
}
