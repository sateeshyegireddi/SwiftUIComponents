//
//  ButtonComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct ButtonComponent: View {
    
    @State var showGreetings: Bool = false
    
    /*
    var body: some View {
        VStack {
            Button("Show Greetings", action: {
                self.showGreetings.toggle()
            })
            if showGreetings {
                Text("Welcome Greetings")
            }
        }
    }
    */
    
    /*
    var body: some View {
        VStack {
            Button(action: {
                self.showGreetings.toggle()
            }) {
                Text("Show Greetings")
                    .padding(4)
                    .font(.title)
            }
            if showGreetings {
                Text("Welcome Greetings")
            }
        }
    }
    */
    
    var body: some View {
        Button(action: {
            //Do something here..
        }) {
            Image("pesto-farfalle")
                .renderingMode(.original) //same result
        }
//        .buttonStyle(PlainButtonStyle()) //same result
    }
    
}

struct ButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent()
    }
}
