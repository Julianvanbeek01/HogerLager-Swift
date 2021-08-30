//
//  Colors.swift
//  HogerLager
//
//  Created by Julian van Beek on 03/08/2021.
//

import SwiftUI

struct Colors {
    
    func getGradient(_ startX: CGFloat, _ startY: CGFloat, _ endX: CGFloat, _ endY: CGFloat) -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: [Color(UIColor(red: 0.00, green: 0.62, blue: 1, alpha: 1.0)), Color(UIColor(red: 0.93, green: 0.18, blue: 0.29, alpha: 1.0))]), startPoint: .init(x: startX, y: startY), endPoint: .init(x: endX, y: endY))
    }
}
