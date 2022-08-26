//
//  ContentView.swift
//  GaugeApp
//
//  Created by Vasichko Anna on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var current = 15.0
    @State private var minimum = 0.0
    @State private var maximum = 40.0
   
    var body: some View {
        VStack(spacing: 20){
            Text("Temperature")
                .font(.largeTitle)
            Gauge(value: current, in: minimum...maximum) {
                
            } currentValueLabel: {
                Text("\(Int(current))")
            } minimumValueLabel: {
                Text("\(Int(minimum))")
                    .foregroundColor(.blue)
            } maximumValueLabel: {
                Text("\(Int(maximum))")
                    .foregroundColor(.red)
            }
            .gaugeStyle(.accessoryCircular)
            .tint(Gradient(colors: [.blue, .green, .yellow, .orange, .red]))
            .scaleEffect(1.5)
            
            Slider(value: $current, in: minimum...maximum)
                .padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
