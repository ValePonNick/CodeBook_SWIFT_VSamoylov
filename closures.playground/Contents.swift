import UIKit

// CLOSURES. Замыкания

// 1. Напиши: что такое замыкания и для чего они нужны?

/* Closures - это 'замыкания' - небольшие блоки кода, функции,  которые можно передавать и
 использовать в разных частях программы. Похожи на функции, но НЕ имеют имени. Замыкания могут захватывать значения/переменные из ОКРУЖАЮЩЕГО кода/внешней области видимости и использовать их ВНУТРИ себя.
 Замыкания НУЖНЫ для:
 1. передачи функциональности - передавать как аргумент функциям / возвращаемые значения или использовать в обработке событий
 2. создания гибких конструкций - более выразительный и гибкий код
 3. выполнения задач: асинхронные операции / настройка функций для разных задач */
// простой closure БЕЗ параметров:
let closureHello = { print("Hello, World!") }
closureHello()
// closure С параметрами:
let sumClosure: (Int, Int) -> Int = { x, y in return x + y }
let result = sumClosure(4, 6)
print(result)
// closure С захватом переменных из внешнего окружения
var externalVar = 12
let captureClosure = { print(externalVar) }
captureClosure()

// 2. Напиши 10 замыканий на примере сортировок массивов.
/* NB: в Swift замыкания широко используются для сортировки массивов - ??? -
т.к. позволяюи ГИБКО настраивать критерии сортировки */
// 2. 1 встроенный метод sort() ИЗМЕНЯЕТ исходный массив
var nums = [2, 4, 6, 8, 1, 3, 5, 7, 9, 12, 0, -12]
nums.sort { $0 > $1 }
print(nums)
nums.sort { $0 < $1 }
print(nums)
// 2.2 встроенный метод sort() ИЗМЕНЯЕТ исходный массив: сортирует по ДЛИНЕ строк
var nameDwarve = ["Oin", "Gloin", "Bifur", "Bofur", "Bambur", "Thorin", "Fili", "Kili"]
nameDwarve.sort { $0.count < $1.count }
print(nameDwarve)
nameDwarve.sort { $0.count > $1.count }
print(nameDwarve)

// 2.3 встроенный метод sorted() НЕ изменяя исходный массив, возвращает НОВЫЙ отсортированный массив
// - сортировка ЧИСЕЛ по убыванию:
var numbers = [1,12,33,4,55,16,7]
let sortedNumClosure = numbers.sorted { $0 > $1 }
 print(sortedNumClosure)
// - сортировка чисел по возрастанию:
let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)
// 2.4 сортировка СТРОК по алфавиту: по возрастанию ( от А до Я)
let namesDwarves = ["Oin", "Gloin", "Bifur", "Bofur", "Bambur", "Thorin", "Fili", "Kili"]
var sortedNamesDwarves = namesDwarves.sorted { $0 > $1 }
print(sortedNamesDwarves)
// сортировка строк по алфавиту: по убыванию ( от Я до А)
sortedNamesDwarves = namesDwarves.sorted { $0 < $1 }
print(sortedNamesDwarves)
// 2.5 сортировка ОБЪЕКТОВ по свойству:
// создала структуру с двумя параметрами: имя типа String и возраст типа Int
struct Person {
    let name: String
    let age: Int
}
// создала константу people и присвоила/инициализировала? ей значения: имя + возраст
// этот код изменил исходный массив и вывел отсортированные данные
let people = [
    Person(name: "Ann", age: 21),
    Person(name: "Benedict", age: 37),
    Person(name: "David", age: 12)
]
let sortedPeople = people.sorted { $0.age < $1.age }
for person in sortedPeople {
    print("имя: \(person.name), возраст: \(person.age)")
}
// 2.6 сортировка объектов по нескольким СВОЙСТВАМ:
struct Child {
    let name: String
    let age: Int
}
let children = [
    Child(name: "John", age: 3),
    Child(name: "Alice", age: 5),
    Child(name: "Bob", age: 7),
    Child(name: "Ron", age: 4)
]
let sortedChildren = children.sorted { (lhs, rhs) in
    if lhs.age == rhs.age {
        return lhs.name < rhs.name
    } else {
        return lhs.age < rhs.age
    }
}
// выведем результат
for child in sortedChildren {
    print("имя: \(child.name), возраст: \(child.age)")
}
/* вопрос: почему print() в двух случаях НЕ сработал,
 а с for-in все ОК? спросить у Арсентия */
