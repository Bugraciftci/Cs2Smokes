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
                            destination: SecondView(imageName: imageName),
                            tag: imageName,
                            selection: $selectedImage
                        ) {
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                .padding(.vertical, 20)
                                .overlay(Text(imageName.uppercased())
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                                    .font(.system(size: 36))
                                    .fontWeight(.heavy), alignment: .center)
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            selectedImage = imageName
                        })
                    }
                }
                .scrollTargetBehavior(.viewAligned)
            }
            .background(Color.gray)
            .navigationViewStyle(.stack)
            .navigationTitle(Text("Choose any map")
                .bold()
                .font(.largeTitle))
        }
    }
}
#Preview {
    ContentView()
}
