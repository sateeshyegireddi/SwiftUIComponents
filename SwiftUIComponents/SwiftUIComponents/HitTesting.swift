//
//  HitTesting.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/4/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct HitTesting: View {
    var body: some View {
        ZStack {
            Button("Tap me") {
                print("Button tapped!")
            }
            .frame(width: 100, height: 100)
            .background(Color.white)
            
            Rectangle()
                .fill(Color.red.opacity(0.2))
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .allowsHitTesting(false) //TRY BY PASS TRUE (HOPE YOU CAN NOT TOUCH BUTTON, CAN YOU?)
        }
    }
}

struct HitTesting_Previews: PreviewProvider {
    static var previews: some View {
        HitTesting()
    }
}
