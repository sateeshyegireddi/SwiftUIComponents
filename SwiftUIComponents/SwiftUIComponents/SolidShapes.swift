//
//  SolidShapes.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/23/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct SolidShapes: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 50) {
            
            Circle()
                .fill(Color.red) //FILL PROPERTY WORKS FOR SHAPES
                .frame(width: 200, height: 200)
            
            Divider() //TRY THIS INSTEAD OF SPACER :)
            
            Rectangle()
                .fill(Color.green)
                .clipShape(Ellipse())
                //WE CAN MAKE OTHER SHAPES WITH RECT USING clipShape
                .frame(width: 300, height: 200)
        }
    }
}

struct SolidShapes_Previews: PreviewProvider {
    static var previews: some View {
        SolidShapes()
    }
}
