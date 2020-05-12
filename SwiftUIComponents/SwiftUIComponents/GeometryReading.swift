//
//  GeometryReader.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct GeometryReading: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("Content 1")
                    .frame(width: geometry.size.width / 2,
                           height: 50)
                    .background(Color.yellow)
                
                Text("Content 2")
                    .frame(width: geometry.size.width / 2,
                           height: 50)
                    .background(Color.red)
            }
        }
    }
}

struct GeometryReading_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReading()
    }
}
