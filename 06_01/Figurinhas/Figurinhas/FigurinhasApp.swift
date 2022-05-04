//
//  FigurinhasApp.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/3/22.
//

import SwiftUI

@main
struct FigurinhasApp: App {
    var body: some Scene {
        let minhaColecao = MinhaColecao()
    
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}
