import UIKit

/*
 .map()
 Method used to transform each element of a collection into a new value, creating a new array with the results.
 
 */
// Example #1
let prices = [8.50, 12.00, 14.25]
let pricesWithTax = prices.map{ $0 * 1.16 }
print(pricesWithTax)
print(prices)


// Example #2
let numbers = [1,2,3]
let doubledNumbers = numbers.map{ $0 * 2 }
print(numbers)
print(doubledNumbers)

// Example #3
let desserts = ["Cake", "Ice Cream", "Pie"]
let emojiMenu = desserts.map{ "🍰 \($0)"}
print(desserts)
print(emojiMenu)

/*
 Reduce
 
 Syntax
 let result = collection.reduce(initialValue) { partialResult, element in
 }
 
 initialValue: the starting point (often 0, "", [])
 partialResult: the current accumulated value
 element: the next item from the array
 */

let coursePrices = [8.50, 12.00, 14.25]
let total = coursePrices.reduce(0) { sum, price in
    sum + price
}
print(total)

let total2 = coursePrices.reduce(0) { $0 + $1}
print(total2)

let total3 = coursePrices.reduce(0, +)
print(total3)

let prices2 = [8.99, 12.00, 14.25, 6.75]
let premiumCount = prices2.reduce(0) { count, price in
    price > 10 ? count + 1 : count
}
print("Premium items: \(premiumCount)")

    

