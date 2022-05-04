//
//  ContentView.swift
//  CampoDeTexto
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var nome = ""
    @State var telefone = ""
    @FocusState var focado
    
    var body: some View {
        VStack {
            TextField("Nome completo", text: $nome)
            TextField("Telefone", text: $telefone)
                .keyboardType(.numberPad)
        }
        .padding()
        .foregroundColor(.red)
            .focused($focado)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button {
                        focado = false
                    } label: {
                        Text("Fechar")
                    }

                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
