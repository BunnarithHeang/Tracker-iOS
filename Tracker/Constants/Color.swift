//
//  Color.swift
//  Tracker
//
//  Created by Heang Bunnarith on 11/8/24.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String, opacity: Double = 1.0) {
        let hexSanitized = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF000) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
    
    static let primaryColor = Color(hex: "#2457CA")
    static let primaryLightColor = Color(hex: "#4996F2")
    static let backgroundColor = Color(hex: "#EBEDEF")
    
    static let cardiColor = Color(hex: "#F0DFDD")
    static let card2Color = Color(hex: "#5F9DDC")
    static let card3Color = Color(hex: "#BE5579")
    static let card4Color = Color(hex: "#76B7D5")
}
