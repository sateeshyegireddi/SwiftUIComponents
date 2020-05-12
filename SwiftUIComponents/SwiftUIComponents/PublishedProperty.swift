//
//  ObservableObjectProperty.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/4/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0
}

struct PublishedProperty: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your score is: \(settings.score)")
            Spacer().frame(height: 10)
            Button("Move Score") {
                self.settings.score += 1
            }
            Text("\(Int.random(in: 1...10))")
        }
    }
}

struct PublishedProperty_Previews: PreviewProvider {
    static var previews: some View {
        PublishedProperty()
    }
}
