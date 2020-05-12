//
//  UIComponent.swift
//  iDine
//
//  Created by Sateesh Yemireddi on 12/4/19.
//  Copyright © 2019 Company. All rights reserved.
//

import SwiftUI

//MARK: - Text Component -

struct TextComponent: View {
    var body: some View {
        
        VStack {
            Text("This is an extremely long textbstring that will never fit even the widest of Phones")
//                .fontWeight(.black)
                .strikethrough()
                .underline()
                .kerning(1)
//                .tracking(1)
//                .lineLimit(2)
                .padding(.horizontal)
//                .font(.headline)
                .allowsTightening(true)
                .textContentType(.countryName)
                .truncationMode(.middle)
                .multilineTextAlignment(.center)
//                .lineSpacing(50)
                
                .foregroundColor(.red)
                .padding()
                .background(Color.yellow)
                .border(Color.black, width: 5)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .scaledFont(name: "Gill Sans", size: 25)
        }
    }
    
    //Note: - Text also contains strings which are interpolated by formatter / specifier.
    // - formatter can convert date type to string
    // - specifier can convert numeric to string
    
    private var taskDateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    let dueDate = Date()
    private var formattedText: Text {
        return Text("Task Due Date: \(dueDate, formatter: taskDateFormat)")
    }
}

struct TextComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextComponent()
    }
}

struct ScaledFont: ViewModifier {
    var name: String
    var size: CGFloat
    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

extension View {
    func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}
