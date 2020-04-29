//
//  ContentView.swift
//  AnimatedBarChart
//
//  Created by Connor Lagana on 4/29/20.
//  Copyright © 2020 Connor Lagana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickedItem = 0
    @State var dataPoints: [[CGFloat]] = [[90, 50, 97, 100, 190, 150, 110], [190, 170, 17, 31, 90, 50, 55], [30, 150, 197, 129, 74, 92, 31]]
    
    var body: some View {
        ZStack {
            
            Color(red: 137/255, green: 241/255, blue: 200/255).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Bars!").font(.system(size: 34)).fontWeight(.heavy)
                
                Picker(selection: $pickedItem, label: Text("")) {
                    Text("First").tag(0)
                    Text("Second").tag(1)
                    Text("Third").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
                
                HStack {
                    BarView(value: dataPoints[pickedItem][0], name: "S")
                    BarView(value: dataPoints[pickedItem][1], name: "M")
                    BarView(value: dataPoints[pickedItem][2], name: "T")
                    BarView(value: dataPoints[pickedItem][3], name: "W")
                    BarView(value: dataPoints[pickedItem][4], name: "T")
                    BarView(value: dataPoints[pickedItem][5], name: "F")
                    BarView(value: dataPoints[pickedItem][6], name: "S")
                    
                    
                }.padding(.top, 24).animation(.default)
            }
            
        }
    }
}


struct BarView: View {
    
    var value: CGFloat
    var name: String
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                
                Capsule().frame(width: 30, height: 200).foregroundColor(Color(red: 122/255, green: 226/255, blue: 186/255))
                Capsule().frame(width: 30, height: value).foregroundColor(.white)
            }
            Text("\(name)")
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
