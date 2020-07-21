//
//  CircleTrafficLight.swift
//  TrafficLight
//
//  Created by Виктор Устюжанин on 20.07.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct CircleTrafficLight: View {
    
    let color:  UIColor
    let active: Bool
    
    var body: some View {
        Color(color)
            .opacity(active ? 1.0: 0.2)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleTrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        CircleTrafficLight(color: .blue, active: false)
    }
}
