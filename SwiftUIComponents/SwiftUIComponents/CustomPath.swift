//
//  CustomPath.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/17/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct CustomPath: View {
    
    //MARK: - Sample Path -
    /*
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 150, y: 100))
            path.addLine(to: CGPoint(x: 200, y: 175))
            path.addLine(to: CGPoint(x: 100, y: 175))
            path.closeSubpath()
        }
        .fill(Color.red)
//        .stroke(Color.blue,
//                style: StrokeStyle(lineWidth: 2,
//                                   lineCap: .round,
//                                   lineJoin: .round))
        //.stroke(Color.blue, lineWidth: 2)
    }
    */
    
    //MARK: - Triangle Path Extension -
    
    /*
    var body: some View {
        Triangle()
            .stroke(Color.red,
                    style: StrokeStyle(lineWidth: 10,
                                       lineCap: .round,
                                       lineJoin: .round))
            .frame(width: 300, height: 300)
    }
    */
    
    //MARK: - Arc Path Extension -
    
    var body: some View {
        Arc(startAngle: .degrees(0),
            endAngle: .degrees(180),
            clockwise: true)
            .stroke(Color.red, lineWidth: 10)
            .frame(width: 300, height: 300)
    }
}

struct CustomPath_Previews: PreviewProvider {
    static var previews: some View {
        CustomPath()
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle(degrees: 90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: modifiedStart,
                    endAngle: modifiedEnd,
                    clockwise: !clockwise)
        return path
    }
}
