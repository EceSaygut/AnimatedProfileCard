//
//  ColorPalettes.swift
//  AnimatedProfileCard
//
//  Created by Ece Saygut on 14.03.2023.
//

import Foundation
import SwiftUI

let gradientColors = [
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.2549019754, green: 0.8470588326, blue: 0.8666666746), Color(red: 0.3294117749, green: 0.5137255192, blue: 0.9333333373)]), startPoint: .topTrailing, endPoint: .bottomLeading),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.992, green: 0.922, blue: 0.510), Color(red: 0.969, green: 0.561, blue: 0.678)]), startPoint: .topTrailing, endPoint: .bottomLeading),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.831, green: 0.988, blue: 0.471), Color(red: 0.600, green: 0.898, blue: 0.635)]), startPoint: .topTrailing, endPoint: .bottomLeading),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.741, green: 0.764, blue: 0.780), Color(red: 0.173, green: 0.243, blue: 0.314)]), startPoint: .topTrailing, endPoint: .bottomLeading),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.380, green: 0.263, blue: 0.522), Color(red: 0.318, green: 0.388, blue: 0.584)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.008, green: 0.667, blue: 0.690), Color(red: 0, green: 0.804, blue: 0.675)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.0, green: 0.016, blue: 0.157), Color(red: 0.0, green: 0.306, blue: 0.573)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.27, green: 0.41, blue: 0.86), Color(red: 0.69, green: 0.42, blue: 0.70)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.929, green: 0.435, blue: 0.4), Color(red: 0.952, green: 0.631, blue: 0.51)]), startPoint: .leading, endPoint: .trailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 1.0, green: 0.847, blue: 0.608), Color(red: 0.145, green: 0.329, blue: 0.482)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.043, green: 0.286, blue: 0.420), Color(red: 0.960, green: 0.384, blue: 0.090)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.000, green: 0.824, blue: 1.000), Color(red: 0.573, green: 0.553, blue: 0.678)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 1.000, green: 0.373, blue: 0.424), Color(red: 1.000, green: 0.765, blue: 0.443)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.655, green: 1.000, blue: 0.000), Color(red: 0.663, green: 0.000, blue: 0.467)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.298, green: 0.631, blue: 0.686), Color(red: 0.769, green: 0.878, blue: 0.898)]), startPoint: .topLeading, endPoint: .bottomTrailing),
    LinearGradient(gradient: Gradient(colors: [Color(red: 0.161, green: 0.502, blue: 0.725), Color(red: 0.173, green: 0.243, blue: 0.314)]), startPoint: .topLeading, endPoint: .bottomTrailing)

]

extension Color { // Bu extension, String tipindeki bir hexadecimal renk kodunu SwiftUI'da kullanılabilecek bir Color tipine dönüştürmek için kullanılır.
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let g = Double((rgbValue & 0xff00) >> 8) / 255.0
        let b = Double(rgbValue & 0xff) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}


    

