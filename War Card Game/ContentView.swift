//
//  ContentView.swift
//  War Card Game
//
//  Created by Indrek Mäeots on 11.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card11"
    @State var aiCard = "card14"
    
    @State var playerScore = 0
    @State var aiScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(aiCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    VStack {
                        Text("AI")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(aiScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize the cards
        let playerCardNum = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardNum)
        
        let aiCardNum = Int.random(in: 2...14)
        aiCard = "card" + String(aiCardNum)
        
        // Update the scores
        if playerCardNum > aiCardNum {
           // Add 1 to player score
            playerScore += 1
        } else if playerCardNum < aiCardNum {
            // Add 1 to AI score
            aiScore += 1
        }
    }
}

#Preview {
    ContentView()
}
