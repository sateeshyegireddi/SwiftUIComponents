//
//  ImageComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/23/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct ImageComponent: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.heavyrain.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            
            Spacer().frame(height: 30)
            
            Image("porridge-deluxe")
//                .resizable()
//                .resizable(resizingMode: .tile)
//                .resizable(capInsets: EdgeInsets(top: 20,
//                                                 leading: 20,
//                                                 bottom: 20,
//                                                 trailing: 20),
//                           resizingMode: .tile)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 300, height: 200)
        }
    }
}

struct ImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageComponent()
    }
}
