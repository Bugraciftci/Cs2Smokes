//
//  VideoView.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 12.12.2023.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable {
    let videoURL: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: videoURL) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

#Preview {
    VideoView (videoURL: buttonM1.videoURL)
}
