import UIKit

// Repeating FUNCTIONS. path 2. 19.02.25

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
    if age < 18 {
        return "Привет, \(name)! Ты еще молод!"
    } else if age >= 18 && age <= 65 {
        return "Здраствуйте, \(name)! Рады вас видеть!"
    } else {
        return "Привествуем вас, \(name)! Вы уважаемый человек!"
    }
}
// пример вызова
print(greetPerson(name: "Bob", age: 12)) // Привет, Bob! Ты еще молод!
print(greetPerson(name: "Ann", age: 55)) // Здраствуйте, Ann! Рады вас видеть!
print(greetPerson(name: "Kate", age: 72)) // Привествуем вас, Kate! Вы уважаемый человек!

/* ЗАДАЧА: напиши функцию, которая принимает масив целых чисел в качестве параметра и возвращает наибольшее число в этом массиве. Если массив пуст, функция вернет 'nil'. */

// вариант 1: привязка через 'if let'
func findMax(numbersInt: [Int]) -> Int? {
    if numbersInt.isEmpty {
        return nil
    } else {
       var maxNumber = numbersInt[0]
        for number in numbersInt {
            if number > maxNumber {
                maxNumber = number
            }
        }
        return maxNumber
    }
}
// пример использования
let numbersInt = [2, 4, 6, -8, -10, 12]
let maximum: Int? = findMax(numbersInt: numbersInt)
let maxInEmptyArray: Int? = findMax(numbersInt: [])
// вызов результатов
if let max = maximum {
    print(" Максимальное число: \(max)")
} else {
    print("Массив пуст")
}
// вариант 2: испльзуй метод 'max'
func addMax(nums: [Double]) -> Double? {
    return nums.max() // возвращает max число или nil, если массив ПУСТ
}
// пример использования
let maxDouble = addMax(nums: [3.14, 2.256, 1.123, 7.777])
let maxiInEmptyArray = addMax(nums: [])

// вывод результатов
if let max = maxDouble {
    print(" Максимальное число: \(String(describing: maxDouble))")
} else {
    print("Массив пуст")
}
if let maxEmpty = maxiInEmptyArray {
    print(" Максимальное число в пустом массиве: \(maxEmpty)")
} else {
    print("Пустой массив НЕ имеет максимального числа.")
}
/* ЗАДАЧА: напиши функцию, которая принимает МАССИВ строк('String') и префикс ('String') в качестве параметров. Функция д.б. вернуть НОВЫЙ МАССИВ, содержащий только те строки из исходного массива, которые начинаются с указанного префикса. */

func filterStrings(strings: [String], prefix: String)  -> [String] {
    return strings.filter { $0.hasPrefix(prefix) }
    }
// пример использования
let strings = ["apple", "banana", "lemon", "apricot", "kivi", "avocado", "ananas", "lime"]
let prefix = "ap"
let filter = filterStrings(strings: strings, prefix: prefix)
print(filter)
/* COMMENTS:
1. используй метод '.filter'
    - он проходит по КАЖДОМУ элементу и оставляет только те элементы, которые удовлетворяют условию.
    - условие проверяет: начинается ли КАЖДАЯ строка с указанного префикса с помощью метода '.hasPrefix'. */

/* ЗАДАЧА: напиши функцию, которая принимает МАССИВ целых чисел и ПОРОГОВОЕ значение('Int') в качестве параметра. Функция д.б. вернуть НОВЫЙ МАССИВ, который содержит только ТЕ числа из исходного массива, которые больше указанного порогового значения. */

// функция для фильтрации МАССИВА чисел по пороговому значению
func filterNums(nums: [Int], threshold: Int) -> [Int] {
    return nums.filter { $0 > threshold } // используй метод 'filter' для получения НОВОГО массива
}
// пример использования
let nums = [1, 2, 3, 4, 5, 6, 7]
let threshold = 3
let filtered = filterNums(nums: nums, threshold: threshold)
print(filtered)
/* COMMENTS:
1. метод 'filter' проходит по КАЖДОМУ элементу массива 'nums' и применяет УСЛОВИЕ '$0 > threshold'
2. если это УСЛОВИЕ истинно для элемента, он добавляет его в НОВЫЙ МАССИВ */

/* ЗАДАЧА: напиши функцию, которая принимает МАССИВ СТРОК и суффикс ('String') в качестве параметров. Функция д.б. вернуть НОВЫЙ МАССИВ, который содержит только ТЕ строки из исходного массива, которые ЗАКАНЧИВАЮТСЯ на указанный суффикс. */
func filterStringsBySuffix(strings: [String], suffix: String) -> [String] {
    return strings.filter { $0.hasSuffix(suffix) }
}
// пример вызова
let stringsSuffix = ["go", "programming", "walk", "running", "swimming", "stop"]
let suff = "ing"
let filteredSuffix = filterStringsBySuffix(strings: stringsSuffix, suffix: suff)
print(filteredSuffix)
/* COMMENTS:
 1. метод 'filter'
    - проходит по КАЖДОМУ элементу массива 'nums' и применяет УСЛОВИЕ '$0.hasSuffix(suffix)'
    - если условие TRUE для элемента, он добавляется в НОВЫЙ МАССИВ
 2. пример использования:
    - создай массив строк 'stringsSuffix' и задаем суффикс 'suff'
    - вызываем функцию и выводим ОТФИЛЬТРОВАННЫЙ массив */

/* ЗАДАЧА: напиши функцию, которая принимает массив целых чисел и возвращает НОВЫЙ массив строк, где КАЖДОЕ число преобразовано в строку. */

