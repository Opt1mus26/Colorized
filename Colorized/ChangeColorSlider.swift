//
//  ChangeColorSlider.swift
//  Colorized
//
//  Created by Pavel Tsyganov on 24.01.2022.
//

import SwiftUI

struct ChangeColorSlider: View {
    let tintColor: Color
    
    @Binding var value: Double
    
    @State private var textField = ""
    
    var body: some View {
        HStack {
            Text("\(lround(value * 255.0))").frame(width: 35)
            Slider(value: $value)
                .tint(tintColor)
            TextField("\(lround(value * 255.0))", text: $textField)
                .frame(width: 45)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
        }
        .padding(8)
    }
}

struct ChangeColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorSlider(tintColor: .red, value: .constant(0.0))
    }
}
