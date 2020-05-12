//
//  GradientComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/23/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct GradientComponent: View {
    
    //MARK: - Linear Gradients -
    

    var body: some View {
        Text("Two Color Gradient View")
        .padding()
        .foregroundColor(.white)
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, .black]),
                           startPoint: .top,
                           endPoint: .bottom)
        )
    }
    
 
    /*
    var body: some View {
        Text("Three Color Gradient View")
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(gradient: Gradient(colors: [.white, .red, .black]),
                               startPoint: .leading,
                               endPoint: .trailing)
        )
    }
    */
    
    //MARK: - Radial Gradient -
    
    /*
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green,
                                       .blue, .purple])
        let conic = RadialGradient(gradient: colors,
                                   center: .center,
                                   startRadius: 50,
                                   endRadius: 200)
        return Circle().fill(conic).frame(width: 400,
                                          height: 400)
    }
    */
    
    //MARK: - Angular Gradient Fill Type -
    
    /*
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green,
                                       .blue, .purple, .red])
        let conic = AngularGradient(gradient: colors,
                                    center: .center)
        return Circle().fill(conic)
    }
    */
    
    //MARK: - Angular Gradient Stroke Type -
    
    /*
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green,
                                       .blue, .purple, .red])
        let conic = AngularGradient(gradient: colors,
                                    center: .center,
                                    startAngle: .zero,
                                    endAngle: .degrees(360))
        return Circle().strokeBorder(conic,
                                     lineWidth: 50)
    }
    */
}

struct GradientComponent_Previews: PreviewProvider {
    static var previews: some View {
        GradientComponent()
    }
}
