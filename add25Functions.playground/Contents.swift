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

/* ЗАДАЧА: переведи градусы Цельсия в Фаренгейта
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

/* ЗАДАЧА: напиши функцию, которая принимает массив строк в качестве параметра и выводит каждый элемент массива на отдельной строке */
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

// РЕШЕНИЕ: вариант 1

let names = ["Alice", "Bob", "Vincent"]
func countLettersInString(array: [String]) {
    for string in array {
        let countLtrs = string.count
        print(countLtrs)
    }
}
countLettersInString(array: names)

// РЕШЕНИЕ: вариант 2 - используй 'forEach'
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

/* РЕШЕНИЕ: вариант 3 - используй 'map' для СОЗДАНИЯ НОВОГО массива, который содержит количество символов в КАЖДОЙ строке */
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

/*
 ЗАДАЧА: Факториал числа. Создай функцию, принимающую целое число в качестве параметра и возвращает его факториал(произведение ВСЕХ целых чисел от 1 до n). Вызови функцию с разными числами и выведи результат. */

// Итеративный метод - используй цикл for - in
func factorial(n: Int) -> Int {
    var result = 1
    for i in 1...n {
        result *= i
    }
    return result
}
let result = factorial(n: 5) // пример использования
print(result) // 120

// Рекурсивный метод - используй цикл if - else
func calculateFactorial(n: Int) -> Int {
    if n == 0 {
        return 1 // базовый случай
    } else {
        return n * calculateFactorial(n: n - 1) // рекурсивный метод
    }
}
let res = calculateFactorial(n: 4)
print(res) // 24
/* COMMENTS:
 Факториалы ШИРОКО применяются в реальной жизни:
 1. сколькими способами расстваить 5 книг на полке
 2. рассчитать способы рассадки гостей на вечеринке
 3. факториал(52!) -> для определения вероятности различных комбинаций карт в колоде
 4. в IT -> в алгоритмах, связанных с перестановками / комбинациями */

/*
 ЗАДАЧА: расставь 4 книги на полке с использованием ФАКТОРИАЛА */
func addFactorial(n: Int) -> Int {
    if n == 0 {
        return 1 // базовый случай: 0! = 1
    } else {
        return n * factorial(n: n - 1) // рекурсивный метод
    }
}
let numberOfBooks = 4 // количество книг
let numberOfWays = addFactorial(n: numberOfBooks) // вычисляем факториал для количества книг
print("Количество способов расставить \(numberOfBooks) книги на полке: \(numberOfWays)")

/* ЗАДАЧА: проверка на палиндром (строка): напиши функцию, которая принимает строку в качестве параметра и возвращает 'true', если строка читается ОДИНАКОВО в обоих направлениях и 'false' - в противном случае. NB: игнорируй регистр! Вызови функцию с РАЗНЫМИ строками и выведи результат. */
func isPalindrome(_ str: String) -> Bool {
    // приводим строку к нижнему регистру и удаляем ВСЕ пробелы
    let cleanedStr = str.lowercased().replacingOccurrences(of: " ", with: "")
    // сравниваем строку с обратной версией
    let reversedStr = String(cleanedStr.reversed())
    
    return cleanedStr == reversedStr
}
// вызов функции с разными строками и вывод результата
print(isPalindrome("12321")) //
print(isPalindrome("no lemon, no melon")) //
print(isPalindrome("was it a car or a cat i saw?")) //
print(isPalindrome("a man, a plan, a canal, Panama!")) //

/* ЗАДАЧА: напиши функцию, которая принимает МАССИВ чисел и возвращает max значение */
func findMax(numbers: [Int]) -> Int? {
    return numbers.max()
}
if let maxNumber = findMax(numbers: [1,3,5,7,9]) {
    print("Max number: \(maxNumber)")
} // Max number: 9
    
/* ЗАДАЧА: напиши функцию, которая принимает строку и возвращает ее реверированную версию */
func reverseString(_ str: String) -> String {
    return String(str.reversed())
    }
let reversed = reverseString("Hello, World!")
print("Reversed string: \(reversed))") //
    
/* ЗАДАЧА: напиши функцию, которая принимает ДВЕ строки и возвращает 'true', если они
 анаграммы (содержат одни и теже буквы в разном порядке) */

func areAnagrams(_ str1: String, _ str2: String) -> Bool {
        let sortedStr1 = str1.lowercased().sorted()
        let sortedStr2 = str2.lowercased().sorted()
        return sortedStr1 == sortedStr2
}
let anagramCheck = areAnagrams("Listen", "Silent")
    print("Are anagrams: \(anagramCheck)")
    
    /* ЗАДАЧА: напиши функцию, котора принимает МАССИВ чисел и возвращает среднее значение */
    func average(of numbers: [Double]) -> Double? {
        guard !numbers.isEmpty else { return nil }
        let sum = numbers.reduce(0, +)
        return sum / Double(numbers.count)
    }
    if let avg = average(of: [12.12, 12.18, 12.0, 12,88]) {
        print("Average: \(avg)")
    } else {
        print("Array is empty.")
    }
    /* ЗАДАЧА: напиши функцию, которая принимает МАССИВ чисел и возвращает min значение */
    
    func findMin(numbers: [Int]) -> Int? {
        return numbers.min()
    }
    if let minNumber = findMin(numbers: [12, 4, 6, 8, -12]) {
        print("Min number: \(minNumber)")
    }
    /* ЗАДАЧА: напиши функцию, которая принимает строку и возвращает количество гласных букв в ней. */
    
    func countVowels(in str: String) -> Int {
        let vowels = "aeiouAEIOU"
        return str.filter { vowels.contains($0) }.count
    }
    let vowelCount = countVowels(in: "Hello, World!")
    print("Number of vowels: \(vowelCount)") // 25 функций
