//
//  Animations.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/9/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Animations: View {
    
    //MARK: - Scale -
    
    @State private var scale: CGFloat = 1.0

//    var body: some View {
//        Button(action: {
//            self.scale += 1
//        }) {
//            Text("Tap here")
//                .scaleEffect(self.scale)
//                .animation(.linear(duration: 2))
//        }
//    }
    
    //MARK: - Rotate -
    
    @State private var angle: Double = 0
    @State private var borderThickness: CGFloat = 1
    
//    var body: some View {
//        Button(action: {
//            self.angle += 45
//            self.borderThickness += 1
//        }) {
//            Text("Tap here")
//                .padding()
//                .border(Color.red, width: self.borderThickness)
//                .rotationEffect(.degrees(self.angle))
//                .animation(.easeIn)
//        }
//    }
    
    //MARK: - Spring -
    
//    var body: some View {
//        Button(action: {
//            self.angle += 180
//        }) {
//            Text("Tap here")
//                .padding()
//                .rotationEffect(.degrees(self.angle))
//                .animation(.interpolatingSpring(mass: 1,
//                                                stiffness: 1,
//                                                damping: 0.5,
//                                                initialVelocity: 5))
//        }
//    }
    
    //MARK: - in Binding -
    
    @State private var showWelcome = false
    
//    var body: some View {
//        VStack {
//            Toggle(isOn: $showWelcome.animation(.spring())) {
//                Text("Agree to Terms")
//            }
//            if showWelcome {
//                Button("Accept") {}
//            }
//        }
//    }
    
    //MARK: - Explicit Animation -
    
    @State private var opacity: Double = 1
    
//    var body: some View {
//        Button(action: {
//            withAnimation(.linear(duration: 1)) {
//                self.opacity -= 0.2
//            }
//        }) {
//            Text("Tap here")
//                .padding()
//                .foregroundColor(.white)
//                .background(Color.red)
//                .opacity(opacity)
//        }
//    }
    
    //MARK: - Delay in Animation -
    
//    var body: some View {
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 200, height: 200)
//            .rotationEffect(.degrees(angle))
//            .animation(Animation.linear(duration: 2).delay(1))
//            .onTapGesture {
//                self.angle += 360
//        }
//    }
    
    //MARK: - Start Animation on View Appear -
    
//    var body: some View {
//        Circle()
//            .fill(Color.green)
//            .frame(width: 100, height: 100)
//            .scaleEffect(scale)
//            .onAppear {
//                let basicAnimation = Animation.easeInOut(duration: 1)
//                let repeated = basicAnimation.repeatForever(autoreverses: true)
//                withAnimation(repeated) {
//                    self.scale += 0.5
//                }
//            }
//    }
    
    //SCALE SPRING ANIMATION WITH DAMPING
    
//    var body: some View {
//        Circle()
//            .fill(Color.green)
//            .frame(width: 100, height: 100)
//            .scaleEffect(scale)
//            .onAppear {
//                let basicAnimation = Animation.spring(response: 1, dampingFraction: 0.5, blendDuration: 0.5)
//                withAnimation(basicAnimation) {
//                    self.scale += 0.5
//                }
//            }
//    }
    
    //AUTO REPEAT ANIMATION ON VIEW APPEARS WITH EXTENSION
//    var body: some View {
//        Circle()
//            .fill(Color.green)
//            .frame(width: 100, height: 100)
//            .scaleEffect(scale)
//            .animateForever(autoreverses: true) {
//                self.scale += 0.5
//            }
//    }
    
    //MARK: - Multiple Animations -
    
    @State private var isEnabled = false
    
//    var body: some View {
//        Button(action: {
//            self.isEnabled.toggle()
//        }) {
//            Text("Tap me")
//                .foregroundColor(.white)
//                .frame(width: 200, height: 200)
//                .background(self.isEnabled ? Color.green : Color.red)
//                .animation(nil)
//                .clipShape(RoundedRectangle(cornerRadius: isEnabled ? 100 : 0))
//                .animation(.default)
//        }
//    }

    //MARK: - Add/Remove View with Transition
    
    @State private var showDetails = false
    
//    var body: some View {
//        VStack {
//            Button(action: {
//                withAnimation {
//                    self.showDetails.toggle()
//                }
//            }) {
//                Text("Tap to show details")
//            }
//            if showDetails {
//                Text("Show details here")
//                    .transition(.move(edge: .bottom))
////                    .transition(AnyTransition.opacity.combined(with: .slide))
////                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//            }
//        }
//    }
    
    //MARK: - Custom Shape -
    
    @State private var isShowingRed = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 300, height: 300)

                if isShowingRed {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 300, height: 300)
                        .transition(.iris)
                        .zIndex(1)
                }
            }
            .navigationBarItems(trailing: Button("Switch") {
                withAnimation(.easeInOut) {
                    self.isShowingRed.toggle()
                }
            })
        }
    }
}

extension View {
    func animateForever(using animation: Animation = Animation.easeInOut(duration: 1), autoreverses: Bool = false, _ action: @escaping () -> Void) -> some View {
        let repeated = animation.repeatForever(autoreverses: autoreverses)
        return onAppear {
            withAnimation(repeated) {
                action()
            }
        }
    }
}

struct ScaledCircle: Shape {
    var animatableData: CGFloat
    func path(in rect: CGRect) -> Path {
        let maximumCircleRadius = sqrt(rect.width * rect.width + rect.height * rect.height)
        let circleRadius = maximumCircleRadius * animatableData
        let x = rect.midX - circleRadius / 2
        let y = rect.midY - circleRadius / 2
        let circleRect = CGRect(x: x, y: y, width: circleRadius, height: circleRadius)
        return Circle().path(in: circleRect)
    }
}

struct ClipShapeModifier<T: Shape>: ViewModifier {
    let shape: T
    func body(content: Content) -> some View {
        content.clipShape(shape)
    }
}

extension AnyTransition {
    static var iris: AnyTransition {
        .modifier(active: ClipShapeModifier(shape: ScaledCircle(animatableData: 0)),
                  identity: ClipShapeModifier(shape: ScaledCircle(animatableData: 1)))
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
