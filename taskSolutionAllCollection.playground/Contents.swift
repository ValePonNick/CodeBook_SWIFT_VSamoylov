import UIKit

// создание и преобразование коллекций в SWIFT

// ЗАДАЧА 1: создай массив 5 любимых книг типа String. Выведи на консоль ПЕРВЫЙ и ПОСЛЕДНИЙ элемент.
let myFavoriteBooks: [String] = ["The Shiniing", "The Hobbit", "The Lord of the Rings", "The White Company", "The Island of the Treasures"]
let firstBook = myFavoriteBooks[0] // получение ПЕРВОГО элемента
let lastBook = myFavoriteBooks[myFavoriteBooks.count - 1] // получение ПОСЛЕДНЕГО элемента
print("Первая книга: \(firstBook)")
print("Последняя книга: \(lastBook)")

// ЗАДАЧА 2: создай множество УНИКАЛЬНЫХ чисел от 1 до 10 типа Set<Int>. Добавь уже имеющееся число. Что произойдет?
let numbersSet: Set <Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let addnumberSet: Set <Int> = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // элемент НЕ добавлен - ИГНОР!!!
print(addnumberSet) // [1, 4, 8, 10, 5, 2, 3, 9, 7, 6]

/* ЗАДАЧА 3: Создай словарь (ключи: месяцы + значение: порядковый номер). Добавь данные о трех месяцах. Выведи в консоль порядковый номер ОДНОГО месяца, используя его название как ключ */
var mounths = ["April": 4, "May": 5, "Jine": 6, "January": 1]
let addMounths = ["February": 2, "March": 3, "July": 7]
var allMounths = mounths.merging(addMounths) { (current, new) in
    return new
}
print(allMounths)

// теперь выведем номер отдельного месяца, скажем июля
if let julyNumber = allMounths["July"] {
    print("The sequence number of July is: \(julyNumber)")
} else {
    print("July is not found in the dictionary")
}
print(allMounths)
/*
 COMMENTS:
 1. вызываем метод 'merge'для словаря 'months' - этот метод добавляет ВСЕ элементы из словаря 'addMonths' в словарь 'months'
 2. { (current, new) in return new } - это ЗАМЫКАНИЕ, которое определяет: что делать, если КЛЮЧ УЖЕ существует в ОБОИХ словарях. то -> значение из 'addMonths' будет перезвписано и новое значение (из 'addMonths') будет сохранено.
 3. if let julyNumber = allMounths"July" { ... } else { ... } - эта конструкция 'if let' испльзуется для БЕЗОПАСНОГО извлечения из словаря по ключу и возвращает ОПЦИОНАЛЬНОЕ значение 'Int?', т.к. КЛЮЧ может ОТСУТСТВОВАТЬ в словаре.
 4. 'if let julyNumber = allMounths"July"' - пытается ИЗВЛЕЧЬ значение, связанное с КЛЮЧОМ "July" и присвоить его константе julyNumber ТОЛЬКО ЕСЛИ ключ 'july' существует в словаре.
 5. Если ключ 'july' существует:
    - выполняется блок внутри кода 'if'
    - print() - выводится порядковый номаер в консоль
 6. Если ключ 'july' НЕ существует:
 - выполняется блок внутри кода 'else'
 - print() - выводится сообщение, что июль не найден
 7. выводит на консоль ВЕСЬ словарь 'months' - видим КАКИЕ элементы в нем содержатся ПОСЛЕ слияния
 */
// ЗАДАЧА 4: преобразование МАССИВА чисел в МНОЖЕСТВО(удали дубли). Выведи в консоль КОЛИЧЕСТВО элементов в получ. мн-ве.
var numbersArray = [1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 6, 7]
let numArr: Set<Int> = Set(numbersArray)
print("Количество элементов в множестве \(numArr.count)") // 7

