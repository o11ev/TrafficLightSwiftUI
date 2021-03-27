//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by o11ev on 27.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var opacity = 0.0
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.5)
    }
}
