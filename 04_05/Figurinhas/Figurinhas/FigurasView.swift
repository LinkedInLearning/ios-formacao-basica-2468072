//
//  FigurasView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct FigurasView: View {
    
    var figuras = ["Mingle", "Yodel"]
    
    var body: some View {
    
        List(figuras, id: \.self) { figura in
            NavigationLink(destination: FiguraDetalheView()) {
                Text(figura)
            }
        }
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
