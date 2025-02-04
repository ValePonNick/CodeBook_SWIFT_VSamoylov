import UIKit

// REPETING: Arrays, Puples, Sets, Dictionaries

// Array - это массив как упорядоченная коллекция значений одного Типа => есть доступ по ИНДЕКСУ
let emptyArray: [String] = [] // объяви пустой массив
var arrayBoys: [String] = ["Bob", "Dilan", "Stuart"] // массив строк, инициализированный значениями
arrayBoys.count // метод, определи количество элементов в массиве
arrayBoys.append("Fil") //метод, добавь элемент в конец массива
arrayBoys.first // метод, доступ к первому элементу
arrayBoys.description // ???
arrayBoys + emptyArray // сложи ДВА массива
arrayBoys.contains("Sem") // метод: содержит ли элемент -> Bool
arrayBoys.removeAll()

var arrayHoundDogs: [String] = ["Basset hound", "Beagle", "Dachshund", "Irish wolfhound"]
arrayHoundDogs.hashValue // ??
arrayHoundDogs.endIndex //
arrayHoundDogs.last // доступ к последнему элементу
arrayHoundDogs.insert("Cat", at: 0) // добавь элемент по индексу
arrayHoundDogs.remove(at: 0) // удаляемый элемент из массива
arrayHoundDogs.removeAll()

var arraySportingDogs: [String] = ["Vizslo", "English cocker spaniel", "Golden retriever", "Vizslo"]
arraySportingDogs.count
arraySportingDogs.append("Vizslo")
arrayHoundDogs.sorted()
arraySportingDogs.sort()
arraySportingDogs.sort(by: <)
arraySportingDogs.sorted()
arraySportingDogs.filter {$0.count < 5 } //фильтрация массива по длине строк
arraySportingDogs.map {$0.count } // возвращает НОВЫЙ массив - длина КАЖДОЙ строки
arraySportingDogs.reduce(0) { $0 + $1.count } // суммируем элементы

var nonSportingDogs: [String] = ["French bulldog", "Poodle", "Bulldog", "Dolmatian", "French bulldog", "Poodle"]
nonSportingDogs.count
nonSportingDogs.max(by: { $0.count < $1.count })
nonSportingDogs.min()
nonSportingDogs.shuffle()
let arrayBulldogs = Array(repeating: "Bulldog", count: 5)
let mixArray: [Any] = ["Bulldog", "Tobi", 5, true]

let herdingDogs: [String] = ["Sheltie", "Collie", "Corgi", "German shepherd", "Sheltie"]
let terrierDogs: [String] = ["Russel terier", "Bull terier", "Scottish terier", "Russel terier"]
let arrayIntNumbers: [Int] = [1,2,3,4,5,6,7]
let arrayDoubleNumbers: [Double] = [2.12, 3.14, 4.45]
let arrayBool: [Bool] = [true, true, false, false] // ИТОГО: 12 примеров

/* Tuple -  КОРТЕЖИ - ХРАНИТ несколько значений РАЗЛИЧНЫХ типов в ОДНОМ значении.
 идеален для возврата нескольких значений из ФУНКЦИИ и м.б. объявлены как именованные, так и безымянные. */

let workingDogs = ("Akita", 12, "Alaskan malamute", 21,  "Boxer", 3, "Siberian husky", 7, "Doberman pinscher", 3, true, false) // неименованный кортеж
workingDogs.1 // доступ к элементу по индексу
let numbers = (1, 2, 3.14, true, 2.212, 12, "Akita")
let tupleNames = (name: "Ann", age: 12, bool: true)
tupleNames.name
tupleNames.bool

let user = (name: "Ann", age: 12, school: "IT", class: "A")
