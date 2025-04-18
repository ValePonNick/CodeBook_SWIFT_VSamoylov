import UIKit

// Lerned CYCLES: 'For' & 'While'

// Задача 1. Вывести числа от 1 до 7
func displayNumbers(inputNumber: Int) {
    
    for number in 1...inputNumber {
        print(number)
    }
}
displayNumbers(inputNumber: 7)

// Задача 2. вывести квадраты чисел от 1 до 7
// вар. 1
func displaySquareNumbers(inputNumber: Int) {
    for number in 1...inputNumber {
        print(number * number)
    }
}
displaySquareNumbers(inputNumber: 7) //
1
2
3
4
5
6
7
1
4
9
16
25
36
49

// вар. 2 используй встроенную функцию 'pow'

func displaySquareNums(inputNum: Int) {
    for num in 1...inputNum {
        let square = pow(Double(num), 2)
        print(square)
    }
}
displaySquareNums(inputNum: 5) //
1.0
4.0
9.0
16.0
25.0
// COMMENTS:
/*
 1. Функция `pow(_:_:)`  - определена в библиотеке Foundation.
 2. принимает два параметра типа `Double`: первый — основание степени, второй — показатель степени. Она возвращает результат возведения основания в заданную степень. */

// Задача 3: вывести элементы списка "kiwi", "limon", "grape".
func displayElementsOfList(inputFruits: [String]) {
    for fruit in inputFruits {
        print(fruit)
    }
}
let fruits = ["kiwi", "limon", "grape"]
displayElementsOfList(inputFruits: fruits)

// вар. 2 используй вместо цикла 'for'  метод 'joined(separator:)'
print(fruits.joined(separator: ", ")) // kiwi, limon, grape
// COMMENTS:
/*
 1. метод 'joined(separator:)' выведет все элементы массива в одну строку, разделяя их запятой и пробелом.
 2. работает с любыми последовательностями (`Sequence`), которые содержат элементы типа `String`.
 3. можешь использовать его с массивами, наборами (`Set`), словарями (ключи или значения, если они строковые), и другими коллекциями, если их элементы можно преобразовать в строки. */

let fruitsDict = ["kiwi": "green", "limon": "yellow", "grape": "purple"]
print(fruitsDict.keys.joined(separator: ", ")) // kiwi, limon, grape
print(fruitsDict.values.joined(separator: ", ")) // green, yellow, purple

// Задача 4: сумма чисел от 1 до 7

func calculateSummaOfNums(inputNum: Int) {
    var summa = 0
    for num in 1...inputNum {
        summa += num
    }
    print("Сумма чисел: \(summa)")
}
calculateSummaOfNums(inputNum: 7) // 28

// Задача 5: вывести все четные числа от 2 до 12
// вар. 1
func displayEvenNums(input: Int) {
    for num in 2...input {
        if num % 2 == 0 {
            print(num)
        }
    }
}
displayEvenNums(input: 12)
// вар.2 ПРОСТО + ЭФФЕКТИВНО используй шаг цикла 'for' = 2
func displayEvenNumbs(input: Int) {
    for num in stride(from: 2, through: input, by: 2) {
        print(num)
    }
}
displayEvenNumbs(input: 8)

// Задача 6: вывести все НЕчетные числа от 1 до 15
func displayOddNums(input: Int) {
    for num in 1...input {
        if num % 2 != 0 {
            print(num)
        }
    }
}
displayOddNums(input: 15) //
3
5
7
9
11
13
15

// Задача 7: напиши программу, которая находит количество делителей заданного числа

// вар. 1
func countDevisors(input: Int) {
    var divisorCount: Int = 0
    for num in 1...input {
        if input % num == 0 {
            divisorCount += 1
        }
    }
    print(divisorCount)
}
countDevisors(input: 5040) // 60

// вар. 2 ОПТИМИЗИРОВАН для БОЛЬШИХ чисел
func countOfDivisors(input: Int) {
    var divisorsCount = 0
    let sqrtInput = Int(sqrt(Double(input)))
    
    for num in 1...sqrtInput {
        if input % num == 0 {
            if num * num == input {
                divisorsCount += 1
            } else {
                divisorsCount += 2
            }
        }
    }
    print(divisorsCount)
}
countOfDivisors(input: 5040) // 60
// COMMENTS:
/*
1. ОТЛИЧИЕ: цикл перебирает числа только до КВАДРАТНОГО КОРНЯ из 'input' (А НЕ самого 'input').
 2. ??? - каждый делитель числа имеет ПАРУ, которая также является делителем.
 3. напр.: если 'num' - делитель 'input' -> 'input / num' также является делителем. */

// Задача 8: напиши программу, которая выводит таблицу умножения на 3 от 1 до 12
func multiplicationTable( input: Int) {
    let someNumber: Int = 3
    for num in 1...input {
        print("\(num) * \(someNumber) = \(num * someNumber)")
    }
}
multiplicationTable(input: 4)
/* 1 * 3 = 3
2 * 3 = 6
3 * 3 = 9
4 * 3 = 12 */

