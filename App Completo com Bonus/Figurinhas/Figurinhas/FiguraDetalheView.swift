//
//  FiguraDetalheView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct FiguraDetalheView: View {
    
    @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao
    
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
                    ProprieadesView(valor: .constant(""), valorInt: $figura.vidas, valorDecimal: .constant(0), tipo: .numeroInteiro)
                    ProprieadesView(imagem: "bolt", nome: "Potência", valor: .constant(""), valorInt: .constant(0), valorDecimal: $figura.potencia, cor: .yellow, tipo: .numeroDecimal)
//                    ProprieadesView(imagem: "circle", nome: "Teste", valor: "isso é um teste", cor: .purple, tipo: .texto)
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
                    minhaColecao.figuras.append(figura)
                    minhaColecao.salvar()
                } label: {
                    
                    if minhaColecao.figuras.count == 0 {
                        Text("Adicionar à coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    } else {
                        Text("Na sua coleção: \(minhaColecao.figuras.count)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                }
                .cornerRadius(30)
                .padding()
                            
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
