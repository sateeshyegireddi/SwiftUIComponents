//
//  Effects_3D.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct Effects_3D: View {
    
    //MARK: - Cover Flow Style Scrolling Effect -
    
    /*
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 0) {
                ForEach(1..<10, id: \.self) { num in
                    VStack {
                        GeometryReader { geo in
                            Text("Number \(num)")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.red)
                                .rotation3DEffect(
                                    .degrees(-Double(geo.frame(in: .global).minX) / 8),
                                    axis: (x: 0, y: 1, z: 0))
                        }
                    }
                    .frame(width: 180)
                }
            }
        }
    }
    */
    
    //MARK: - Card Style -
    
    // /*
    @State var dragAmount: CGSize = .zero
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]),
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing))
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .offset(self.dragAmount)
                    .rotation3DEffect(.degrees(-Double(self.dragAmount.width) / 20),
                                      axis: (x: 0, y: 1, z: 0))
                    .rotation3DEffect(.degrees(Double(self.dragAmount.height) / 20),
                                      axis: (x: 1, y: 0, z: 0))
                    .gesture(
                        DragGesture()
                            .onChanged { self.dragAmount = $0.translation }
                            .onEnded { _ in
                                withAnimation(.spring()) {
                                    self.dragAmount = .zero
                                }
                            }
                    )
            }
        }
    }
    
    // */
}

struct Effects_3D_Previews: PreviewProvider {
    static var previews: some View {
        Effects_3D()
    }
}
