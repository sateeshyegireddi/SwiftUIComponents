//
//  Navigation.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 2/8/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

struct Navigation: View {
    
    //MARK: - Push Navigation -
    /*
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Show Details")
            }
            .navigationBarTitle("Home")
        }
    }
    */
    
    //MARK: - Push Navigation with some data -
    /*
    var body: some View {
        let first = Restaurant(name: "Joe's Restaurant")
        let restaurants = [first]
        return NavigationView {
            List(restaurants) { restaurant in
                NavigationLink(destination: RestaurantDetails(restaurant: restaurant)) {
                    RestaurantRow(restaurant: restaurant)
                }
            }
            .navigationBarTitle("Select a Restaurant")
        }
    }
    */
    
    //MARK: - Present a View as Sheet / Popover
    
    //WE PRESENT A VIEW ON TOP OF ANOTHER AS A SHEET / POPOVER.
    //HOWEVER, SHEET IS SWIFTUI IS SAME AS MODAL PRESENTATION IN UIKIT BUT POPOVER MAKES SOME UNUSUAL BEHAVIOUR SOME HOW AS I NOTICED.

    @State private var showDetails = false
    
    /*
    var body: some View {
        Button("Show Details") {
            self.showDetails = true
        }
        .sheet(isPresented: $showDetails) {
            DetailView()
        }
    }
    */
    
    //MARK: - Dismiss a Sheet -
    //DISMISS A VIEW WITH ENVIRONMENT PRESENTATIONMODE. SEE THE MAGIC IN DISMISS VIEW.
    
    var body: some View {
        Button("Show Details") {
            self.showDetails = true
        }
        .sheet(isPresented: $showDetails) {
            DismissWithEnvironmentView()
        }
    }
    
    // PASS A VARIABLE TO THE VIEW WHICH IS TO BE DISMISSED AND SET IT FALSE TO DISMISS.
    /*
    var body: some View {
        Button("Show Details")  {
            self.showDetails = true
        }
        .sheet(isPresented: $showDetails) {
            DismissView(isPresented: self.$showDetails)
        }
    }
    */
}

struct DetailView: View {
    var body: some View {
        Text("Details View")
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    var body: some View {
        Text(restaurant.name)
    }
}

struct RestaurantDetails: View {
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
            .font(.title)
    }
}

//HEY, MAGIC IS HERE :)
struct DismissWithEnvironmentView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button("Dismiss Me") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct DismissView: View {
    @Binding var isPresented: Bool
    var body: some View {
        Button("Dismiss me") {
            self.isPresented = false
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
