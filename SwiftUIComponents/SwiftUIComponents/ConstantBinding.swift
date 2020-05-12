//
//  ConstantBinding.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/6/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct ConstantBinding: View {
    var body: some View {
        VStack {
            Toggle(isOn: .constant(false)) {
                Text("Show advanced options")
            }
            .padding(.horizontal)
        }
    }
}

struct ConstantBinding_Previews: PreviewProvider {
    static var previews: some View {
        ConstantBinding()
    }
}
