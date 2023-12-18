//
//  ContentView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

struct ContentView: View {
    let images = ["Ancient", "Anubis", "Inferno", "Mirage", "Nuke", "Overpass", "Vertigo"]
    @State private var selectedImage: String?
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVStack(spacing: 0) {
                    ForEach(images, id: \.self) { imageName in
                        NavigationLink(
                            destination: MapView(imageName: imageName),
                            tag: imageName,
                            selection: $selectedImage
                        ) {
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width * 0.84)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                .padding()
                                .overlay(Text(imageName.uppercased())
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                                    .font(.system(size: 36))

                                )
                                    
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            selectedImage = imageName
                        })
                    }
                }
            }
            .background(LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            .navigationViewStyle(.stack)
            .navigationTitle(Text("Maps"))
        }
    }
}

#Preview {
    ContentView()
}