// 2.7 
/* 3. Напиши функцию, которая принимает массив, проверяет: пустой/нет.
И если пуст - добавь значение и выведи на консоль */
func checkAndAdd(_ array: inout [String]) {
    if array.isEmpty {
        array.append("Добавим значение")
    }
}

/* пример использования свойства 'isEmpty' для проверки пуст ли массив? и
 метода '.append' - добавь значения, если массив пуст.
 NB: используй 'inout' для передачи масссива по ссылке - ??? - массивы в Swift передаются по ЗНАЧЕНИЮ! */

/* используй замыкание для реализации функции, кот. проверит пуст ли массив и добавит в него значение */
var checkAndAdd1: ((inout [String]) -> Void)? = { array in
    if array.isEmpty {
        array.append("Добавим еще одно значение")
    }
}
// пример использования
var text3: [String] = []
checkAndAdd1?(&text3)
print(text3)

// используй универсальный подход: функция работает с массивами любого типа
func checkAndAdd<T>(_ array: inout [T], value: T) {
    if array.isEmpty {
        array.append(value)
    }
}
// пример использования
var numbs: [Int] = []
checkAndAdd(&numbs, value: 12)
print(numbs)

var numbs2: [Int]  = [2, 4, 6, 8]
checkAndAdd(&numbs2, value: 12)
print(numbs2)

var strings: [String] = []
checkAndAdd(&strings, value: "Hi!")
print(strings)

/* 4. Напиши функцию - сайт с именем, фамилией, ником, e-mail, паролем
и выведи в консоль */
/*
 
 */
struct User {
    let name: String
    let sername: String
    var nick: Any
    let email: Any
    var password: Any
}
let users = [
    User(name: "Martin", sername: "Freeman", nick: "B1lbo", email: "mart1n@gmail.com", password: "B@gg1n$"),
    User(name: "Kate", sername: "Blanchett", nick: "Galadriel", email: "kate@gmail.com", password: "Galadr!el"),
    User(name: "Richard", sername: "Armitage", nick: "Thor1n", email: "richard@gmail.com", password: "Oakensh!eld")
]
for user in users {
    print("имя: \(user.name), фамлия: \(user.sername), ник: \(user.nick), почта: \(user.email), пароль: \(user.password)")
}
 
func printInfo(name: String, sername: String, nickname: String, email: String, password: String, formatter: (String, String, String, String, String) -> String) {
    let output = formatter(name, sername, nickname, email, password)
    print(output)
}
 /* вызов func: замыкание использовано для формирования строки вывода на основе переданных имени, ника и др. */
printInfo(name: "Martin", sername: "Freeman", nickname: "B1lbo", email: "mart1n@gmail.com", password:  "B@gg1n$") { name, sername, nickname, email, password in return "имя: \(name), фамлия: \(sername), ник: \(nickname), почта: \(email), пароль: \(password)"
}
// создай функцию, которая принимает замыкание в качестве ПАРАМЕРА
func performOperation(_ closure: (String, String) -> Void) {
    print("начало выполнения операции")
    closure("Ann", "ally")
    print(" окончание  выполнения операции")
}
// вызов функции с использованием замыкания
performOperation { name, nickname in
    print("имя: \(name), ник: \(nickname)")
}
/* функция 'performOperation' c англ. "выполни операцию" - как контейнер, который выполняет некоторый код
 замыкание - как малая функция, ее передаем в контейнер
 как работает?
 сначала выводим сообщение о начале операции - зате выполняется наша малая функция - после вывод сообщения об окончании операции.
 Где используется?
 - асинхронные операции - нужно выпонить код, когда задача уже завершена: напр. - загрузить данные из интернета
 - обработка ошибок: выполнить код, если что -то пошло НЕ так
 
 */
// это код со СТРУКТУРОЙ и ЗАМЫКАНИЕМ:

/* 5. Напиши функции, которые принимают в кач-ве аргументов массивы/словари
 и проверяют: пустые/нет. Если пустые - добавь значение, выведи на консоль */
