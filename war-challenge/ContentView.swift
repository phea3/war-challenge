//
//  ContentView.swift
//  war-challenge
//
//  Created by Leng Mouyngech on 16/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
//                    generate the random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
//                    update the card
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
//                    Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 30.0){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore) + " p")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(spacing: 30.0){
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore) + " p")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
