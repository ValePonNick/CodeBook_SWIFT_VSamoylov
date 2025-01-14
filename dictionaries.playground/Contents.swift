import UIKit

// 4. Dictionaries

/* 1. Создай 10 разных словарей с разными типами данных. Один -> д.содержать ВСЕ месяцы года на русском, а второй - на английском. */

// 1.1 создание - с помощью ЛИТЕРАЛА словаря, возвращает словарь  let dictionary = [kay: vaue] с хэшируемыми типами данных [String: String]
let dictionaryCharacters = ["one": "goblin", "two": "hobbit", "three": "elf", "four": "wizard", "five": "dwarve"]
print(dictionaryCharacters)

// 1.2 создание - с помощью ЛИТЕРАЛА словаря, возвращает словарь  let dictionary = [kay: vaue] с хэшируемыми типами данных [Int: String]
let dictIntAndString = [1: "Hobbit", 2: "Gorlum", 3: "Thorin", 4: "Legolas"]
print(dictIntAndString)

let dictIntAndString2 = [1: "Hobbit", 2: "Gorlum", 3: "Thorin", 4: "Legolas"]
print(dictIntAndString2)


/* 1.3 создание словаря через функцию Dictionary(dictionaryLiteral:), которая принимает СПИСОК КОРТЕЖЕЙ, каждый кортеж определяет пару "kay: vaue" */

let dictNames = Dictionary(dictionaryLiteral: ("Rivendell", 100), ("Hobbitone", 200), ("Mountains of Mirkwood", 300))
print(dictNames)

// 1.4 создание словаря с помощью Dictionary(uniqueKeysWithValues:) - на основе коллекции однотипных КОРТЕЖЕЙ
// базовая коллекция КОРТЕЖЕЙ (пар ЗНАЧЕНИЙ)
let baseCollection = [("T", 1), ("O", 2), ("L", 3), ("K", 4), ("I", 5), ("E", 6), ("N", 7)]
// 1.5 создание СЛОВАРЯ на основе базовой колекции
let dictTolkien = Dictionary(uniqueKeysWithValues: baseCollection)
print(dictTolkien)
// 1.5.1 пример: с помощью функции zip(_:_:) можно одну по=>ть пар "ключ-значение" передать в функцию Dictionary(uniqueKeysWithValues:)
// массив волшебников
let wizardNames = ["Gandalth", "Saruman", "Radagast"]
//массив цветов волшебников
let wizardColors = ["Gray", "White", "Broun"]
//инициализация словаря из массивов, содержащих "пары-значения"
let wizardNamesAndColors = Dictionary(uniqueKeysWithValues: zip(wizardNames, wizardColors))
print(wizardNamesAndColors)

// 1.6 создание ПУСТОГО словаря
let dictIsEmpty = [Int: String]()

// 1.7 словарь с НАЧАЛЬНЫМИ ЗНАЧЕНИЯМИ
let fruitPrices: [String: Double] = ["Apple": 178.5, "Grape": 412.6, "Pear": 251.9, "Persimmon": 341.2]

// 1.8 авто определение типов
var scores = ["Pin": 42, "Sam": 69, "Merry": 41, "Frodo": 88]
// 1.9 словарь с типом данных [Int: Double]
var dictNumbers: [Int: Double] = [12: 3.14, 21: 7.77, 36: 3.14]

// 1.10 ВСЕ месяцы года на русском / английском
let allMonthsInEnglish = ["January": 1, "February": 2, "March": 3, "April": 4, "May": 5, "June": 6, "July": 7,
                          "August": 8, "September": 9, "October": 10, "November": 11, "Desember": 12]
let allMonthsInRussian = ["Январь": 1, "Февраль": 2, "Март": 3, "Апрель": 4, "Май": 5, "Июнь": 6, "Июль": 7,
                          "Август": 8, "Сентябрь": 9, "Октябрь": 10, "Ноябрь": 11, "Декабрь": 12]

