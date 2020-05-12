//
//  BackgroundComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/23/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct BackgroundComponent: View {
    var body: some View {
        VStack {
            Text("This is SwiftUI")
                .padding(8)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(Color.black.opacity(0.6))
                .background(
                    Image("veggie-pizza")
                        .resizable()
                        .frame(width: 300, height: 100)
                )
            
            Spacer().frame(height: 200)
            
            Text("This is SwiftUI")
                .font(.largeTitle)
                .background(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 300, height: 300)
//                        .clipped()
                )
        }
    }
}

struct BackgroundComponent_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundComponent()
    }
}
