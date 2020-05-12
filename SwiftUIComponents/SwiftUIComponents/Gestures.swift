//
//  Gestures.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/4/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Gestures: View {
    
    /*
    var body: some View {
        Image("mexican-mocha")
            .onTapGesture {
                print("Tapped!")
        }
    }
    */
    
    @State private var scale: CGFloat = 1.0
    
    /*
    var body: some View {
        Image("mexican-mocha")
            .scaleEffect(scale) //EFFECTS THE SCALE SIZE OF VIEW
            .gesture(TapGesture(count: 2).onEnded {
                self.scale += 0.1
            })
    }
    */
    
    /*
    var body: some View {
        Image("mexican-mocha")
            .scaleEffect(scale)
            .gesture(
                LongPressGesture(minimumDuration: 2)
                .onEnded { _ in
                    self.scale += 0.5
                }
            )
    }
    */
    
    @State private var dragAmount: CGSize = .zero

    var body: some View {
        Image("mexican-mocha")
            .offset(dragAmount) //IT MOVES THE POSITION OF VIEW
            .gesture(
                DragGesture(minimumDistance: 20)
                    .onChanged {
                        self.dragAmount = $0.translation
                    }
                    .onEnded { _ in
                        withAnimation(.spring(), {
                            self.dragAmount = .zero
                        })
                    }
           )
    }
}

struct Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Gestures()
    }
}
