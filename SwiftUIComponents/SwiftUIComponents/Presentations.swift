//
//  Presentations.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/6/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Presentations: View {
    
    //MARK: - Simple Alert -
    
    @State private var showAlert = false
    
    //ALERT IN SWIFT UI ARE PRETTY STRAIGHT FORWARD TO PRESENT.
    //CONTROL ALERT SHOULD BE PRESENTED OR NOT, CREATE AN ALERT AND THATS IT :)
    
    var body: some View {
        Button("Show Alert") {
            self.showAlert = true
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Important Message"),
                  message: Text("Wear a sunscreen"),
                  dismissButton: .cancel(Text("Got it!")))
        }
    }
    
    //MARK: - Multiple Alerts -
    
    @State private var showAlert1 = false
    @State private var showAlert2 = false
    
    //DIFFERENT ALERTS WITH VARIOUS PRESENTATIONABLE VIEWS.
    /*
    var body: some View {
        VStack {
            Button("Show 1") {
                self.showAlert1 = true
            }
            .alert(isPresented: $showAlert1) {
                Alert(title: Text("Show Alert 1"),
                      message: nil,
                      dismissButton: .cancel())
            }
            
            Button("Show 2") {
                self.showAlert2 = true
            }
            .alert(isPresented: $showAlert2) {
                Alert(title: Text("Show Alert 2"),
                      message: nil,
                      dismissButton: .cancel())
            }
        }
    }
    */
    
    //SAME ALERT WITH VARIOUS PRESENTATIONABLE VIEWS.
    /*
    var body: some View {
        VStack {
            Button("Show 1") { self.showAlert = true }
            Button("Show 2") { self.showAlert = true }
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Important Message"), message: Text("Wear Shades today"), dismissButton: .cancel(Text("Ok")))
        }
    }
    */
    
    //MARK: - Actions in Alerts -
    
    /*
    var body: some View {
        Button("Show Alert") { self.showAlert = true }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Are you sure want to delete this?"),
                      message: Text("There is no undo"),
                      primaryButton: .destructive(Text("Delete")),
                      secondaryButton: .cancel())
        }
    }
    */
    
    //MARK: - Action Sheet -
    
    @State private var showActionSheet = false
    
    //IMPLEMENTATION OF ACTION SHEET IS SAME AS ALERT.
    /*
    var body: some View {
        Button("Show ActionSheet") { self.showActionSheet = true }
            .actionSheet(isPresented: $showActionSheet, content: {
                ActionSheet(title: Text("What do you want?"),
                            message: Text("Choose any preference"),
                            buttons: [.default(Text("Coffee")),
                                      .default(Text("Tea")),
                                      .cancel(Text("I want nothing"))])
            })
    }
    */
    
    //MARK: - Context Menu -
    
    //CONTEXT MENU IS SAME AS POPOVER IN IOS. WE CAN HAVE ANY KIND UI ELEMENTS INSIDE IT.
    /*
    var body: some View {
        Text("Options")
            .contextMenu {
                Button(action: {
                    //Do something here..
                }) {
                    Text("Choose your Country")
                    Image(systemName: "globe")
                }
                
                Button(action: {
                    //Do something here..
                }) {
                    Text("Detect location")
                    Image(systemName: "location.circle")
                }
        }
    }
    */
}

struct Presentations_Previews: PreviewProvider {
    static var previews: some View {
        Presentations()
    }
}
