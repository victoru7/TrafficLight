//
//  ContentView.swift
//  TrafficLight
//
//  Created by Виктор Устюжанин on 20.07.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var NameButton = "START"
    
    @State private var activeRed    = false
    @State private var activeYellow = false
    @State private var activeGreen  = false
    
    var body: some View {
        ZStack{
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    CircleTrafficLight(color: .red,    active: activeRed)
                    CircleTrafficLight(color: .yellow, active: activeYellow).padding(10.0)
                    CircleTrafficLight(color: .green,  active: activeGreen)
                    }.padding()
                
                Spacer()
                
                Button(action: {
                    
                    if self.activeRed {
                       
                        self.activeRed    = false
                        self.activeYellow = true
                    
                    } else if self.activeYellow {
                    
                        self.activeYellow = false
                        self.activeGreen  = true
                        
                    } else if self.activeGreen {
                       
                        self.activeGreen = false
                        self.activeRed   = true
                        
                    } else {
                       
                        self.activeRed  = true
                        self.NameButton = "NEXT"
                    }
                    
                }) {
                    ButtonTrafficLight(nameButton: NameButton)
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
