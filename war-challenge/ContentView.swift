//
//  ContentView.swift
//  war-challenge
//
//  Created by Baran Berkay Hökelek on 11/27/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard:String = "card5"
    @State private var cpuCard:String = "card9"
    @State private var playerScore:Int = 0
    @State private var cpuScore:Int = 0
    
    var body: some View {
        ZStack {
            Image("background")
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
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    // generate random card numbers
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // update the values
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update the scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.title2)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.title2)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
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
