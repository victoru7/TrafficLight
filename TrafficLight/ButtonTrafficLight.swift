//
//  ButtonTrafficLight.swift
//  TrafficLight
//
//  Created by Виктор Устюжанин on 21.07.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct ButtonTrafficLight: View {
    
    let shapeButton = RoundedRectangle(cornerRadius: 30, style: .circular)
    let nameButton: String
    
    var body: some View {
        ZStack{
            Color(.blue)
                .frame(width: 200, height: 70)
                .clipShape(shapeButton)
                .overlay(shapeButton.stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(nameButton).font(.largeTitle).foregroundColor(.white)
        }
    }
}

struct ButtonTrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTrafficLight(nameButton: "START")
    }
}
