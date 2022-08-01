//
//  ContentView.swift
//  Cat App 2
//
//  Created by DWizard11 on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            CatFactView()
                .tabItem {
                    Label("Fact", systemImage: "lightbulb")
                }
            CatImageView()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
