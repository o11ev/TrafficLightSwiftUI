//
//  SwiftUIView.swift
//  TrafficLightSwiftUI
//
//  Created by o11ev on 27.03.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var opacity = 0.5

    var body: some View {
        VStack {
            Text("Now you see me")
                .padding()
                .background(Color.red)
                .opacity(opacity)

            Slider(value: $opacity, in: 0...1)
                .padding()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
