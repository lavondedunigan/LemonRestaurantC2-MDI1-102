import UIKit

/**
 Joined
 Used tocombine all elements of a string array into a single string.
 Placing a custom separator between each element.
 */


let  students = ["Ed", "Vonda", "Eduardo", "Tom", "Alexis", "Andrew"]
print(students)

print(students.joined(separator: "-"))
print(students.joined(separator: " || "))
print(students.joined(separator: ","))
print(students.joined(separator: " "))
