//
//  RectangleView.swift
//  Colorized
//
//  Created by Pavel Tsyganov on 24.01.2022.
//

import SwiftUI

struct RectangleView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 340, height: 170)
            .cornerRadius(30)
            .foregroundColor(Color(red: redValue / 255,
                                   green: greenValue / 255,
                                   blue: blueValue / 255))
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(redValue: 0, greenValue: 0, blueValue: 0)
    }
}
