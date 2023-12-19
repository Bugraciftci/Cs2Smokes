//
//  Settings.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 16.12.2023.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                aboutUsSection
                termsSection
                questionsSection
            }
            .navigationTitle("Settings")
        }
    }
    
    private var aboutUsSection: some View {
        Section(header: Text("About us")) {
            
            Button {
                SKStoreReviewController.requestReview()
            } label: {
                Text("Rate us <3")
            }
            Button(action: {
                recommendApp()
            }) {
                Text("Recommend us to your friends <3")
            }
        }
    }
    private var termsSection: some View {
        Section(header: Text("Terms")) {
            Link("Terms of use", destination: URL(string: "https://example.com/terms")!)
            Link("Privacy policy", destination: URL(string: "https://example.com/privacy")!)
        }
    }
    
    private var questionsSection: some View {
        Section(header: Text("Questions")) {
            Link("Contact me on X ", destination: URL(string: "https://twitter.com/bugra_ciftci_")!)
                .foregroundColor(.blue)
        }
    }
}
    private func recommendApp() {
        let textToShare = "Hey, check out this cool app!"
        let activityViewController = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }


#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif

