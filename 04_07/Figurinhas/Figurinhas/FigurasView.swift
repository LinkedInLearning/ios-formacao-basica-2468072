//
//  FigurasView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct FigurasView: View {
    
    var figuras = ["Mingle", "Yodel"]
    @State var apresentado = false

    var body: some View {
    
        List(figuras, id: \.self) { figura in
            
//            NavigationLink(destination: FiguraDetalheView()) {
//                Text(figura)
//            }
            
            Button {
                apresentado = true
            } label: {
                Text(figura)
            }
        }
        .sheet(isPresented: $apresentado) {
            FiguraDetalheView()
        }
        
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
