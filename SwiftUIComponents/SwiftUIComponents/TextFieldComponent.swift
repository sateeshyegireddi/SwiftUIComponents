//
//  TextFieldComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/3/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct TextFieldComponent: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name",
                      text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
                .keyboardType(.decimalPad)
                .padding(.horizontal)
            Text(name)
        }
    }
}

struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent()
    }
}
