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
            button1,button2,button3
        ],
        "Anubis": [
            button2
        ],
        "Inferno": [
            button1
        ],
        "Mirage": [
            buttonM1,
            buttonM2,
            buttonM3,
            buttonM4,
            buttonM5,
            buttonM6,
            buttonM7
        ],
        "Nuke": [
            button1
        ],
        "Overpass": [
            button2
        ],
        "Vertigo": [
            button1,
            buttonM1,
            buttonM2,
            buttonM3,
            buttonM4,
            buttonM5
        ]
    ]
    
    @State private var isShowingVideoView = false // Yeni durum değişkeni, sheet'i göstermek için
    @State private var selectedVideoURL: String? // Seçilen video URL'sini tutacak değişken
    @State private var isRightButtonVisible = false

        var body: some View {
            NavigationView {
                LazyVStack {
                    Image("\(imageName)Map")
                        .resizable()
                        .scaledToFit()
                    ScrollView(.vertical){
                        LazyVStack {
                            ForEach(mapButtons[imageName] ?? [], id: \.self) { buttonData in
                                VStack{
                                    Button(action: {
                                        selectedVideoURL = buttonData.videoURL // Seçilen butona tıklandığında ilgili video URL'sini al
                                        isShowingVideoView = true // Sheet'i göster
                                    }) {
                                        Text(buttonData.title)
                                            .font(.system(size: 20))
                                            .fontWeight(.medium)
                                            .foregroundColor(.white)
                                            .frame(maxWidth: 200, alignment: .center)
                                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                                            .background(Color.blue)
                                            .cornerRadius(20)
                                            .shadow(radius: 8)
                                        Spacer()
                                    }
                                    .padding(5)
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.black, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .navigationBarTitle(Text(""), displayMode: .inline)
                .sheet(isPresented: $isShowingVideoView, content: {
                    if let videoURL = selectedVideoURL {
                        VideoView(videoURL: videoURL)
                    }
                })
            }
        }
    }

#Preview {
    MapView(imageName:"Vertigo")
}
