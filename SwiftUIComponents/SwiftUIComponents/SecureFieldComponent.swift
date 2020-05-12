//
//  SecureTextFieldComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/3/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct SecureFieldComponent: View {
    @State private var password = ""
    var body: some View {
        VStack {
            SecureField("Enter password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            Text("Your password is \(password) :)")
        }
    }
}

struct SecureFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldComponent()
    }
}
