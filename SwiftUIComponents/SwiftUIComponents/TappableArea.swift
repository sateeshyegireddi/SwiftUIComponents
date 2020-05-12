//
//  TappableArea.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/4/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct TappableArea: View {
    var body: some View {
        VStack {
            Image("paella-alicante")
                .resizable()
                .frame(width: 300, height: 200)
            
            Spacer().frame(height: 50)
            
            Text("Paella Alicante")
        }
        .contentShape(Rectangle()) // TRY WITHOUT THIS LINE :)
        .onTapGesture {
            print("Content Tapped!")
        }
    }
}

struct TappableArea_Previews: PreviewProvider {
    static var previews: some View {
        TappableArea()
    }
}
