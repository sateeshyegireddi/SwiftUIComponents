//
//  CustomBinding.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/6/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct CustomBinding: View {
    @State private var username = ""

    /*
    var body: some View {
        let binding = Binding(
            get: { self.username },
            set: { self.username = $0 }
        )
        
        return TextField("Enter Username", text: binding)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }
    */
    
    @State var firstToggle = false
    @State var secondToggle = false
    
    var body: some View {
        
        let firstBinding = Binding(
            get: { self.firstToggle },
            set: {
                self.firstToggle = $0
                self.secondToggle = !$0
            }
        )
        
        let secondBinding = Binding(
            get: { self.secondToggle },
            set: {
                self.secondToggle = $0
                self.firstToggle = !$0
            }
        )
        
        return VStack {
            Toggle(isOn: firstBinding) {
                Text("First Toggle")
            }
            Toggle(isOn: secondBinding) {
                Text("Second Toggle")
            }
        }
    }
}

// CAN WE CONTROL UI WITH A SINGLE VARIABLE WITH @State?
// FOR SUPPOSE, WE HAVE TWO SWITCHES AND ONE'S STATE DEPENDS ON ANOTHER LIKE ONE IS OFF THEN SECOND IS ON AND VICE VERSA.

struct CustomBinding_Previews: PreviewProvider {
    static var previews: some View {
        CustomBinding()
    }
}
