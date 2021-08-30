//
//  HigherLowerButton.swift
//  HogerLager
//
//  Created by Julian van Beek on 03/08/2021.
//

import SwiftUI

struct HigherLowerButton: View {
    @ObservedObject var manager : GameManager
    
    let choice: String

    var body: some View {
        Button(action: {
            self.manager.buttonPressed(choice)
        }) {
            ZStack {
                Color.white
                LinearGradient(gradient: Gradient(colors: [Color(UIColor(red: 0.00, green: 0.62, blue: 1, alpha: 1.0)), Color(UIColor(red: 0.93, green: 0.18, blue: 0.29, alpha: 1.0))]), startPoint: .init(x: 0.6, y: 0.2), endPoint: .init(x: 0.4, y: 0.8))
                    .mask(Image(systemName: "chevron.\(choice)")
                            .font(.system(size: 44, weight: .bold)))
            }
            .cornerRadius(15)
            .frame(width: 96, height: 96)
            .shadow(color: Color.black.opacity(0.26), radius: 6, x: 0, y: 3)
        }
    }
    
}
