//
//  SegmentControlComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/3/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct SegmentControlComponent: View {
    
    private var colors = ["Red", "Yellow", "Green", "Blue"]
    @State private var selectedColor = 0
    
    /*
    var body: some View {
        VStack {
            Picker(selection: $selectedColor,
                   label: Text("What is your favourite color")) {
                    ForEach(0..<colors.count) { index in
                        Text(self.colors[index]).tag(index) // DO NOT KNOW WHAT TAG WILL DO HERE :(
                    }
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("Color: \(colors[selectedColor])")
        }
    }
    */
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor,
                   label: Text("What is your favourite color")) {
                    Text("Green").tag(0)
                    Text("Red").tag(1)
                    Text("Blue").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("Color: \(colors[selectedColor])")
        }
    }
}

struct SegmentControlComponent_Previews: PreviewProvider {
    static var previews: some View {
        SegmentControlComponent()
    }
}
