//
//  SliderComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/3/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct SliderComponent: View {
    @State private var celsius: Double = 0
    var body: some View {
        VStack {
            Slider(value: $celsius, in: -74...39, step: 0.1)
                .padding(.horizontal)
            Text("\(celsius, specifier: "%.2g") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.2g") Farhenheit")
        }
    }
}

struct SliderComponent_Previews: PreviewProvider {
    static var previews: some View {
        SliderComponent()
    }
}
