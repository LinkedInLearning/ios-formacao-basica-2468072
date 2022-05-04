//
//  ContentView.swift
//  Contador
//
//  Created by Lucas Longo on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var valor = 1
    
    var body: some View {
        Stepper("Contador: \(valor)", value: $valor, in: 0...10)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
