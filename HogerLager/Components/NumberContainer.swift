//
//  NumberContainer.swift
//  HogerLager
//
//  Created by Julian van Beek on 03/08/2021.
//

import SwiftUI

struct NumberContainer: View {
    let colors = Colors()
    let number: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(colors.getGradient(0.8, -0.4, 0.2, 1.4), lineWidth: 1.5)
            colors.getGradient(0.6, 0.2, 0.4, 0.8)
                .mask(Text(number)
                        .font(.system(size: 56, weight: .bold)))
        }
        .frame(width: 96, height: 96)
    }
}

struct NumberContainer_Previews: PreviewProvider {
    static var previews: some View {
        NumberContainer(number: "34")
    }
}
