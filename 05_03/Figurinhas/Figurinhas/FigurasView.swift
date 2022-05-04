//
//  FigurasView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct FigurasView: View {
    
    var body: some View {
    
        List(figuras) { figura in
            NavigationLink(destination: FiguraDetalheView(figura: figura)) {
                HStack {
                    Image(figura.imagem+"_p")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(.gray)
                        .containerShape(Circle())
                    Text(figura.nome)
                }
            }
        }
        .navigationTitle("Figuras")
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
