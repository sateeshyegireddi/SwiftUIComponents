//
//  TimerWithSwiftUI.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/6/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct TimerWithSwiftUI: View {
    @State var currentDate = Date()
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1,
                              on: .main,
                              in: .common).autoconnect()
    
    var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .long
        return formatter
    }
    
    /*
    var body: some View {
        Text("\(currentDate, formatter: formatter)")
            .onReceive(timer) { input in
                self.currentDate = input
            }
    }
    */
    
    var body: some View {
        Text("\(timeRemaining)")
            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                }
            }
    }
}

struct TimerWithSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TimerWithSwiftUI()
    }
}
