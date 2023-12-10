//
//  SecondView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 9.12.2023.
//

import SwiftUI

struct SecondView: View {
    let imageName: String
    
    var body: some View {
        ZStack{
            Image("\(imageName)Map")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .navigationTitle(imageName)
        }
    }
}

#Preview {
    SecondView(imageName: "Vertigo")
}