// вариант 1 используй цикл 'for-in'
func transformNumsToStrings(numbers: [Int]) -> [String] {
    var strings: [String] = [] // создаем ПУСТОЙ массив строк
    for num in numbers {
        let stringValue = String(num) // преобразуем ЧИСЛО в СТРОКУ
        strings.append(stringValue)
    }
    return strings
}
// пример вызова
let numsInt = [12, 21, 24, 6, 1, 2]
let strs = transformNumsToStrings(numbers: numsInt)
print(strs)

// вариант 2: КРАТКО  -> используй метод 'map'
func transformingNumsToStrings(numbers: [Int]) -> [String] {
    return numbers.map { String($0) } //преобразуй КАЖДЫЙ элемент массива Int -> в строку
}
// пример вызова
let numsInteger = [3, 9, 27, 6, 12, 21]
let stris = transformNumsToStrings(numbers: numsInteger)
print(stris)
/* COMMENTS:
 1. цикл 'for-in' - перебери КАЖДЫЙ элемент массива и ВРУЧНУЮ добавь преобразованное значение в НОВЫЙ МАССИВ
 2. метод 'map' - более ФУНКЦиональный подход: авто-ки создает НОВЫЙ массив с преобразоваными элементами */

/* ЗАДАЧА: напиши функцию, которая принимает масссив строк и возвращает массив целых чисел. Если строка НЕ м.б. прелбразована в число, функция д.б. вернуть 'nil' для этого элемента. */
 
func transformStringToInts(strings: [String]) -> [Int?] {
    return strings.map { str in
        if let intValue = Int(str) {
            return intValue // возвращаем целое число, если преобразование удалось
        } else {
            return nil // возвращаем nil, если преобразование НЕ удалось
        }
    }
}
// пример использования
let strsInt = ["21", "123", "1234", "12345", "88888"]
var numbs = transformStringToInts(strings: strsInt)
// вывод результатов
if !numbs.isEmpty {
    print("Массив целых чисел: \(numbs)")
} else {
    print("Ошибка! НЕ удалось преобразовать массив строк в массив целых чисел")
}

/* ЗАДАЧА: напиши функцию, которая принимает МАССИВ строк и строку. Функция д.б. вернуть количество вхождений указанной строки в массиве. */
func countOccurrences(strings: [String], targetString: String) -> Int {
    return strings.filter { $0 == targetString }.count
}
let names = ["Alice", "Bob", "Vincent", "Bob", "Alice", "Bob"]
let nameCount = countOccurrences(strings: names, targetString: "Bob")
print(nameCount)
/* COMMENTS:
1. условия фильтрации:
    - сравни каждую строку с ЦЕЛЕВОЙ строкой 'targetString' с помощью оператора ==
    - функция 'filter' оставляет в массиве только ТЕ строки, которые совпадают с ЦЕЛЕВОЙ строкой
2. возвращаемый тип:
    - функция возвращает Int т.к. кол-во вхождений - ВСЕГДА будет ЦЕЛЫМ числом
 3. термин 'targetString' - "целевая строка"не спец. термин (м.б. 'searchString') для ЯСНОСТИ понимания ПАРАМЕТРА */

// ЗАДАЧА: напиши функцию, которая принимает массив строк и min длину и возвращает НОВЫЙ МАССИВ, содержащий ТОЛЬКО строки, ДЛИНА которых > или == указанной min длине
func filterStringByLength(strings: [String], minLength: Int) -> [String] {
    
    return strings.filter { $0.count >= minLength }
}
// пример вызова
let words = ["apple", "kiwi", "banana", "grape", "orange"]
let longWords = filterStringByLength(strings: words, minLength: 5)
print(longWords)

// ЗАДАЧА: напиши функцию, которая принимает массив строк и разделитель ('String') и возвращает строку, содержащие ВСЕ элементы массива, ОБЪЕДИНЕННЫЕ с помощью указанного разделителя.

func joinArrayElements(elements: [String], separator: String) -> String {
    return elements.joined(separator: separator) // используй метод 'joined' для объединения элементов
}
let fruits = ["apple", "banana", "orange", "kiwi"]
let joinedString = joinArrayElements(elements: fruits, separator: ", ")
print(joinedString) // apple, banana, orange, kiwi

// ЗАДАЧА: простая функция без параметров
func greetingchildren() {
    print("Good morning, children!")
}

/* ЗАДАЧА: создай функцию с ДВУМЯ входящими параметрами - имя и возраст. Функция д.б. вывести сообщение "меня зовут 'name', мне 'age' лет." */
func greetingChild(name: String, age: Int) -> String {
    let str = "My name is \(name), I am \(age) yers old."
    return str
}
greetingChild(name: "Bob", age: 12)

/* ЗАДАЧА: напиши функцию, кототрая принимает радиус круга и возвращает его площадь -  S = pi * radius в квадрате */
let pi = 3.14159
func calculateAreaCircle(radius: Double) -> Double {
    let area = pi * (radius * radius)
    return area
}
let radius = 12 // объявляем константу радиус
let area = calculateAreaCircle(radius: 12)
print("Площадь круга с радиусом \(radius) равна \(calculateAreaCircle(radius: 12))")

/* ЗАДАЧА: напиши функцию, которая принимает два параметра ('length' - длина, 'width' - ширина) типа Double. Функция д.б. вернуть площадь прямоугольника: area = length * width. Однако если один из параметров меньше или равен нулю, функция должна возвращать nil и выводить сообщение об ошибке. */

func calcAreaRectangle(lenght: Double, width: Double) -> Double? {
    let areaRectangle = lenght * width
    if lenght != 0 && width != 0.0 {
        return areaRectangle
    } else {
        print("Error!")
        return nil
    }
}
calcAreaRectangle(lenght: 12.12, width: 12.12)
calcAreaRectangle(lenght: 0, width: 12.12)
// 25 functions!
