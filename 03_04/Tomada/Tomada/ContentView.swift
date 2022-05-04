//
//  ContentView.swift
//  Tomada
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var ligado = false
    
    var body: some View {
        Toggle(isOn: $ligado) {
            Label("Tomada", systemImage: "triangle")
        }
            .background(ligado ? .green : .red)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
