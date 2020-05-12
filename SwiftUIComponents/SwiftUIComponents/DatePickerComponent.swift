//
//  DatePickerComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/3/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct DatePickerComponent: View {
    var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State private var birthDay = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select a day",
                       selection: $birthDay,
                       in: ...Date(),
                       displayedComponents: .hourAndMinute)
            Text("\(birthDay, formatter: formatter)")
        }
    }
}

struct DatePickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerComponent()
    }
}
