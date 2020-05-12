//
//  Stacks.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/24/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct Stacks: View {
    
    //MARK: - HStack, VStack and ZStack -
    
    /*
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("HStack Content")
                Text("HStack Content")
            }
            
            Spacer().frame(height: 30)
            
            HStack(spacing: 40) {
                Text("HStack Content")
                Text("HStack Content")
            }
            
            Spacer().frame(height: 50)
            
            ZStack(alignment: .bottomTrailing) {
                Image("veggie-pizza")
                Text("Veggie Pizza")
                    .padding(.horizontal, 10)
                    .font(.title)
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Divider()
            
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                    .zIndex(1)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
            }
        }
    }
    */
    
    //MARK: - Return Generic View with Group -
    
    /*
    var body: some View {
        Group {
            if Bool.random() {
                Image(systemName: "cloud.heavyrain.fill")
            } else {
                Text("Clouds")
            }
        }
    }
    */
    
    //MARK: - Return Generic View with AnyView (Performance Cost) -
    
    var body: some View {
        if Bool.random() {
            return AnyView(
                Image(systemName: "cloud.heavyrain.fill")
            )
        } else {
            return AnyView(Text("Clouds"))
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
