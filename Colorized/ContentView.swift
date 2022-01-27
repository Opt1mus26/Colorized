//
//  ContentView.swift
//  Colorized
//
//  Created by Pavel Tsyganov on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var amountIsFocused: Bool
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            RectangleView(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
                .padding(8)
            ChangeColorSlider(value: $redValue, tintColor: .red)
                .focused($amountIsFocused)
            ChangeColorSlider(value: $greenValue, tintColor: .green)
                .focused($amountIsFocused)
            ChangeColorSlider(value: $blueValue, tintColor: .blue)
                .focused($amountIsFocused)
            Spacer()
        }
        .padding()
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    amountIsFocused = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
