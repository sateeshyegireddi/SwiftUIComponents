//
//  ObservableObjectPublisherProperty.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/6/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI
import Combine

class UserAuthentication: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    var username = "" {
        willSet {
            objectWillChange.send()
        }
    }
}

struct ObservableObjectPublisherProperty: View {
    @ObservedObject var settings = UserAuthentication()
    
    var body: some View {
        VStack {
            TextField("Username", text: $settings.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Username is \(settings.username)")
            Text("\(Int.random(in: 1...10))")
        }
    }
}

struct ObservableObjectPublisherProperty_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectPublisherProperty()
    }
}
