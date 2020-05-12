//
//  LifeCycle.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/4/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct LifeCycle: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: AnotherScreen()) {
                Text("Hello, World!")
            }
        }
        .onAppear {
            print("Source appears!")
        }
        .onDisappear {
            print("Source disappears!")
        }
    }
}

struct AnotherScreen: View {
    var body: some View {
        NavigationView {
            Text("Another Screen!")
        }
        .onAppear {
            print("Destination appears!")
        }
        .onDisappear {
            print("Destination disappears!")
        }
    }
}

struct LifeCycle_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycle()
    }
}
