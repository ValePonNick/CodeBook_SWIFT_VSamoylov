import UIKit

// Syntax and Logics: Collection in SWIFT

// ARRAY: массив - это УПОРЯДОЧЕННАЯ коллекция значений, доступ к которым осуществляется по ИНДЕКСАМ
// Создание:
var myArray: [Int] = [] // пустой масив
var myArrays = [1,2,3,4,5] // ИНИЦИАЛИЗАЦИЯ с элементами
let firstElemebt = myArrays[0] //получение ПЕРВОГО элемента

// МЕТОДЫ
myArrays.append(7) // добавление элемента в КОНЕЦ массива
myArrays += [8,9] // добавление НЕСКОЛЬКИХ элементов
myArrays[0] = 12 // изменение элемента по ИНДЕКСУ
myArrays.removeFirst() // удаление ПЕРВОГО элемента
myArrays.removeLast() // удаление ПОСЛЕДНЕГО элемента
myArrays.removeAll() // удаление ВСЕХ элементов

// ИТЕРАЦИЯ по массивам
var fruits = ["Apple", "Kivi", "Cherry", "Banana", "Kivi"]
for fruit in fruits { // цикл 'for - in'
    print(fruit)
}
for(index, fruit) in fruits.enumerated() {
    print("\(index): \(fruit)") // метод .enumerated() позволяет получиь как ИНДЕКС, так и ЗНАЧЕНИЕ элемента
}
// МЕТОДЫ ВЫСШЕГО порядка

// СОРТИРОВКА массива
let sortedFruits = fruits.sorted() // возвращает НОВЫЙ отсортированный массив по УМОЛЧАНИЮ (по ВОЗРАСТАНИЮ)
let reverseSortedFruit = fruits.sorted(by: >)
// сортировка в ОБРАТНОМ порядке
let sortFruits: () = fruits.sort()
// изменяет порядок ИСХОДНОГО массива, НЕ СОЗДАВАЯ новый массив
let lengthFruits = fruits.filter { $0.count > 5 }
print(lengthFruits) // фильтрация массива по ДЛИНЕ СТРОК: д.б. сравнение длины строки с каким-то УСЛОВИЕМ, чтобы ЗАМЫКАНИЕ возвращало 'Bool"
let lengths = fruits.map { $0.count }
print(lengths) // применяет ЗАМЫКАНИЕ к КАЖДОМУ значению и возвращает НОВЫЙ МАССИВ -  ДЛИН ВСЕХ строк
fruits.forEach { print($0) } // выполняет действие для КАЖДОГО элемента масссива
let totalLength = fruits.reduce(0) { $0 + $1.count }
// суммирует ЭЛЕМЕНТЫ или выполняет ДРУГУЮ агрегацию
let longestFruit = fruits.max(by: { $0.count < $1.count })
print("Самое длинное название фрукта: \(String(describing: longestFruit))")
/* COMMENTS:
 код использует `String(describing:)` для безопасного вывода значения `longestFruit`, которое м.б. `nil`, если массив `fruits` пуст.
 Почему важно использовать `String(describing:)` и как работает этот метод?
1. Обработка опционалов:
     • вызываем `max(by:)`, он возвращает опциональное значение (`Optional<String>`), т.к. массив м.б. пустым => `max` вернет `nil`.
     • используй `String(describing:)` -> корректно обрабатай это значение, выводя “nil”, если значение отсутствует ( вместо ошибки )
2. Представление значений:
     • Метод `String(describing:)` создает строковое представление для любого типа, включая опционалы. Он возвращает строку
     • Напр., если `longestFruit` = `nil`, вывод будет “Самое длинное название фрукта: nil”. */

// ДОПОЛНИТЕЛЬНЫЕ методы
let sortedFruit = fruits.sorted() // возвращает отсортированный МАССИВ СТРОК по алфавиту
fruits.shuffle() // перемешивает элементы этого же МАССИВА

// Проверка наличия ЭЛЕМЕНТА
let containsLemon = fruits.contains("Lemon") // Проверка наличия ЭЛЕМЕНТА - вернет true / false
let repeatedArray = Array(repeating: "Swift", count: 5) // создание массива с повторяющимися значениями
 
/* 4. Элементы массива:
    - встроенные типы данных (String, Int, Bool, Double)
    - пользовательские СТРУКТУРЫ */
struct Person {
    let name: String
    let age: Int
}
let actors: [Person] = [
    Person(name: "Richard Geer", age: 78),
    Person(name: "John Travolta", age: 75)
]
let mixArray: [Any] = ["Hello", 3.14, true, 21] // - СМЕШАННЫЕ типы данных */
// 5. Классы - массивы могут хранить экземпляры классов
class Animal {
    var species: String
    init(species: String) {
        self.species = species
    }
}
let animals: [Animal] = [
    Animal(species: "Dog"),
    Animal(species: "Cat")
]
/* ЗАКЛЮЧЕНИЕ:
  1. Массивы ХРАНЯТ элементы ОДНОГО и того же ТИПА ДАННЫХ в памяти
  2. Элементы массива хранятся в ОПРЕДЕЛЕННОМ порядке => ИМЕННО это позволяет обращаться к ним по их индексам (0, 1, 2)
  3. Массивы могут ИЗМЕНЯТЬСЯ во время выполнения программы, что позволяют управлять ими (+, -, mix)
 Массивы в SWIFT - мощный инструмент для хранения УПОРЯДОЧЕННЫХ коллекций значений одного ТИПА (встроенные, пользовательские структуры и классы), именно это делает массивы УНИВЕРСАЛЬНЫМ для различных задач программирования */
