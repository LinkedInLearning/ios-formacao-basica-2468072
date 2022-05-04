//
//  FiguraDetalheView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct FiguraDetalheView: View {
    
    @State var itensNaColecao: Int = 0
    var figura: Figura 
    var body: some View {
        VStack(alignment: .leading) {
                        
            HStack {
                
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                
                Text("\"\(figura.frase)\"")
            }
            
            HStack {
                
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                VStack(alignment: .leading) {
                    
                    ProprieadesView()
                    ProprieadesView(imagem: "bolt", nome: "Potência: ", valor: "60%", cor: .yellow)
                }
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text(figura.descricao)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    itensNaColecao += 1
                } label: {
                    
                    if itensNaColecao == 0 {
                        Text("Adicionar à coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    } else {
                        Text("Na sua coleção: \(itensNaColecao)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                }
                .cornerRadius(30)
                Spacer()
            }.padding()
        }
        .navigationTitle(
            Text(figura.nome)
        )
    }
}

struct FiguraDetalheView_Previews: PreviewProvider {
    static var previews: some View {
        FiguraDetalheView(figura: figuras[0])
    }
}
