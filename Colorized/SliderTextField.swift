//
//  SliderTextField.swift
//  Colorized
//
//  Created by Pavel Tsyganov on 27.01.2022.
//

import SwiftUI

struct SliderTextField: View {
    
    @Binding var textField: String
    @Binding var value: Double
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textField, onCommit: checkValue)
            .textFieldStyle(.roundedBorder)
            .frame(width: 55)
            .keyboardType(.decimalPad)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Wrong format"),
                      message: Text("Please enter values to 0 from 255")
                )
            }
    }
}

extension SliderTextField {
    private func checkValue() {
        if let value = Int(textField), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
    }
}
struct SliderTextField_Previews: PreviewProvider {
    static var previews: some View {
        SliderTextField(textField: .constant("100"), value: .constant(100.0))
    }
}
