//
//  Menuview.swift
//  LemonRestaurantC2
//
//  Created by Lavonde Dunigan on 8/14/25.
//

import SwiftUI

struct Menuview: View {
    /*
     let menuItems = [
     "Pizza": 9.99,
     "Pasta": 10.50,
     "Salad": 6.00,
     "Soup": 4.75,
     "Steak": 14.99,
     "Chocolate Cake": 5.75
     ]
     */
    
    
    /*
     Computed Properties
     
     Computed Properties is a property that doesn't store a value directly.
     Instead, It calculates its value every time it's accessed, using custom logic you define.
     
     Syntax
     
     var propertyName: Type {
     return a calculated value
     }
     */
    
    // Computed property
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted{$0.price < $1.price}
    }
    @State private var showMessage:Bool = false
    @State private var showThankYouMessage:Bool = false
    @State private var showDesserts:Bool = false
    
    
    let menuItems = [
        MenuItem(
            name: "Pizza",
            description: "Cheesy and hot",
            price: 9.0
            
        ),
        
        MenuItem(
            name: "Steak",
            description: "Grilled to perfection",
            price: 15.0
        ),
        
        MenuItem(
            name: "Pasta",
            description: "Shaghetti",
            price: 6.0
        ),
        
        MenuItem(
            name: "Caesar Salad",
            description: "Romaine lettuce with creamy Caesar dresssing",
            price: 10.99
        ),
        
        MenuItem(
            name: "Lasagna",
            description: "Lasagna description",
            price: 12.99
        ),
        
        MenuItem(
            name: "Tacos",
            description: "Hot and spicy",
            price: 4.99,
            
        ),
        
        MenuItem(
            name:"Ramen",
            description: "A delicious dish",
            price: 19.99
        ),
    ]
    
    
    var body: some View  {
        VStack {
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            // VSTack
            VStack(spacing: 20){
                Toggle("Show a special text", isOn: $showMessage)
                    .padding()
                
            }
            
            if showMessage {
                Text("You unlocked a surprise!")
                    .font(.title3)
                    .foregroundColor(.green)
            }
            
            // Assignment #1
            Toggle("Show thank you message", isOn: $showThankYouMessage)
                .padding()
            
            if showThankYouMessage {
                Text("Thank you for visiting Little Lemon")
                    .foregroundColor(.blue)
                    .italic()
            }
            Button("View Desserts"){
                showDesserts.toggle()
            }
            .padding()
            .background(.green.opacity(0.4))
            .cornerRadius(12)
            .foregroundColor(.black)
            
            .sheet(isPresented: $showDesserts){
                DessertView()
            }
        }
        //        List(menuItems){ item in
        List(sortedMenuItems){ item in
            MenuItemView(item: item)
        }
    }
}
            /*List {
                ForEach(menuItems.sorted(by: {$0.key > $1.key}), id: \.key){(name, price)
                    in
                    HStack {
                        VStack(alignment: . leading) {
                            Text(name)
                                .font(.headline)
                            
                            Text("$ \(price, specifier:"%.2f")")
                                .foregroundColor(.secondary)
                            
                            if price < 7 {
                                Text("$\(price, specifier: "%.2f")")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                }
            }
        }
    }
    */

#Preview {
    Menuview()
}
