//
//  ScrollViewComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct ScrollViewComponent: View {
    
    //MARK: - Normal ScrollView -
    
    /*
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                ForEach(0...100, id: \.self) {
                    Text("Number \($0)")
                        .frame(minWidth: 0, maxWidth: .infinity,
                               minHeight: 50)
                        .background( $0 % 2 == 0 ? Color.red : Color.yellow)
                }
            }
        }
    }
    */
    
    //MARK: - Horizontal ScrollView -
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 10) {
                ForEach(0...10, id: \.self) {
                    Text("\($0)")
                        .font(.largeTitle)
                        .frame(width: 100, height: 50)
                        .background(Color.red)
                }
            }
        }
    }
}

struct ScrollViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewComponent()
    }
}
