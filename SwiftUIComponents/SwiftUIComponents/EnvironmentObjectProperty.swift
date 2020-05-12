//
//  EnvironmentObjectProperty.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/6/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct EnvironmentObjectProperty: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.userSettings.score += 1
                }, label: {
                    Text("Increase")
                })
                
                NavigationLink(destination: DetailsView()) {
                    Text("Show Details View")
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct DetailsView: View {
    @EnvironmentObject var userSettings: UserSettings

    var body: some View {
        Text("\(self.userSettings.score)")
    }
}

struct EnvironmentObjectProperty_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectProperty()
    }
}
