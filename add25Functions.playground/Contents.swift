import UIKit

// Add 25 FUNCTIONS: Sintax & Logics - «любой код мечтает стать функцией»

/*
 •    группирует код в единый контейнер = «черный ящик»,
 •    имеет собственное ИМЯ => м.б. многократно вызвана с возможностью передачи аргументов,
 •    создает отдельную ОБЛАСТЬ видимости внутри себя -> все созданные в ТЕЛЕ функции параметры НЕдоступны извне,
 •    м. принимать входные параметры,
 •    м. возвращать значение как результат исполнения сгруппированного в ней кода,
 •    имеет собственный функциональный ТИП данных,
 •    м.б. записана в параметр - let / var - и в таком виде передана. */

/* SINTAX:
ОБЪЯВЛЕНИЕ функции:
func имяФункции (входные_параметры)-> ТипВозвращаемогоЗначения {
// тело функции
} */

func greet() { // объявление функции БЕЗ параметров
    print("Hello, World!")
}
greet() // вызов функции
print("Outside function") // вывод текста ВНЕ функции

func greeting(name:String) { // функция с ПАРАМЕТРОМ, принимает имя и приветствует пользователя
    print("Hi, \(name)!")
}
greeting(name: "Valery")
greeting(name: "Vincent")
greeting(name: "Vladislav")

func addTwoInt(num1: Int, num2: Int) -> Int { // функция сложения двух чисел, возвращает результат
    let summa = num1 + num2
    return summa
}
let sumResult = addTwoInt(num1: 12, num2: 21) // вызов функции сложения
print("Сумма: \(sumResult)") // вывод результатов сложения

func calculateArea(width: Double, height: Double) -> Double {
   let area = width * height
    return area
}
let areaResult = calculateArea(width: 4, height: 6) // вызов функции расчета площади

// функция проверки числа на четность, возвращает true / false
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
print("Число 3 четное? \(isEven(number: 3))")
print("Число 3 четное? \(isEven(number: 6))")

// функцияпринмает ТРИ целых числа в качестве параметра и возвращает НАИБОЛЬШЕЕ из них
func maxOfThree(a: Int, b: Int, c: Int) -> Int {
    if a >= b && b >= c { // проверяем является ли а наибольшим?
        return a
    } else if b >= a && b >= c { // проверяем является ли b наибольшим?
        return b
    } else { // если ни a, ни b - не max, то с - наибольшее число
        return c
    }
}
// вызов функции с тремя числами
let maxNumber = maxOfThree(a: 12, b: 12, c: 21)
print(maxNumber) // вывод наибольшего числа

// короткое решение
func maxOnThree(a: Int, b: Int, c: Int) -> Int {
    return max(a, b, c) // используй встроенную функцию max
}
let maxOnNumber = maxOnThree(a: 12, b: 21, c: 11)
let maxOnNumber1 = maxOnThree(a: 12, b: 12, c: 12)

/* задача: переведи градусы Цельсия в Фаренгейта
функция принимает температуру по Цельсию, а возвращает эквивалент по Фаренгейту */

func celsiusToFahrenheit(celsius: Double) -> Double {
    let fahrenheit = (celsius * 9/5) + 32 // применяем формулу
    return fahrenheit
}
let tempCelsius: Double = 27.0
let tempFahrenheit = celsiusToFahrenheit(celsius: tempCelsius) // переводим в Фаренгейт
print("Температура \(tempCelsius)'С равна \(tempFahrenheit)'F")
let tempCelsius1: Double = 12.12
let tempFahrenheit1 = celsiusToFahrenheit(celsius: tempCelsius1) // переводим в Фаренгейт
print("Температура \(tempCelsius1)'С равна \(tempFahrenheit1)'F")

/* Задача: напиши функцию, которая принимает массив строк в качестве параметра и выводит каждый элемент массива на отдельной строке */
let arrayNames = ["Ann", "Bob", "Duglas", "James"]
func printArray(array: [String]) { // параметр д.б. МАССИВОМ строк
    for name in array {
        print(name)
    }
}
printArray(array: arrayNames)

