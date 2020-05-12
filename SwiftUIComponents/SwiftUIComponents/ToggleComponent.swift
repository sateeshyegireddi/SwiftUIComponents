//
//  ToggleComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct ToggleComponent: View {
    @State var showGreetings: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $showGreetings) {
                Text("Show Greetings")
                    .font(.headline)
            }
//            .labelsHidden() //CHECK WITHOUT COMMENTING THIS LINE
            .padding(.horizontal)
            
            if showGreetings {
                Text("Welcome to SwiftUI")
            }
        }
    }
}

struct ToggleComponent_Previews: PreviewProvider {
    static var previews: some View {
        ToggleComponent()
    }
}
