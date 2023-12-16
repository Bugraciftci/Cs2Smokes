//
//  Settings.swift
//  Cs2Smoke
//
//  Created by Muhammed Buğra on 16.12.2023.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView{
            Form{
                
                Section(header: Text("About us")){
                    Text("Rate us <3")
                    Text("Recommend us to your friends <3")
                }
                
                Section(header: Text("Terms")){
                    Text("Terms of use")
                    Text("Privacy policy")
                }
                
                Section(header: Text("questions")){
                    Label("Contact me on X @bugra_ciftci_", systemImage: "link")
                        .foregroundColor(.blue)
                }
                
            }


            .navigationTitle("Settings")
        }

        
    }
}

#Preview {
    Settings()
}
