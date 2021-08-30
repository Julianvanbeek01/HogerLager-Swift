//
//  ContentView.swift
//  HogerLager
//
//  Created by Julian van Beek on 03/08/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager = GameManager()
    
    var body: some View {
        if (!manager.gameOver) {
            VStack {
                Text("Score: \(manager.score)")
                    .font(.title)
                
                Spacer()
                
                HigherLowerButton(manager: manager, choice: "up")
                    .padding()
                
                NumberContainer(number: String(manager.currentNumber))
                
                HigherLowerButton(manager: manager, choice: "down")
                    .padding()
                
                Spacer()
            }
        } else {
            GameOver(manager: manager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
