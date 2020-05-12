//
//  ViewComposition.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/9/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct ViewComposition: View {
    
    //MARK: - Create and compose views -
    
    let user = NewUser(name: "Mexican Mocha",
                       jobTitle: "A refreshment flavour of coffee",
                       emailAddress: "care@baristá.com",
                       profilePicture: "mexican-mocha-thumb")
    
//    var body: some View {
//        UserView(user: user)
//    }
    
    //MARK: - Combine Text views together -
    
    //WE CAN EASILY CREATE A REPLACEMENT OF NSAttributedString BY COMBINING TEXT VIEWS TOGETHER IN SWIFT UI.
//    var body: some View {
//        Text("Swift UI ")
//            .foregroundColor(.red)
//            .font(.largeTitle)
//        + Text("is ")
//            .foregroundColor(.orange)
//            .font(.headline)
//        + Text("awesome")
//            .font(.footnote)
//    }
    
    //MARK: - Store Views as props -
    
    let title = Text("Swift UI").font(.largeTitle)
    let subTitle = Text("is awesome").font(.headline)
    
//    var body: some View {
//        VStack {
//            title.foregroundColor(.orange)
//            subTitle
//        }
//    }
    
    //MARK: - Custom Modifiers -
    
//    var body: some View {
//        Text("Hello")
//            .modifier(PrimaryLabel())
//    }
    
    //MARK: - Wrap a custom UIView -
    @State private var text = ""
    
    var body: some View {
        TextView(text: $text)
            .frame(minWidth: 0, maxWidth: .infinity,
                   minHeight: 0, maxHeight: .infinity)
    }
}

struct UserView: View {
    var user: NewUser
    var body: some View {
        HStack {
            ProfilePicture(imageName: user.profilePicture)
            UserDetails(user: user)
        }
    }
}

struct NewUser {
    var name: String
    var jobTitle: String
    var emailAddress: String
    var profilePicture: String
}

struct ProfilePicture: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct EmailAddress: View {
    var address: String
    var body: some View {
        HStack {
            Image(systemName: "envelope")
            Text(address)
        }
    }
}

struct UserDetails: View {
    var user: NewUser
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.largeTitle)
                .foregroundColor(.primary)
            Text(user.jobTitle)
                .foregroundColor(.secondary)
            EmailAddress(address: user.emailAddress)
        }
    }
}

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .font(.largeTitle)
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        return UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}
