//
//  ContentView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Text("Mingle")
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color.gray)
            .bold()
            .textCase(.lowercase)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
