//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Ethan on 20/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
    
        
        VStack {
            Image(systemName: "timelapse")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("so yeah")
           
        }
        .padding()
        .foregroundStyle(.yellow)
        .fontWeight(.heavy)
        .font(.title3)
        
    }
        
        
    
}

#Preview {
    ContentView()
}
