import UIKit

// ЗАДАЧА: создай из одних и тех же элементов массив, кортеж, словарь и множество с фруктами. Как можно преобразовать их друг в друга?

// ARRAY - массив

// это МАССИВ СТРОК => могут быть ДУБЛИкаты
let fruitsArray = ["apple", "banana","orange", "limon", "apple", "orange", "kivi", "kivi", "kivi", "kivi", "apple", "apple"]
fruitsArray.count // 12
print("Массив фруктов: \(fruitsArray)") // Массив фруктов: ["apple", "banana", "orange", "limon", "apple", "orange", "kivi", "kivi", "kivi", "kivi", "apple", "apple"]

// SET - множество

// множество строк с фруктми - только УНИКАЛЬНЫЕ элементы 'uniquie fruits' = fruitsSet
let fruitsSet: Set<String> = Set(fruitsArray) // ПРЕОБРАЗОВАНИЕ: из Array -> Set
fruitsSet.count // 5
print(" Множество фруктов: \(fruitsSet)") // ["apple", "limon", "kivi", "orange", "banana"]

// DICTIONARY - словарь

// Словарь, где ключ: название фрукта, значение: количество
var fruitsDictionary: [String: Int] = [:] // ИНИЦИАЛИЗАЦИЯ ПУСТОГО словаря
// заполняем СЛОВАРЬ, подсчитывая количество каждого фрукта в массиве
for fruit in fruitsArray {
    fruitsDictionary[fruit, default: 0]
    += 1
}
print("Словарь фруктов: \(fruitsDictionary)") // Словарь фруктов: ["apple": 4, "banana": 1, "limon": 1, "orange": 2, "kivi": 4]

// TUPLE - кортеж
// кортеж используй для ВРЕМЕННОГО хранения НЕбольшого количества СВЯЗАННЫХ значений (напр.: название + цена)
// КОРТЕЖ для ОДНОГО фрукта (название + цена)
let fruitsTuple: (name: String, price: Double) = ("apple", 220.55)
// МАССИВ КОРТЕЖЕЙ для РАЗНЫХ фрукта (название + цена)
let fruitsTuplesArray = [
    ("apple", 220.55),
    ("banana", 112.22),
    ("orange", 260.99),
    ("limon", 188.10),
    ("kivi", 314.50)
]
print("Массив кортежей: \(fruitsTuplesArray)") // Массив кортежей: [("apple", 220.55), ("banana", 112.22), ("orange", 260.99), ("limon", 188.1), ("kivi", 314.5)]

// ПРЕОБРАЗОВАНИЕ между ТИПАМИ:

// ARRAY -> SET : массив  - множество
let fruitSet: Set<String> = Set(fruitsArray)

// Set -> ARRAY
var fruitArray:[String] = Array(fruitSet) // порядок элементов НЕ гарантирован
print(fruitArray) // ["limon", "banana", "orange", "kivi", "apple"]
let sortedFruitArray = fruitArray.sorted() // отсортируй массив по алфавиту
print(sortedFruitArray) // ["apple", "banana", "kivi", "limon", "orange"]

// ARRAY -> DICTIONARY (подсчет элементов)
let fruitsDict: [String: Int] = ["apple": 12, "banana": 10, "kivi": 6, "limon": 2, "orange": 21]
let fruitsAtArray: [String] = Array(fruitsDictionary.keys) // МАССИВ КЛЮЧЕЙ
print(fruitsAtArray) // ["apple", "banana", "kivi", "limon", "orange"]

// DICTIONARY -> ARRAY (значения)

let quantitiesArray: [Int] = Array(fruitsDictionary.values) // массив значений
print(quantitiesArray) // [4, 4, 1, 1, 2]

// DICTIONARY -> ARRAY(TUPLES)
/* Словари НЕ имеют фиксированного порядка, поэтому для сортировки нужно сначала преобразовать их в МАССИВ, где ПОРЯДОК элементов имеет значение. Метод `map` ИДЕАЛЕН, т.к. позволяет преобразовать КАЖДЫЙ элемент словаря (пару ключ-значение) в КОРТЕЖ.
 - Сортировка массива кортежей: Метод `sorted(by:)` позволяет нам отсортировать массив на основе определенного критерия (по цене), поэтому используем замыкание `$0.price > $1.price`, чтобы сравнить цены двух кортежей. */

var fruitTuplesArray: [(fruit: String, quantity: Int)] = [] // создай ПУСТОЙ массив кортежей
for (fruit, quantity) in fruitsDictionary {
    fruitTuplesArray.append((fruit: fruit, quantity: quantity))
}
print(fruitTuplesArray) // [(fruit: "banana", quantity: 1), (fruit: "kivi", quantity: 4), (fruit: "apple", quantity: 4), (fruit: "limon", quantity: 1), (fruit: "orange", quantity: 2)]
 
 
// ARRAY -> TUPLE ограниченно
// напрямую возможно ЕСЛИ знаешь РАЗМЕР массива во время КОМПИЛЯЦИИ. Иначе лучше использовать МАССИВ!
if fruitsArray.count == 12 {
    let fruitTuple = (fruitsArray[0] , fruitsArray[1], fruitsArray[2], fruitsArray[3], fruitsArray[4], fruitsArray[5], fruitsArray[6],
                      fruitsArray[7] , fruitsArray[8], fruitsArray[9], fruitsArray[10], fruitsArray[11])
    print(fruitTuple) // ("apple", "banana", "orange", "limon", "apple", "orange", "kivi", "kivi", "kivi", "kivi", "apple", "apple")
}

// COMMENTS: Основные способы создания и преобразования коллекций в SWIFT.
/*
 Set - множество хранит только УНИКАЛЬНЫЕ знаения, порядок НЕ гарантирован
 Array - массив хранит элементв в ОПРЕДЕЛЕННОМ порядке + м.б. ДУБЛИкаты
 Dictionary - словарь хранит пары "key-value' + ключи д.б. УНИКАЛЬНЫ
 Tuple - кортеж хранит УПОРЯДОЧЕННЫЙ набор значений РАЗНЫХ ТИПОВ, его РАЗМЕР фиксирован во время компиляции
 При преобразовании Set -> Array ПОРЯДОК элементов может ИЗМЕНИТСЯ.
 Если нужен отсортированный МАССИВ, используй '.sorted()' */