// вар. 2 УНИВЕРСАЛЬНЫЙ КОД
func multiplicateTable(multiplier: Int, input: Int) {
    for num in 1...input {
        print("\(num) * \(multiplier) = \(num * multiplier)")
    }
}
multiplicateTable(multiplier: 6, input: 4)
/*
 1 * 6 = 6
 2 * 6 = 12
 3 * 6 = 18
 4 * 6 = 24 */

// Задача 9: напиши программу, которая выводит числа от 5 до 15 с помощью цикла 'for' и 'while'
func displayNums() {
    for num in 5...15 {
        print(num)
    }
}
displayNums( )

func displayNumbers() {
    var num: Int = 5
    while num >= 5 && num <= 15 {
        print(num)
        num += 1 // увеличивай, чтобы цикл НЕ был бесконечным
    }
}
displayNumbers()

// Задача 10. напиши программу, которая выводит НЕчетные числа от 1 до 21 с помощью цикла 'while'
func displayOddNums(upperNum: Int) {
    var num: Int = 1
    while num >= 1 && num <= upperNum {
        if num % 2 != 0 {
            print(num)
        }
        num += 1 // увеличение num ВНЕ условия 'if' - независимо четное/Нечетное число!!!
    }
}
displayOddNums(upperNum: 21)

// Задача 11: напиши программу, которая вычисляет факториал заданного числа, используя цикл 'for'
func calculateFactorial(givenNum: Int) -> Int {
    var factorial = 1
    for num in 1...givenNum {
        factorial *= num
    }
    return factorial
}
calculateFactorial(givenNum: 4) // 24

// Задача 11: напиши программу, которая вычисляет факториал заданного числа, используя цикл 'while'
func calculateFactorialOfGivenNum(givenNum: Int) -> Int {
    var factorial = 1
    var num = 1
    while num <= givenNum {
        factorial *= num
        num += 1
    }
    return factorial
}
let givenNum = 4
let factorial = calculateFactorialOfGivenNum(givenNum: givenNum)
print("Факториал заданного числа - \(givenNum) равен \(factorial)") // Факториал заданного числа - 4 равен 24

/* COMMENTS:
1. Синтаксис и логика цикла 'for':
    - используется для ИТЕРАЦИИ над по=>ми (Array, Range, String),
    - переменная? принимает значение КАЖДОГО элемента на КАЖДОЙ итерации,
    - цикл продолжается, пока не будут обработаны ВСЕ элементы по=>ти.
 
2.  Синтаксис и логика цикла 'while':
    - выполняет блок кода до тех пор, пока условие остается true,
    - если условие становится false -> цикл завершен
3. СХОДСТВА:
    - используются для многократного выполнения блока кода,
    - для решения задач, требующих повторения действий несколько раз.
 4. РАЗЛИЧИЯ:
    цикл 'for' используй:
    - кол-во итераций известно ЗАРАНЕЕ,
    - переменная? цикла AUTO обновляется на КАЖДОЙ итерации.
    цикл 'while' используй:
    - кол-во итераций НЕ ИЗВЕСТНО / зависит от какого-то УСЛОВИЯ (условная итерация),
    - требует РУЧНОГО обновления переменной внутри тела цикла(ГИБКАЯ итерция + КОНТРОЛЬ - ??? - доп. проверки/модификации данных во время итерации),
    - может привести к БЕСконечному циклу, если условие всегда true(нужен для обработки событий в реальном времени)
    - типы данных:
        - списки / массивы с НЕизвестным размером,
        - строки / файлы - когда необходимо читать, пока не будет достигнут опр. маркер/конец файла,
        - пользовательский ввод - когда программа д.б. обрабатывать ввод пользователя до тех пор, пока не будет ВВЕДЕНА КОМАНДА для завершения.
 5. ПРЕИМУЩЕСТВО цикла 'for':
 - ЯСНОСТЬ + ЧИТАЕМОСТЬ - позволяет ЯВНО указать:
        - начальное значение,
        - условие продолжения,
        - ШАГ изменения переменной цикла,
 - УДОБСТВО использования с коллекциями -> 'for element in array {...}'
 - меньше ОШИБОК - ??? - AUTO обновление переменной цикла на каждой итерации,
 - > БЕЗОПАСНЫЙ - переменная циклв - всегда 'let' - что ПРЕДОТВРАЩАЕТ случайные изменения внутри цикла,
 - ЛЕГЧЕ ПОДДЕРЖИВАТЬ и модифицировать КОД, использующий цикл 'for' т.к. ЛОГИКА цикла > ЯВНА + ЛОКАЛИЗОВАНА. */
 
 // ЗАДАЧА 12: напиши программу, которая выводит числа от заданного числа до 1, используя циклы 'for' и 'while'

// вар. 1 цикл 'for'
func displayNums(n: Int) {
    for num in stride(from: n, through: 1, by: -1) {
        print(num)
    }
}
displayNums(n: 7)

