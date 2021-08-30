//
//  GameOver.swift
//  HogerLager
//
//  Created by Julian van Beek on 04/08/2021.
//

import SwiftUI

struct GameOver: View {
    @ObservedObject var manager : GameManager
    
    var body: some View {
        
        VStack {
            Text("Game Over!")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("The number was \(manager.newNumber)")
                .padding()
            Text("Your Score was \(manager.score)")
                .padding()
            Button(action: {
                manager.gameOver = false
                manager.reset()
            }) {
                Text("Play Again")
            }
        }
    }
}
