//
//  ContentView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/3/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            NavigationView {
                FigurasView()
            }
            .tabItem {
                Label("Figuras", systemImage: "face.smiling")
            }
            NavigationView {
                MinhaColecaoView()
            }
            .tabItem {
                Label("Minha Coleção", systemImage: "face.dashed")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
