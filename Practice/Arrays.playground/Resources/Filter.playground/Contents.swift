import UIKit
/*
    Filter

 Create a new array containing only elements that satisfy a given condition
 

Syntax
collection.filter($0 condition)
*/
// Example #1
let values = [12.0, 8.5, 4.5, 14.99]

for value in values {
if value > 10 {
    print(value)
  }
}

let premium = values.filter { $0 > 10 }
print(premium)


// Example #2
let dishes = ["Burger", "Fries", "Fish", "Pasta", "Fruit"]
let filtered = dishes.filter { $0.hasPrefix ("F")}
print(filtered)

/* Mini-challenge

Filter an array of dish names to find vegetarian options
(hint: include keywords like 'Salad')......)
*/

let vegetarians:[String] = ["VeggieSalad", "Steak","Fruit Bowl", "Ceasar Salad"]
let filteredMenu = vegetarians.filter{$0.contains("Salad") || $0.contains("Fruit")}
print(filteredMenu)

