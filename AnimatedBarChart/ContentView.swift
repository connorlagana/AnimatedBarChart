//
//  ContentView.swift
//  AnimatedBarChart
//
//  Created by Connor Lagana on 4/29/20.
//  Copyright © 2020 Connor Lagana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(red: 78/255, green: 219/255, blue: 132/255).edgesIgnoringSafeArea(.all)
            Text("Bars!").font(.system(size: 34)).fontWeight(.heavy)
            
            Picker(selection: <#T##Binding<_>#>, label: Text("detroit")) {
                Text("tired")
                Text("tired")
                Text("tired")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
