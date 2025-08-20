//
//  Dessertitem.swift
//  LemonRestaurantC2
//
//  Created by Lavonde Dunigan on 8/19/25.
//

import Foundation

struct DessertItem: Identifiable{
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