// используй цикл 'forEach'
let arrayNames1 = ["Andy", "Bobby", "Dug", "John"]
func printArray1(array: [String]) { // параметр д.б. МАССИВОМ строк
    arrayNames1.forEach { name in // используй 'forEach' для перебора элеметов массива
        print(name) // выводим имя на отдельной мтроке
    }
}
printArray1(array: arrayNames1) // вызов функции с массивом имен                            10 функций за 2 часа

/*
 ЗАДАЧА: напиши функцию, принимающую массив Int в кчестве параметра и выводящую квадрат КАЖДОГО числа на отдельной строке */
let arrayInts = [1, 2, 3, 4, 5, 6, 7]
func outputSquaresOfIntegers(array: [Int]) {
    for number in array { // используй переданный параметр array
    let square = number * number
        print(square)
    }
}
outputSquaresOfIntegers(array: arrayInts)
/* COMMENTS:
 1. функция использует переданный параметр 'array', а Не захардкоженный массив 'arrayInt'
 2. это сделало функцию > универсальной: ее можно использовать с ЛЮБЫМИ массивами целых чисел
 3. ПЕРЕДАННЫЙ ПАРАМЕТР - это входные параметры, которые при ВЫЗОВЕ функции передают значения внутрь функции и используются для вычисления */

/*
 ЗАДАЧА: напиши функцию, которая принимает массив строк в качестве параметра и возвращает количество символов в каждой строке. Функция д.б. вывести количество символов для КАЖДОЙ строки на отдельной строке. */

// решение вариант 1

let names = ["Alice", "Bob", "Vincent"]
func countLettersInString(array: [String]) {
    for string in array {
        let countLtrs = string.count
        print(countLtrs)
    }
}
countLettersInString(array: names)

// решение: вариант 2 - используй 'forEach'
/* семантически правилен метод `forEach`, он предназначен именно для выполнения действий над элементами массива */
let namesChild = ["Alice", "Bob", "Vincent"]
func countLetters(array: [String]) {
    array.forEach { string in // используй 'forEach'на массиве array
        let countLetrs = string.count // подсчитай количество символов
        print(countLetrs) // выведи количество символов
    }
}
// вызови функцию с маасивом имен
countLetters(array: namesChild)
/* Comments:
1. myERROR - метод 'forEach' д.б. вызван НА МАССИВЕ, переданном в функцию 'array', а НЕ НА САМОЙ функции */

/* решение: вариант 3 - используй 'map' для СОЗДАНИЯ НОВОГО массива, который содержит количество символов в КАЖДОЙ строке */
let namesChildren = ["Margery", "Boris", "Valentina"]

func displayCharCounts(array: [String]) -> [Int] {
    let charCounts = array.map { $0.count } // создаем НОВЫЙ МАССИВ с длинами строк
    return charCounts // возвращаем массив
}
// вызов функции и сохранение результата
let counts = displayCharCounts(array: namesChildren)
print(counts) // [7, 5, 9] выводим результат

/*
 семантически правильно - используй метод `forEach`, который предназначен именно для выполнения действий над элементами массива */

// АЛЬТЕРНАТИВНЫЙ вариант 4: сразу вывести результат - 'map' + 'forEach'

let namesChildrens = ["Margery", "Boris", "Valentina", "Bob"]

func displayCharacterCounts(array: [String]) {
    array.map { $0.count } // создаем НОВЫЙ МАССИВ с длинами строк
        .forEach { print($0) }
}
// вызов функции
displayCharacterCounts(array: namesChildrens)
/*
7
5
9
3 */

/* COMMENTS:
 1. используй метод 'map' если:
 - хочешь создать НОВЫЙ МАССИВ, преобразовав элементы исходного массива
 - нужно СОХРАНИТЬ результат преобразования для ДАЛЬНЕЙШЕГО использования
 2. если задача: просто выполнить действие для КАЖДОГО элемента массива -> используй метод 'forEach' */ // 5 функций за 1 час
