//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by o11ev on 27.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var enabledLight = 1
    @State var buttonText = "START"
    
    private let dark = 0.5
    private let light = 1.0
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 200.0) {
                VStack(spacing: 20.0) {
                    ColorCircle(color: .red, opacity: enabledLight == 1 ? light : dark)
                    ColorCircle(color: .yellow, opacity: enabledLight == 2 ? light : dark)
                    ColorCircle(color: .green, opacity: enabledLight == 3 ? light : dark)
                }
                
                Button(action: buttonAction) {
                    Text(buttonText)
                        .padding(.horizontal, 30.0)
                }
                .font(.largeTitle)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 4)
                )
            }
        }
    }
    
    private func buttonAction() {
        if enabledLight < 3 {
            enabledLight += 1 }
        else { enabledLight = 1 }
        
        if buttonText == "START" {
            buttonText = "NEXT"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