// ЗАДАЧА 5: Фильтрация масссива чисел: создай новый массив чисел из исходного массива > 30. Выведи в консоль новый массив.
let numbersInt = [10, 20, 30, 40, 12, 22, 32, 42]
var newArray: [Int] = []
for number in numbersInt {
    if number > 30 {
        newArray.append(number)
    }
    print(newArray) // [40, 32, 42]
}

// ЗАДАЧА 6: Преобразование словаря в массив кортежей,
/* где каждый кортеж содержит имя + возраст. Выведи в консоль первый элемент полученного массива. */
let agesDict = ["Alice": 30, "Bob": 25, "Charlie": 35]
var agesTuplesArray: [(name: String, age: Int)] = [] // создай ПУСТОЙ массив кортежей
for (name, age) in agesDict {
    agesTuplesArray.append((name: name, age: age))
}
print((agesTuplesArray).first)
// альтернативный вариант: БОЛЕЕ КОМПАКТНО
let agesTupleArray = agesDict.map { (name: $0.key, age: $0.value) }
print(agesTupleArray.first)
/*
COMMENTS:
    - метод 'map' преобразует КАЖДЫЙ элемент словаря в КОРТЕЖ и создает НОВЫЙ массив из этих КОРТЕЖЕЙ.
    - '$0' = каждая пара ключ-значение в словаре
    - '$0.key' - это ключ (имя),
    - '$0.value' - это значение(возраст).  */

/*
 ЗАДАЧА 7: Преобразуй массив в словарь, где ключ - слово, значение - количество раз, которое это слово встречается в массиве. Выведите словарь в консоль. */
let words = ["tomato", "potato", "tomato", "carrot", "potato", "potato", "pepper", "cabbage", "onion", "cucumber", "onion", "onion"] // массив слов
var wordsDict: [String: Int] = [:] // создай пустой словарь
for word in words {
    wordsDict[word, default: 0]
    += 1
}
print("Словарь овощей: \(wordsDict)")
    
/*
 ЗАДАЧА 8: преобразуй словарь(ключ - название продукта, значение - цена) в МАССИВ КОРТЕЖЕЙ, где каждый кортеж = название продукта + его цена, отсортированный по УБЫВАНИЮ цены. Выведи массив кортежей в консоль. */
let productPrices: [String: Double] = ["Яблоко": 50.0, "Банан": 30.0, "Апельсин": 70.0, "Манго": 150.0]
var productTuplesArray =  productPrices.map { (product: $0.key, price: $0.value) }
let sortedProductTuplesArray = productTuplesArray.sorted { $0.price > $1.price }

print(sortedProductTuplesArray) // [(product: "Манго", price: 150.0), (product: "Апельсин", price: 70.0), (product: "Яблоко", price: 50.0), (product: "Банан", price: 30.0)]
// COMMENTS:
/*
 1. преобразуй СЛОВАРЬ в МАССИВ кортежей прежде, чем сортировать его: используй метод 'map' для этого:
    -  productPrices.map { (product: $0.key, price: $0.value) } - создает НОВЫЙ массив кортежей, где каждый кортеж содержит название продукта(key) + его цену(value) из словаря 'productPrices'
    - '$0' = каждая пара ключ-значение в словаре
    - $0.key - это ключ(название продукта)
    - $0.value - это значение(цена)
 2. Сортировка МАССИВА кортежей используй метод 'sorted(by:)' для сортировки МАССИВА 'productTuplesArray' по убыванию ЦЕНЫ:
    - productTuplesArray.sorted { $0.price > $1.price } создает НОВЫЙ ОТСОРТИРОВАННЫЙ массив кортежей
    - $0 и $1 - это два соседних КОРТЕЖА в массиве
    - '$0.price > $1.price' сравни цены двух кортежей. Если цена первого кортежа >, то он будет идти РАНЬШЕ в отсортированном массиве (сортировка по УБЫВАНИЮ)
 3. выведи отсортированный массив кортежей в консоль 'sortedProductTuplesArray' */
