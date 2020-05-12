//
//  PickerComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/3/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct PickerComponent: View {
    private var colors = ["Red", "Yellow", "Green", "Blue"]
    @State private var selectedColor = 0
   
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, //HERE SELECTION IS NOT ARRAY OBJECT TYPE IT'S AN INT :)
                   label: Text("Select a favourite color")) {
                    ForEach(0..<colors.count) {
                        Text(self.colors[$0])
                    }
            }
            Text("You selected: \(colors[selectedColor])")
        }
    }
}

struct PickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        PickerComponent()
    }
}
