//
//  FormComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/9/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct FormComponent: View {
    var colors = ["Red", "Green", "Blue"]
    @State var selectedColor = 0
    @State var enableLogging = false
    
    //MARK: - Basic Form
    //FORMS ARE SAME AS VSTACK/LIST EXCEPT THEIR UI.
    //FORM = LIST + GROUP STYLE
    /*
    var body: some View {
        NavigationView {
//            List
//            VStack
            Form {
                // FORM = VSTACK WITH DIFFERENT UI + SCROLLING
                // FORM = LIST WITH GROUPED STYLE
                // TRY UNCOMMENT LINES
                Picker("Choose a color",
                       selection: $selectedColor) {
                    ForEach(0..<colors.count) {
                        Text(self.colors[$0]).tag($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Toggle(isOn: $enableLogging) {
                    Text("Enable Logging")
                }
                
                Button(action: {
                    
                }) {
                    Text("Save changes")
                }
            }
//            .listStyle(GroupedListStyle())
            .navigationBarTitle("Settings")
        }
    }
    */
    
    //MARK: - Form with Section
    /*
    var body: some View {
        NavigationView {
            Form {
                Section { //JUST ADD SECTION TO UI COMPONENTS
                    Picker("Choose a color",
                           selection: $selectedColor) {
                        ForEach(0..<colors.count) {
                            Text(self.colors[$0]).tag($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Toggle(isOn: $enableLogging) {
                        Text("Enable Logging")
                    }
                }
                Section {
                    Button(action: {
                        
                    }) {
                        Text("Save changes")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
     */
    
    //MARK: - Pickers inside Form
    var strengths = ["Mild", "Medium", "Mature"]
    @State var selectedStrength = 0

    //PICKERS INSIDE FORMS GOT A CRAZY BEHAVIOR. THEY OPEN A DIFFERENT UI WHICH IS AS SAME AS LIST + GROUPED STYLE. HOWEVER, WHEEL STYLE GIVES PICKER IT'S DEFAULT STYLE.
    /*
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selectedStrength, label: Text("Strength")) {
                    ForEach(0..<strengths.count) {
                        Text(self.strengths[$0])
                    }
                }
            }
//            .pickerStyle(WheelPickerStyle())
            .navigationBarTitle("Select your cheese")
        }
    }
    */
    
    //MARK: - Enable/Disable elements inside Form
    @State var agreeToTerms = false
    
    //-disabled- MODIFIER ADDS UI ELEMENT ENABLE/DISABLE BEHAVIOUR.
    /*
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $agreeToTerms) {
                        Text("Agree Terms and Conditions")
                    }
                }
                Section {
                    Button(action: {
                        //Do something..!!
                    }) {
                        Text("Continue")
                    }
                }
                .disabled(!agreeToTerms)
            }
            .navigationBarTitle("Welcome")
        }
    }
    */
    
    //MARK: - Show/Hide elements inside Form
    @State private var showingAdvancedOptions = false
    
    var body: some View {
        Form {
            Section {
                //ADD -animation()- MODIFIER GIVES UI A MAGICAL LOOK
                Toggle(isOn: $showingAdvancedOptions.animation()) {
                    Text("Show advanced options")
                }
                
                //SHOW/HIDE IS CONTROLLED IN IF STATEMENT
                if showingAdvancedOptions {
                    Toggle(isOn: $enableLogging) {
                        Text("Enable logging")
                    }
                }
            }
        }
    }
}

struct FormComponent_Previews: PreviewProvider {
    static var previews: some View {
        FormComponent()
    }
}
