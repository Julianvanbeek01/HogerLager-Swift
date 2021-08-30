//
//  GameManager.swift
//  HogerLager
//
//  Created by Julian van Beek on 03/08/2021.
//

import SwiftUI

class GameManager: ObservableObject {
    @Published var score: Int
    @Published var currentNumber: Int
    @Published var newNumber: Int
    @Published var gameOver: Bool
    
    init() {
        self.score = 0
        self.currentNumber = Int.random(in: 1...99)
        self.newNumber = 0
        self.gameOver = false
    }
    
    func buttonPressed(_ choice: String) {
        self.newNumber = Int.random(in: 1...99)
        
        switch choice {
            case "up":
                if (self.newNumber > self.currentNumber) {
                    self.score += 1
                    self.currentNumber = self.newNumber
                    print("Correct")
                } else {
                    self.gameOver = true
                }
            
            case "down":
                if (self.newNumber < self.currentNumber) {
                    self.score += 1
                    self.currentNumber = self.newNumber
                    print("Correct")
                } else {
                    self.gameOver = true
                }
            
            default:
            print("error")
        }
    }
    
    func reset() {
        self.score = 0
        self.currentNumber = Int.random(in: 1...99)
        self.newNumber = 0
    }
}
