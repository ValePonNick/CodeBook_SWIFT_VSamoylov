import UIKit

// Создай по 20 видов коллекций + кортежей

// REPEATING SINTAX: Arrays

let arrayNames = ["Bob", "Joe", "Christie"]
arrayNames[0] // доступ к элементу по ключу

var arrayInt = [2025, 12, 21, 7]
arrayInt.append(888)

var arrayDouble = [12.12, 21.21, 3.14159, 888.8]
arrayDouble.first
arrayDouble.firstIndex(of: 3.14159)

var arrayStudents = ["Andy", "Arny", "Ashli", "Addy"]
arrayStudents[0]

var arrayBool = [true, true,false, false, true, false]
arrayBool.append(true)
arrayBool.count

// REPEATING SINTAX: Dictionaries
let dictNames = ["Bob": 12, "Joe": 21]
dictNames.index(forKey:"Joe")

var dictStudents = ["Roy": "ID = 112", "Joy": "ID = 112", "Key": "ID = 113"]
dictStudents.removeValue(forKey: "Roy")
print(dictStudents)

                    
// REPEATING SINTAX: Sets

let setNames: Set<Int> = [12, 21, 32]

// REPEATING SINTAX: Tuples

let tupleNames = ("Joe", 112, "ID", "true", 3.14)
tupleNames.1

let tupleClildren = ("Bob", 12.12, false, 5, "school # 12")
tupleClildren.self

let tupleDates = (2025, 21.12, "дюжина", 21, true)
tupleDates.4