// 2. собери все КЛЮЧИ / ЗНАЧЕНИЯ каждого словаря и распечатай в консоль
// 2.1 все ключи / значения словаря dictionaryCharacters
let keysDictionaryCharacters  = dictionaryCharacters.keys
type(of: keysDictionaryCharacters)
print(keysDictionaryCharacters)
let valuesDictionaryCharacters = dictionaryCharacters.values
type(of: valuesDictionaryCharacters)
print(valuesDictionaryCharacters)
                
// 2.2 все ключи / значения словаря dictIntAndString
let keysDictIntAndString  = dictIntAndString.keys
type(of: keysDictIntAndString)
print(keysDictIntAndString)
let valuesDictIntAndString = dictIntAndString.values
type(of: valuesDictIntAndString)
print(valuesDictIntAndString)

// 2.3 все ключи / значения словаря Dictionary(dictionaryLiteral:)
print(dictNames.keys)
print(dictNames.values)

// 2.4 все ключи / значения словаря baseCollection
type(of: baseCollection)

// 2.6 все ключи / значения словаря dictIsEmpty
let keysDictIsEmpty  = dictIsEmpty.keys
type(of: keysDictIsEmpty)
print(keysDictIsEmpty)
let valuesDictIsEmpty = dictIsEmpty.values
type(of: valuesDictIsEmpty)
print(valuesDictIsEmpty)

// 2.7 все ключи / значения словаря fruitPrices
let keysFruitPrices  = fruitPrices.keys
type(of: keysFruitPrices)
print(keysFruitPrices)
let valuesFruitPrices = fruitPrices.values
type(of: valuesFruitPrices)
print(valuesFruitPrices)

// 2.8 все ключи / значения словаря scores
let keysScores  = scores.keys
type(of: keysScores)
print(keysScores)
let valuesScores = scores.values
type(of: valuesScores)
print(valuesScores)

// 2.9 все ключи / значения словаря dictNumbers
let keysDictNumbers = dictNumbers.keys
type(of: keysDictNumbers)
print(keysDictNumbers)
let valuesDictNumbers = dictNumbers.values
type(of: valuesDictNumbers)
print(valuesDictNumbers)

// 2.10 все ключи / значения словаря allMonthsInEnglish / allMonthsInRussian
let keysAllMonthsInEnglish = allMonthsInEnglish.keys
type(of: keysAllMonthsInEnglish)
print(keysAllMonthsInEnglish)
let valuesAllMonthsInEnglish = allMonthsInEnglish.values
type(of: valuesAllMonthsInEnglish)
print(valuesAllMonthsInEnglish)

let keysAllMonthsInRussian = allMonthsInRussian.keys
type(of: keysAllMonthsInRussian)
print(keysAllMonthsInRussian)
let valuesAllMonthsInRussian = allMonthsInRussian.values
type(of: valuesAllMonthsInRussian)
print(valuesAllMonthsInRussian)

// 3. создай ПУСТОЙ словарь и через условный оператор if проверь: пуст он / нет? Если пуст -> добавь в него пару значений
var dictEmptyOrNot: [String: Int] = [:]
if dictEmptyOrNot.count != 0 {
    print("Dictionary is not emoty")
} else {
    dictEmptyOrNot = ["One": 1, "Two": 2]
    print(dictEmptyOrNot)
}
// 4. создай словарь: ключ - "иномарка", значение - "название машины"
var dictAuto = ["Иномарка": "Toyota"]
// получаем значение элемента
var autoName = dictAuto["Иномарка"]
// добавь значение по ключу - "отечественная"
dictAuto["Отечественная"] =  "Жигули"
print(dictAuto)
// для получения ЗНАЧЕНИЯ по КЛЮЧУ
if let value = dictAuto["Иномарка"] {
    print(value)
}
// или так: ВСЕ ЗНАЧЕНИЯ словаря dictAuto
let values = dictAuto.values
print(values)

// удали из словаря иномарку ПО КЛЮЧУ (через nil / removeValue()
dictAuto["Иномарка"] = nil
print(dictAuto)
dictAuto.removeValue(forKey: "Иномарка")
print(dictAuto)
