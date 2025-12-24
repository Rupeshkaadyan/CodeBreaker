//
//  MatchMarker.swift
//  CodeBreaker
//
//  Created by Ethan on 24/12/25.
//

import SwiftUI
enum Match{
    case noMatch
    case exact
    case inexact
}

struct matchMarker: View {
    var Matches: [Match]
    
    var body: some View {
        HStack{
            VStack{
                matchMarker (peg: 0)
                matchMarker (peg: 1)
            }
            VStack{
                matchMarker (peg: 2)
                matchMarker (peg: 3)
            }
        }
    }
    func matchMarker(peg: Int) -> some View {
        let exactCount: Int = Matches.count(where: {match in match == .exact})
        let foundCount: Int = Matches.count(where: {match in match == .noMatch})
            
        return Circle()
        
            .fill(exactCount > peg ? Color.primary: Color.clear)
            .strokeBorder(foundCount > peg ? Color.primary : Color.clear, lineWidth: 2) .aspectRatio(1, contentMode: .fit)
    }
}



#Preview {
    matchMarker(Matches: [.exact, .inexact, .noMatch, .exact])
}

