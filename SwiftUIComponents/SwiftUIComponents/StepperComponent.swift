//
//  StepperComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/4/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct StepperComponent: View {
    
    @State private var age = 99
    
    /*
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
        }
        .padding()
    }
    */
    
    var body: some View {
        VStack {
            Stepper("Enter your age",
                    onIncrement: {
                        if self.age < 100 { self.age += 1 }
                    },
                    onDecrement: {
                        if self.age > 0 { self.age -= 1 }
                    })
            Text("Your age is \(age)")
        }
    }
}

struct StepperComponent_Previews: PreviewProvider {
    static var previews: some View {
        StepperComponent()
    }
}
