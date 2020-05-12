//
//  Containers.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/5/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Containers: View {
    
    //MARK: - NavigationView -
    //-displayMode- MODIFIER ADDS SHOWING OF NAVIGATION BAR TITLE AS LARGE/SMALL TITLE.
    /*
    var body: some View {
        NavigationView {
            Text("SWIFTUI")
//                .navigationBarTitle("Welcome")
                .navigationBarTitle("Welcome",
                                    displayMode: .inline)
        }
    }
    */
    
    //MARK: - NavigationView with BarItems -
    // WE CAN ADD AS MANY AS BAR BUTTON ITEMS AT LEFT AND RIGHT SIDE OF BAR TITLE. HOWEVER, TWO OF THEM WITH EITHER SIDE WILL GIVE A DESCENT LOOK THAN A PILE OF ITEMS :)
    /*
    var body: some View {
        NavigationView {
            Text("SWIFT UI")
                .navigationBarTitle("Welcome",
                                    displayMode: .inline)
                .navigationBarItems(leading: HStack {
                    Button("Menu") { }
                    Button("Home") { }
                }, trailing: HStack {
                    Button("About") { }
                    Button("Help") { }
                })
        }
    }
    */
    
    //MARK: - TabView -
    //WELL, IT'S DEAD EASY TO CREATE A TAB VIEW IN SWIFT UI. VIEW WITH tabItem AND tag MAKES TAB BASED VIEW REALLY FLEXIBLE.
    @State private var selectedView = 1
    /*
    var body: some View {
        TabView(selection: $selectedView) {
            Text("First View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(0)
            Text("Second View")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }.tag(1)
            Text("Third View")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Third")
                }.tag(2)
        }
    }
    */
    
    //MARK: - Group -
    //HAVE YOU EVER TRIED THAT ADDING MORE THAN 10 VIEWS IN A VSTACK. OHH.. CAN'T YOU ADD..?? IS SWIFT GIVING AN ERROR..??
    //TRY TO PLACE THOSE VIEWS INSIDE A GROUP :)
    /*
    var body: some View {
        VStack {
            Group {
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            Group {
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
        }
    }
    */
    
    //MARK: - Status Bar Hiding -
    @State private var hideStatusBar = false
    var body: some View {
        Button(action: {
            withAnimation {
                self.hideStatusBar.toggle()
            }
        }) {
            Text("Hide Status Bar")
        }
        .statusBar(hidden: hideStatusBar)
    }
}

struct Containers_Previews: PreviewProvider {
    static var previews: some View {
        Containers()
    }
}
