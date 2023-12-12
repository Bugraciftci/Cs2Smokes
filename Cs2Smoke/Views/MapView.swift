//
//  SecondView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

struct MapView: View {
    let imageName: String
    
    // Örnek butonlar için sözlük oluşturulması
    let mapButtons: [String: [ButtonData]] = [
        "Ancient": [
            ButtonData(title: "Button A", tag: 1),
            ButtonData(title: "Button B", tag: 2)
            // Buraya bu haritaya özel butonları ekleyebilirsiniz
        ],
        "Anubis": [
            ButtonData(title: "Button C", tag: 3),
            ButtonData(title: "Button D", tag: 4)
            // Buraya bu haritaya özel butonları ekleyebilirsiniz
        ],
        // Diğer haritalar için benzer şekilde devam edebilirsiniz
    ]
    
    @State private var selectedButtonIndex: Int?
    
    var body: some View {
        NavigationView {
                VStack {
                    Image("\(imageName)Map")
                        .resizable()
                        .scaledToFit()
                    // Sözlükten seçilen haritanın butonlarını alıp görüntüleme
                    ForEach(mapButtons[imageName] ?? [], id: \.self) { buttonData in
                        Button(action: {
                            selectedButtonIndex = buttonData.tag
                        }) {
                            Text(buttonData.title)
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                .background(Color.blue)
                                .cornerRadius(20)
                                .shadow(radius: 8)
                                .multilineTextAlignment(.leading)

                        }
                        .padding()
                    }
                }
                // Seçilen butona göre VideoView'e yönlendirme
                NavigationLink(destination: VideoView(), tag: selectedButtonIndex ?? 0, selection: $selectedButtonIndex) {
                    EmptyView()
                }
                .opacity(0) // Görünmez hale getirme
        }
        .navigationTitle(imageName)
    }
}

#Preview {
    MapView(imageName:"Anubis")
}
