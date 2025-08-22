//
//  Customer.swift
//  LemonRestaurantC2
//
//  Created by Lavonde Dunigan on 8/21/25.
//

import Foundation

struct Customer {
    var name: String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]
    
    // Add a method called customerSummRY() that returns s string summary like:
    func customerSummary() -> String {
        let loyalty = isLoyaltyMember ? "is a loyalty member"
        : "is not a loyaltye member"
        
        let dishes = favoriteDishes.joined(separator: ",")
        
        return "\(name) \(loyalty). Favorite dishes: \(dishes)"
        
    }

}

