//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by o11ev on 27.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ColorCircle(color: .red)
            ColorCircle(color: .yellow)
            ColorCircle(color: .green)
        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
