import UIKit

// REPEATES METHODS: .map(), .filter(), .reduce()

/* Method '.map' -
 - используй для преобразования КАЖДОГО элемента -> в НОВЫЙ элемент.
 - он принимает замыкание (closure), которое применяется к КАЖДОМУ элементу коллекции и возвращает НОВУЮ КОЛЛЕКЦИЮ с измененными элементами.
 - этот метод НЕ изменяет исходную коллекцию, но возвращает НОВУЮ.
 SINTAX '.map' -
 1. принимает ЗАМЫКАНИЕ - функцию в качестве ПАРАМЕТРА, эта функция применяется к КАЖДОМУ элементу коллекции,
 2. возвращает НОВУЮ коллекцию, содержащую ПРЕОБРАЗОВАННЫЕ элементы,
 3. НЕ изменяет ИСХОДНУЮ коллекцию */

// примеры использования метода '.map'

// 1. умножение чисел на квадрат
let numbers = [1, 2, 3, 4, 5, 6, 7]
let result = numbers.map { $0 * $0 }
print(result) // [1, 4, 9, 16, 25, 36, 49]

// 2. преобразование строк в ВЕРХНИй регистр
let words = ["hello", "bilbo", "baggins", "hobbit"]
let uppercaseWords = words.map { $0.uppercased() }
print(uppercaseWords) // ["HELLO", "BILBO", "BAGGINS", "HOBBIT"]

// преобразование Optional значений
let possibleNumbers = ["1", "2", "3", "true", "4", "false"]
let mapped = possibleNumbers.map { Int($0) }
print(mapped) // [Optional(1), Optional(2), Optional(3), nil, Optional(4), nil]

// для удаления 'nil' из массива используй 'compactMap'
let compactMapped = possibleNumbers.compactMap { Int($0) }
print(compactMapped) // [1, 2, 3, 4]

// для преобразования каждого элемента в НОВЫЙ ТИП данных
let nums = [1, 2, 3, 4, 5]
let strings = nums.map {String($0) }
print(strings) // ["1", "2", "3", "4", "5"]

/*
 COMMENTS:
 сложность метода '.map' = 0(n) - где n - количество элементов в коллекции, т.к. он обрабатывает каждый элемент ОДИН РАЗ. */
