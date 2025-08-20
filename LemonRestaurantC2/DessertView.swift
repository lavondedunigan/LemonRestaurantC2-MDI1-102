//
//  DessertView.swift
//  LemonRestaurantC2
//
//  Created by Lavonde Dunigan on 8/19/25.
//

import SwiftUI

struct DessertView: View {
    let dessertMenuItems = [
        DessertItem(
            name: "Tiramisu",
            description: "Tiramisu Description",
            price: 5.99
        ),
        
        DessertItem(
            name: "Cheesecake",
            description: "Cheesecake description",
            price: 6.99
        ),
        
        DessertItem(
            name: "Gelato",
            description: "Gelato description",
            price: 4.99
        )
    ]
    var body: some View {
            NavigationView {
                List(dessertMenuItems){ dessert in
                    HStack {
                        Text(dessert.name)
                            .font(.title3)
                        
                        Spacer()
                        
                        Text(String(format: "%.2f", dessert.price))
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, 5)
                }
                .navigationTitle("Desserts")
            }
        }
    }

    #Preview {
        DessertView()
    }
