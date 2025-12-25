//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Ethan on 20/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            pegs(colour: [.red , .green , .green , .yellow])
            pegs(colour: [.red , .blue , .green , .red])
            pegs(colour: [.red , .yellow , .green, .blue ])
            pegs(colour: [.red , .yellow , .green, .blue ]) // extra one 
            
            
            
            
            
        }
        .padding()
    }
    func pegs(colour: Array<Color>) -> some View{
        HStack {
            ForEach(colour.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10).aspectRatio(1,contentMode: .fit).foregroundStyle(colour[index])}
            
            matchMarker(Matches: [.exact, .inexact, .noMatch, .exact])
        }
   
        
        
    }
    
    
}



#Preview {
    ContentView()
}