// вар. 1 цикл 'while'
func displayNumbers(n: Int) {
    var num = n
    while num >= 1 {
        print(num)
        num -= 1
    }
}
displayNumbers(n: 6) // 6,5,4,3,2,1

// Задача 13: наприши программу, которая запрашивает у пользователя 5 чисел и вычисляет их среднее арифметическое

// вар. 1
let inputs = ["12", "21", "8", "10", "24"]

func requestNumsFromUser(count: Int) -> Double {
    // код для запроса чисел у пользователя
    var sum: Double = 0 // переменная для суммы
    var inputIndex = 0
    
    for num in 1...count {
        print("Введите число \(inputIndex + 1):")
        
        // СИМУЛЯЦИЯ ввода - запроса числа у юзера и его конвертация в Double
        if let input = Double(inputs[inputIndex]) {
            sum += input // суммирование введенных чисел
            print("Вы ввели: \(input)")
        } else {
            print("Некорректный ввод")
            return 0 // или как то обработать ошибку
        }
        inputIndex += 1
    }
    let average = sum / Double(count)
    
    return average
}
// пример использования
let average = requestNumsFromUser(count: 5)
    print("Среднее арифметическое равно: \(average)") // Среднее арифметическое равно: 15.0

// вар. 2 используй цикл 'while'
let numsArray = ["1", "2", "3", "4", "5"]

func calculatedAverage() -> Double {
    var totalSum: Double = 0
    var arrayIndex = 0
    
    while arrayIndex < numsArray.count {
        if let currentNum = Double(numsArray[arrayIndex]) {
            totalSum += currentNum
            print("Вы ввели: \(currentNum)")
        } else {
            print("Некорректный ввод")
        }
        arrayIndex += 1
    }
    return totalSum / Double(numsArray.count)
}
let averageResult = calculatedAverage()
print("Среднее арифметическое равно: \(averageResult)") // Среднее арифметическое равно: 3.0


// вар. 3 КРАТКО + ЯСНО - встроенные функции
func calculateAverage() -> Double {
    let numbers = inputs.compactMap { Double($0) }
    return numbers.reduce(0, +) / Double(numbers.count)
}
let averageNums = calculateAverage()
print("Среднее арифметическое равно: \(averageNums)") // Среднее арифметическое равно: 15.0
 
// Задача 14: напищши программу, которая запрашивает пароль у пользователя до тх пор, пока он не введет 'frend', используя цикл 'while'
// шаг 1
let passwords = ["wrong", "wrong", "frend", "Просто скажи друг и войдешь"] // примеры ввода
var index = 0 // для доступа к элементу массива по индексу
var password = "" // т.к. в плейграунде НЕ работает 'readLine() напрямую -> для ИМИТАЦИИ кода создай массив с паролями и индексом

// шаг 2 цикл 'while' с проверкой
while password != "Просто скажи друг и войдешь" {
    // код внутри цикла
// шаг 3 имитация ввода
password = passwords[index]
index += 1
// шаг 4 проверка и вывод
if password != "Просто скажи друг и войдешь" {
    print("Пароль НЕ верный, попробуй еще раз.")
    }
}
print("Доступ разрешен")
/*
Пароль НЕ верный, попробуй еще раз.
Пароль НЕ верный, попробуй еще раз.
Пароль НЕ верный, попробуй еще раз.
Доступ разрешен */
// COMMENTS:
/*  1. массив 'passwords' ИМИТИРУЕТ ввод юзера
    2. цикл 'while' ЗАВЕРШАЕТСЯ, кода пароль становится "frend'
    3. вывод сообщенй показывает КАК будет работать программа в РЕАЛЬНОМ сценарии. */

// ЗАДАЧА 15: напиши программу, которая запрашивает пароль у пользователя до тех пор, пока он не введет 'mellon', используя цикл 'while'

let passwordsToMoria = ["open", "annon", "edro", "mellon"] // имитируем ввод пароля юзером
var indexPass = 0 // ДОСТУП по индексу к элементам массива

while indexPass < passwordsToMoria.count { // цикл 'while' с проверкой
    print(" Введите пароль:")
    let userPass = passwordsToMoria[indexPass]
    indexPass += 1
    
    if userPass != "mellon" {
        print("Пароль не верен. Пжлста, попробуй еще раз.")
    } else {
        print("Врата Мории открыты. Скажи 'друг' и войдешь.")
        break
    }
}
    
print("Доступ разрешен")
/*  Введите пароль:
    Пароль не верен. Пжлста, попробуй еще раз.
    Введите пароль:
    Пароль не верен. Пжлста, попробуй еще раз.
    Введите пароль:
    Пароль не верен. Пжлста, попробуй еще раз.
    Введите пароль:
    Врата Мории открыты. Скажи 'друг' и войдешь.
    Доступ разрешен */

// Задача: вложенные циклы 'for' и 'while' (таблица умножения, комбинация элементов из двух списков)
 
 
// ЗАДАЧА с пиццей: напиши программу для вывода случайно сгенерированной пиццы с 4-мя ингредиентами из 20, чтобы ни один ингредиент НЕ повторялся, используя цикл 'for' и 'while'
