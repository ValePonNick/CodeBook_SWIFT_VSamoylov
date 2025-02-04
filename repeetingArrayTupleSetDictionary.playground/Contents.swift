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

/* Tuple -  КОРТЕЖ - это объект, ХРАНИТ значения РАЗЛИЧНЫХ типов данных в ОДНОМ оставном значении => строго упорядоченом плорядке => можно обратиться по индексу
 идеален для возврата нескольких значений из ФУНКЦИИ и м.б. объявлены как именованные, так и безымянные. */

let workingDogs = ("Akita", 12, "Alaskan malamute", 21,  "Boxer", 3, "Siberian husky", 7, "Doberman pinscher", 3, true, false) // неименованный кортеж
workingDogs.1 // доступ к элементу по индексу
let numbers = (1, 2, 3.14, true, 2.212, 12, "Akita")
let tupleNames = (name: "Ann", age: 12, bool: true)
tupleNames.name
tupleNames.bool

var user = (name: "Ann", age: 12, school: "IT", class: "A")
print(user)
print("мое имя \(user.0)")
print("я учусь в школе \(user.2)")

let myProgrammStatus = (700, "In work", true)
print(type(of: user))
let age: (Int, Double, Int, String) = (12, 21.21, 7, "six years") // кортеж с ЯВНО заданным типом
print(age.3) // индексы в кортежах МОЖНО задействовать ВСЕГДА
user = (name: "Fert", age: 16, school: "IT", class: "C")
print(user.2)

var(person, name) = ("Troll", "Tom") // объявляем переменные и иницилизируем их значения
print("я - \(person), мое имя \(name)")

var statusTuple = (statusCode: 1200, statusText: "In work", statusConnect: true)
// выводим инфу с использованием ИНДЕКСОВ
print("Код ответа - \(statusTuple.statusCode)")
print("Текст ответа - \(statusTuple.1)")
print("Текст ответа - \(statusTuple.2)")
statusTuple.2 = false
statusTuple
print(statusTuple)
(1, "alpha") < (2, "beta") // СРАВНЕНИЕ кортежей
(5, "alpha") < (3, "gamma")
(3.14, "pi") == (3.14, "pi") // элементы идентичны

let statusPerson = ("Ann", 12, true, "IT")
let statusGirl = (name: "Ann", age: 12, work: true, Profession: "IT")
var(character, names, positive, category) = ("Troll", "Bert", false, "antihero")
character.count
category.count
names = "Bill"
print(character, names)
print(positive)
var coordinateSity = (latitude: "56.0043", longitude: "92'52'17")
var coordElite = (latitude: "56.085380", longitude: "92.573007")
(latitude: "56.0043", longitude: "92'52'17") < (latitude: "56.085380", longitude: "92.573007")
let coordNorthPole = ("plus 90 degrees")
let coordSouthhPole = ("minus 90 degrees")
coordNorthPole > coordSouthhPole
var kapeOfGoodHope = ("34.21'33 южной широты", "18.28'21 восточной долготы")
kapeOfGoodHope.0
kapeOfGoodHope.1
let kapeOfGoodHopeCoord = (geographicalName: "Мыс Доброй Надежды", southLatitude: -34.3568, eastLongitude: 18.4633)
print(kapeOfGoodHopeCoord)
// доступ к значениям кортежа
print("Координаты \(kapeOfGoodHopeCoord.geographicalName): Южная широта: \(kapeOfGoodHopeCoord.southLatitude), Восточная долгота: \(kapeOfGoodHopeCoord.eastLongitude)") // Результат: 21 кортеж
