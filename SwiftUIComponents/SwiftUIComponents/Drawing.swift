//
//  Drawing.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/8/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Drawing: View {
    
    //MARK: - Shapes -
    
    /*
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.black)
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 25,
                             style: .continuous)
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 50)

            Ellipse()
                .fill(Color.blue)
                .frame(width: 100, height: 50)
            
            Circle()
                .fill(Color.white)
                .frame(width: 100, height: 50)
        }
    }
    */
    
    //MARK: - Custom path -
    @State private var rotations: Double = 3
    
    var body: some View {
        VStack {
            HStack {
                Slider(value: $rotations,
                       in: 1...25,
                       step: 2)
                Text("\(Int(rotations))")
            }.padding()
            Spacer().frame(height: 100)
            SpiroSquare(rotations: Int(rotations))
                .stroke()
                .frame(width: 100, height: 100)
        }
    }
    
    //MARK: - Custom Path -
//    var body: some View {
//        Square().stroke().frame(width: 100, height: 100)
//    }
    
    //MARK: - Poligon and Star -
    
    //DAMN..!! HELL..!! NOTHING IS UNDERSTANDABLE HERE :(
    
    //MARK: - CheckerBoard -
//    var body: some View {
//        CheckerBoard(rows: 12, columns: 12)
//            .stroke()
//            .frame(width: 300, height: 300)
//    }
}

struct SpiroSquare: Shape {
    @State var rotations: Int
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let amount = (.pi * 2) / CGFloat(rotations) //60
        let transform = CGAffineTransform(rotationAngle: amount)
        for _ in 0..<rotations {
            path = path.applying(transform)
            path.addEllipse(in: CGRect(x: 0,
                                       y: -rect.height / 2,
                                width: rect.width,
                                height: rect.height))
        }
        return path
    }
}

struct Square: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let amount = .pi / CGFloat(2)
        let transform = CGAffineTransform(rotationAngle: amount)
        for _ in 0..<4 {
            path = path.applying(transform)
            path.addRect(CGRect(x: 0, y: 0, width: rect.width, height: rect.height))
        }
        return path
    }
}

struct CheckerBoard: Shape {
    let rows: Int
    let columns: Int
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let rowSize = rect.width / CGFloat(rows) //25
        let columnSize = rect.height / CGFloat(columns) //25
        for row in 0..<rows { //0..<12
            for column in 0..<columns { //0..<12
                let startX = columnSize * CGFloat(column) //0, 12, 24, ...
                let startY = rowSize * CGFloat(row) //0, 12, 24, ...
                let rect = CGRect(x: startX, y: startY, width: rowSize, height: columnSize)
                path.addRect(rect)
            }
        }
        return path
    }
}
struct Drawing_Previews: PreviewProvider {
    static var previews: some View {
        Drawing()
    }
}
