//
//  LoadingView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 20.12.2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2)
                .padding()
            Text("Loading...")
        }
    }
}
#Preview {
    LoadingView()
}
