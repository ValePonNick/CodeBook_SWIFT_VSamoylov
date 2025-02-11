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
