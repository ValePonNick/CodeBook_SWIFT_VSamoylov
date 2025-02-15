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

var dictIT = ["John": "IT", "Sem": "History", "Andy": "IT", "Tom": "IT"]
dictIT.removeValue(forKey: "John")
dictIT.index(forKey: "Sem")
print(dictIT)

var dictNumbers = [1: 12.12, 2: 14.14, 3: 16.16, 4: 18.18]
dictNumbers.values
dictNumbers.keys

var dictDouble = ["one": 123.123, "two": 124.124, "three": 125.125]
dictDouble.count

// REPEATING SINTAX: Sets

let setNames: Set<Int> = [12, 21, 32]

let setNums: Set<String> = ["one", "one","one", "one", "two", "two", "two", "three"]
print(setNums) // ["one", "two", "three"]

let setString: Set<String> = ["Tom", "Ann", "Sara", "Bob"]
setString.count

let setInts: Set<Int> = [5, 6, 7, 1, 2, 3, 4, 5, 6, 7]
type(of: setInts)
setInts.sorted() // [1, 2, 3, 4, 5, 6, 7]

let setBool: Set<Bool> = [true, false, true, false]
print(setBool.count) // 2

// REPEATING SINTAX: Tuples

let tupleNames = ("Joe", 112, "ID", "true", 3.14)
tupleNames.1

let tupleClildren = ("Bob", 12.12, false, 5, "school # 12")
tupleClildren.self

let tupleDates = (2025, 21.12, "дюжина", 21, true)
tupleDates.4

let tupleStudents = ("Sem", 21, "ID", true, "IT")
tupleStudents.4 // "IT"

