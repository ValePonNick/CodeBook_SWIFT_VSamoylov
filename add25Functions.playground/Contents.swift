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
func printArray(array: [String]) {
    for name in array {
        print(name)
    }
}
printArray(array: arrayNames)

// используй цикл 'forEach'
let arrayNames1 = ["Andy", "Bobby", "Dug", "John"]
func printArray1(array: [String]) {
    arrayNames1.forEach { name in
        print(name)
    }
}
printArray1(array: arrayNames1)
