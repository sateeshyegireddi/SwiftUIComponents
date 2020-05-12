//
//  Transformations.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/8/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Transformations: View {
    
    //MARK: - Offset -
    
    //OFFSET SHIFTS UI ELEMENT POSITION WHERE AS PADDING ADDS SPACE AROUND
    
//    var body: some View {
//        VStack {
//            Text("Home")
//            Text("Options")
//                .offset(y: 15)
//            Text("Help")
//        }
//    }
    
    //MARK: - Padding + Offset -
    
//    var body: some View {
//        VStack {
//            Text("Home")
//            Text("Options")
//                .offset(y: 15)
//                .padding(.bottom, 15)
//            Text("Help")
//        }
//    }
    
    //MARK: - In Z-Stack -
    
//    var body: some View {
//        ZStack(alignment: .bottomTrailing) {
//            Image("porridge-deluxe")
//            Text("Porridge")
//                .font(.title)
//                .padding(5)
//                .foregroundColor(.white)
//                .background(Color.black.opacity(0.4))
//                .offset(x: -5, y: -5)
//        }
//    }

    //MARK: - Padding + Background Magic -
    
    // ADDING PADDING MODIFIER TO A UI ELEMENT BEFORE AND AFTER APPLYING A BACKGROUND WILL RESULT A DIFFERENT BEHAVIOUR.
    /*
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
                .font(.headline)
                .foregroundColor(.white)
                .padding(20)
                .background(Color.red)
            
            Spacer().frame(height: 15)
            
            Text("Hello SwiftUI")
                .font(.headline)
                .foregroundColor(.white)
                .background(Color.red)
                .padding(20)
        }
    }
    */
    
    //MARK: - Pile of Padding + Background -
    
    /*
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.orange)
                .padding()
                .background(Color.yellow)
        }
    }
    */
    
    //MARK: - Border -
    
//    var body: some View {
//        Text("Hacking with Swift")
//            .padding()
//            .border(Color.red, width: 4)
//    }
    
    //MARK: - Rounded Border -
    
    //WE CAN MAKE A CLEAN ROUNDED RECT WITH OVERLAY, ROUNDED RECT, STROKE MODIFIERS.
    
    //STROKES CAN BE APPLIED ONLY TO SHAPES (CIRCLE/ROUNDED RECT etc).
    
//    var body: some View {
//        Text("Hacking with Swift")
//            .frame(width: 300, height: 30)
//            .padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 30)
//                    .stroke(Color.blue, lineWidth: 2)
//        )
//    }
    
    //MARK: - Stroke vs Stroke Border -
    
    //STROKE - WILL BE SPREADED AROUND THE BORDER
    //STORKE BORDER - WILL BE SPREADED INSIDE THE BORDER
    
//    var body: some View {
//        VStack {
//            Circle()
//                .stroke(Color.red, lineWidth: 30)
//                .frame(width: 200, height: 200)
//                .border(Color.black)
//
//            Spacer().frame(height: 20)
//
//            Circle()
//                .strokeBorder(Color.red, lineWidth: 30)
//                .frame(width: 200, height: 200)
//                .border(Color.black)
//        }
//    }
    
    //MARK: - Shadow -
    
//    var body: some View {
//        Text("Hacking with Swift")
//            .padding()
//            .border(Color.red, width: 2)
//            .shadow(color: .black, radius: 2, x: 15, y: 15)
//    }
    
    //MARK: - Clip a Shape -
    
//    var body: some View {
//        Button(action: {
//            print("Button Tap")
//        }) {
//            Image(systemName: "bolt.fill")
//                .foregroundColor(.white)
//                .padding()
////                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
//                .background(Color.green)
//                .clipShape(Circle())
////                .clipShape(Capsule())
//        }
//    }
    
    //MARK: - Rotate View -
    @State private var rotation = 0.0
    
//    var body: some View {
//        VStack {
//            Slider(value: $rotation, in: 0...360, step: 10)
//            Text("Up we go")
//                .rotationEffect(.degrees(rotation),
//                                anchor: .topLeading)
//        }
//    }
    
    //MARK: - Rotate 3D -
    
//    var body: some View {
//        VStack {
//            Slider(value: $rotation, in: 0...360, step: 30)
//            Text("Up we go")
//                .rotation3DEffect(.degrees(rotation),
//                                  axis: (x: 1, y: 0, z: 0))
//        }
//    }
    
    //MARK: - Scaling
    
//    var body: some View {
//        VStack {
//            Text("Up we go")
//                .scaleEffect(5)
//            Spacer().frame(height: 20)
//            Text("Up we go")
//                .scaleEffect(x: 1, y: 5, anchor: .top)
//        }
//    }
    
    //MARK: - Round Corners -
    
//    var body: some View {
//        Text("Swift UI")
//            .padding()
//            .background(Color.red)
//            .cornerRadius(25)
//    }
    
    //MARK: - Opacity -
    
//    var body: some View {
//        Text("Swift UI")
//            .padding()
//            .background(Color.red)
//            .opacity(0.3)
//    }
    
    //MARK: - Accent Color -
    
//    var body: some View {
//        VStack {
//            Button(action: {}) { Text("Tap me") }
//            Text("I'm accent")
//        }
//        .accentColor(.red)
//    }
    
    //MARK: - Masking -
    
//    var body: some View {
//        Image("porridge-deluxe")
//            .resizable()
//            .frame(width: 300, height: 300)
//            .mask(Text("Porridge")
//                .font(.system(size: 72))
//                .fontWeight(.black)
//        )
//    }
    
    //MARK: - Blur -
    @State private var radius = 0.0
    
//    var body: some View {
//        VStack {
//            Slider(value: $radius, in: 0...10, step: 1)
//            Spacer().frame(height: 20)
//            Image("porridge-deluxe")
//                .resizable()
//                .frame(width: 400, height: 250)
//                .blur(radius: CGFloat(radius))
//        }
//        .padding()
//    }
    
    //MARK: - Blend -
    
//    var body: some View {
//        ZStack {
//            Image("strawberry-surprise")
//            Image("thai-red-curry")
//                .blendMode(.darken)
//        }
//    }
    
    //MARK: - Hue, Saturation, Contrast, ... -
    
    var body: some View {
        VStack {
            HStack {
                Image("corn-on-the-cob").resizable()
                Image("corn-on-the-cob").resizable()
                    .colorMultiply(Color.red.opacity(0.8))
            }
            HStack {
                Image("paella-alicante").resizable()
                Image("paella-alicante").resizable()
                    .saturation(0.1)
            }
            HStack {
                Image("full-english").resizable()
                Image("full-english").resizable()
                    .contrast(2.0)
            }
        }
    }
}

struct Transformations_Previews: PreviewProvider {
    static var previews: some View {
        Transformations()
    }
}
