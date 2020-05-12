//
//  FullScreen.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct FullScreen: View {
    var body: some View {
        Text("Hello, World!")
            .frame(minWidth: 0, maxWidth: .infinity,
                   minHeight: 0, maxHeight: .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)

    }
}

struct FullScreen_Previews: PreviewProvider {
    static var previews: some View {
        FullScreen()
    }
}
