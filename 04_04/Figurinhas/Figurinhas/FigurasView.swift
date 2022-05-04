//
//  FigurasView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/15/22.
//

import SwiftUI

struct FigurasView: View {
    var body: some View {
        NavigationLink(destination: FiguraDetalheView()) {
            Text("Mingle")
        }
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
