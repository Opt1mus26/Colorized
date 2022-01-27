//
//  ChangeColorSlider.swift
//  Colorized
//
//  Created by Pavel Tsyganov on 24.01.2022.
//

import SwiftUI

struct ChangeColorSlider: View {
    
    @Binding var value: Double
    @State private var textField = ""
    
    let tintColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").frame(width: 35)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(tintColor)
                .onChange(of: value) { _ in
                    textField = "\(lround(value))"
                }
            
            SliderTextField(textField: $textField, value: $value)
        }
        .onAppear {
            textField = "\(lround(value))"
        }
        .padding(8)
    }
}

struct ChangeColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorSlider(value: .constant(0.0), tintColor: .red)
    }
}
