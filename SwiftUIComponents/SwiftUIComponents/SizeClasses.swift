//
//  SizeClasses.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 12/25/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

struct SizeClasses: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        VStack {
            if horizontalSizeClass == .compact {
                Text("Compact")
            } else {
                Text("Horizontal")
            }
        }
    }
}

struct SizeClasses_Previews: PreviewProvider {
    static var previews: some View {
        SizeClasses()
    }
}
