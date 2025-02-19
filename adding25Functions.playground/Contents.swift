import UIKit

// Repeating FUNCTIONS. path 2.

func greet() {
    print("Hello, World!")
}
greet()

func greeting(greeting: String) {
    print(greeting)
}
greeting(greeting: "HI,Valery!" )

let greets = ["Hi, John!", "Hello, Dolly!", "Good morning, mummy!"]
func greetings(greetings: [String]) {
    print(greetings)
}
greeting(greeting: greets[0])
greeting(greeting: greets[2])

let numbers = Array(0...100) // создание массива
func printRandomNumber(numbers: [Int]) -> Int? {
    var randomNunber = numbers.randomElement()
    return randomNunber
}
// пример использования
if let randomNum = printRandomNumber(numbers: numbers) {
    print("Случайное число: \(randomNum)") // чайное число: 25
          } else {
        print("Массив пуст")
}
// ЗАДАЧА: напиши функцию, которая выводит текущую дату и время.
func displayCurrentDate() {
    let currentDate = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
    let formattedDate = dateFormatter.string(from: currentDate)
    print("Текущая дата и время: \(formattedDate)")
} // текяущая дата и время: 19.02.2025, 10:21:15
displayCurrentDate()
/* COMMENTS:
1. Использование 'Date'
    - let currentDate = Date() создает объект текущей даты и времени
    - вызывается СИСТЕМНАЯ функция, она получает текущее время из ОС. Это требует взаимодействия с низкоуровневыми компонентами системы, чтобы получить ТОЧНОЕ текущее время.
2. Форматирование даты
    - dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss" устанавливает формат, в котором будет выводится дата и время
    - 'dateFormatter' - это мощный инструмент, преобразующий объект 'Date' в строку. Внутри него происходит:
    - разбор строки формата '.dateFormat'
    - извлечение этих компонентов согласно заданному шаблону
    - учет локальных настроек
3. dateFormatter.string(from: currentDate) - этот МЕТОД берет объект 'Date' и преобразует его в строку согласно указанному формату. Это вклбчает в себя ЛОГИКУ для правильного отображения чисел и пр.
4. вывод результата в консоль
5. ЗАКЛЮЧЕНИЕ: в этом коде основная ЛОГИКА и сложность СКРЫТЫ внутри системных функций и классов. Это типичный пример АБСТРАКЦИИ в IT - используй готовые инструменты для упрощения разработки. */

func sayHello() {
    print("Добро пожаловать в мир SWIFT!")
}
sayHello()

func displayCurrentDates() {
    let currentDate = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
    let formattedDate = dateFormatter.string(from: currentDate)
    print("Текущая дата - \(formattedDate)")
}
displayCurrentDates()

/* ЗАДАЧА: напиши функцию, которая принимает ДВА целых числа в качестве параметров и возвращает их произведение */
func multiplyNumbers(num1: Int, num2: Int) -> Int {
    let result = num1 * num2
    return result
}
let result = multiplyNumbers(num1: 6, num2: 7)

/* ЗАДАЧА: напиши функцию, которая принимает имя и возраст в качестве параметров. Функция должна возвращать приветсвие в зависимости от возраста:
1. если < 18 -> "Привет, имя! Ты еще молод!"
2. если от 18 до 65 включительно -> "Здраствуйте, имя! Рады вас видеть!"
 3. если > 65 -> "Привествуем вас, имя! Вы уважаемый человек!" */

// 8 функций за 1,5 часа

func greetPerson(name: String, age: Int) -> String {
    
    
}
// пример вызова
print(greetPerson(name: "Bob", age: 12)) // Привет, Bob! Ты еще молод!
print(greetPerson(name: "Ann", age: 55)) // Здраствуйте, Ann! Рады вас видеть!
print(greetPerson(name: "Kate", age: 72)) // Привествуем вас, Kate! Вы уважаемый человек!
