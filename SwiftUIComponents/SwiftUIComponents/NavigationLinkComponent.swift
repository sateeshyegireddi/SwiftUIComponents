//
//  NavigationLinkComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/1/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct NavigationLinkComponent: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Detail here!")) {
                Image("pesto-farfalle")
                    .renderingMode(.original) //TRY WITHOUT THIS LINE
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct NavigationLinkComponent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkComponent()
    }
}
