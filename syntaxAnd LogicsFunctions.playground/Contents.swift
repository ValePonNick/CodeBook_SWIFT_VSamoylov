import UIKit

// FUNCTIONS in Swift: SYNTAX and LOGICS
/*
 Функции в Swift - самостоятельные блоки кода, которые выполняют определенные задачи и помогают организовать код, делая его более читаемым и удобным для ПОВТОРНОГО использования.
// Объявление функции

func  имя_функции( параметры ) -> возвращаемый_тип {
    // Тело функции
} */
 
func greet() -> String {
    return "Hello, World!"
}
// Параметры функции
func greet(name: String) -> String {
    return "Hello, \(name)!"
}
let greeting = greet(name: "Alice")
print(greeting) // выодит: Hello, Alice!

// Возвращаемые значения
func add(a: Double, b: Double) -> Double {
    return a + b
}
let summa = add(a: 3.14, b: 3.14)
print(summa)
// функция БЕЗ параметров и возвращаемых ЗНАЧЕНИЙ
func sayHello() {
    print("Hello, Bilbo Baggins!")
}
sayHello()
// Значения по умолчанию для параметров
func greetings(name: String = "Hobbit") -> String {
    return "Hello, \(name)"
}
print(greetings())
print(greetings(name: "Gandalth"))
// Вложенные функции
func outerFunction() {
    func innerFunction() {
        print("This is the inner function.")
    }
    innerFunction()
}
outerFunction() // выводит: This is the inner function.

/* Замыкания - Closures
 - это блоки кода, которые могут захватывать и СОХРАНЯТЬ ссылки на переменные/константы из окружающего контекста. Замыкания могут использоваться как ПАРАМЕТРЫ функций. */
let closure = { (a: Int, b: Int) -> Int in
    return a + b
}
print(closure(12, 21))
// Использование ЗАМЫКАНИЙ как ПАРАМЕТРОВ
func addNumbers(_ f: Int, _ g: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(f,g)
}
//используй ЗАМЫКАНИЕ для умножения
let multiplicationResult = addNumbers(7,8) { $0 * $1 }
print(multiplicationResult)

var person: [String] = ["Ann", "Bob", "Sam"]
person.append("HI")

var persons: [String: Int] = [
    "Add": 12,
    "Adudi": 21
]
var coord: (x: Int, y: Int) = (0,0)
print(coord.0)
print(coord.1)
print(person[0])
print(persons["Add"])


