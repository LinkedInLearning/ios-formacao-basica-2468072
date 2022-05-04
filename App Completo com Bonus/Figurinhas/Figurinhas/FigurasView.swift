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
                FigurasLinhaView(figura: figura)
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
