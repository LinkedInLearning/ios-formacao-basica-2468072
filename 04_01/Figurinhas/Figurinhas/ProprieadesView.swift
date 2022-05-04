//
//  ProprieadesView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct ProprieadesView: View {
    
    var imagem = "lifepreserver"
    var nome = "Vidas: "
    var valor = "2"
    var cor = Color.green
    
    var body: some View {
        HStack {
            Image(systemName: imagem)
                .foregroundColor(cor)
                .frame(width: 30.0)
                .font(.system(size: 30))
            

            Text(nome)
            
            Text(valor)
                .padding(.trailing)

        }
    }
}

struct ProprieadesView_Previews: PreviewProvider {
    static var previews: some View {
        ProprieadesView()
    }
}
