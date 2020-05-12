//
//  GridView.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        GridStack(rows: 5, columns: 4) { (row, column) in
            HStack {
                Image(systemName: "\(row * 4 + column).circle")
                Text("R\(row) C\(column)")
            }
        }
    }
}

struct GridStack<Content: View>: View {
    var rows: Int
    var columns: Int
    var content: (Int, Int) -> Content
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ForEach(0..<self.rows, id: \.self) { row in
                    HStack {
                        ForEach(0..<self.columns, id: \.self) { column in
                            self.content(row, column)
                                .frame(width: geo.size.width / CGFloat(self.columns) - 10)
                        }
                    }
                }
            }.frame(width: geo.size.width)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
