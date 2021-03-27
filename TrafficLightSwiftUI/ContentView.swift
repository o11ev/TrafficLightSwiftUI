//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by o11ev on 27.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 200.0) {
                VStack(spacing: 20.0) {
                    ColorCircle(color: .red)
                    ColorCircle(color: .yellow)
                    ColorCircle(color: .green)
                }
                NextButton()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
