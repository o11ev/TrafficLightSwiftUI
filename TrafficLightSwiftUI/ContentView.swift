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
                    ColorCircle(color: .red, opacity: 1.0)
                    ColorCircle(color: .yellow, opacity: 0.5)
                    ColorCircle(color: .green, opacity: 0.5)
                }
//                NextButton()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Button")
                        .font(.title)
                        .foregroundColor(.white)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
