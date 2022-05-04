//
//  ContentView.swift
//  Figurinhas
//
//  Created by Lucas Longo on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("Mingle")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.gray)
                .bold()
                .textCase(/*@START_MENU_TOKEN@*/.lowercase/*@END_MENU_TOKEN@*/)
            
            HStack {
                
                Text("Frase: ")
                    .bold()
                
                Text("Problema em dobro")
            }
            
            Image("figura_01")
                .resizable()
                .scaledToFit()
                .frame(width: 100)

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
