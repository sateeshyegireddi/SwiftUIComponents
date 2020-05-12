//
//  ListComponent.swift
//  SwiftUIComponents
//
//  Created by Sateesh Yemireddi on 1/8/20.
//  Copyright © 2020 Company. All rights reserved.
//

import SwiftUI

//MARK: - STATIC DATA -
/*
struct ListComponent: View {
    var body: some View {
        List {
            RestaurantRow(name: "Joe's Original")
            RestaurantRow(name: "The Real Joe's Original")
            RestaurantRow(name: "Original Joe's")
        }
    }
}

struct RestaurantRow: View {
    var name: String
    var body: some View {
        Text("Restaurant: \(name)")
    }
}
*/

//MARK: - DYNAMIC DATA -
/*
struct ListComponent: View {
    var body: some View {
        let first = Restaurant(name: "Joe's Original")
        let second = Restaurant(name: "The Real Joe's Original")
        let third = Restaurant(name: "Original Joe's")
        let restuarants = [first, second, third]
        
        return List(restuarants) { restuarant in //NO NEED TO SPECIFY id: \.name AS MODEL CONFIRMS TO IDENTIFIABLE
            RestaurantRow(restaurant: restuarant)
        }
    }
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

struct Restaurant: Identifiable { //CONFIRMS TO IDENTIFIABLE
    var id = UUID()
    var name: String
}
*/

//MARK: - DELETE ROW -
/*
struct ListComponent: View {
    @State private var users = ["Paul", "Taylor", "Adele"]

    var body: some View {
        List {
            ForEach(users, id: \.self) { user in
                Text(user)
            }
            .onDelete(perform: delete) // IT SEEMS onDelete AND onMove WILL ONLY WORK WITH ForEach
        }
    }
    
    func delete(at indexSet: IndexSet) {
        users.remove(atOffsets: indexSet)
    }
}
*/

/*
struct ListComponent: View {
    @State private var users = ["Paul", "Taylor", "Adele"]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at indexSet: IndexSet) {
        users.remove(atOffsets: indexSet)
    }
}
*/

//MARK: - MOVE ROW -
/*
struct ListComponent: View {
    @State private var users = ["Paul", "Taylor", "Adele"]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onMove(perform: move)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}
*/

//MARK: - SECTIONS -
/*
struct TaskRow: View {
    var body: some View {
        Text("Your task goes here")
    }
}

struct ListComponent: View {
    var body: some View {
        List {
            Section(header: Text("Important Tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            
            Section(header: Text("Other Tasks"),
                    footer: Text("End")) {
                TaskRow()
                TaskRow()
            }
        }
        .listStyle(GroupedListStyle())
    }
}
*/

//MARK: - ADD BACKGROUND TO CELL -
/*
struct ListComponent: View {
    var body: some View {
        List {
            ForEach(1...10, id: \.self) {
                Text("\($0)")
            }
            .listRowBackground(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red)
            )
        }
    }
}
*/

//MARK: - IMPLICIT STACKING
struct User: Identifiable {
    var id = UUID()
    var name = "Anonymous"
}

struct ListComponent: View {
    var users = [User(), User(), User()]
    var body: some View {
        List(users) { user in
            Image("paella-alicante-thumb")
                .resizable()
                .frame(width: 40, height: 40)
            Text(user.name)
        }
    }
}

struct ListComponent_Previews: PreviewProvider {
    static var previews: some View {
        ListComponent()
    }
}

