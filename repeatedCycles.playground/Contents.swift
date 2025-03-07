import UIKit

// Repeated CYCLES: 'for' & 'while' + Array / Function

/* ЗАДАЧА 1. напиши программу, которая выводит ВСЕ целые числа от 1 до N (где N вводится пользователем) */

// определяем функцию для проверки корректности введенного числа
func checkInput(inputNum: Int) -> Int? {
    if inputNum > 1 && inputNum <= 15 { // проверка: находится ли введенное число в заданном диапазоне?
        print("Введенное пользователем число \(inputNum) корректно.")
        return inputNum
    } else {
        print("Введенное пользователем число корректно. Пжлста, попробуйте снова.")
        return nil
    }
}
// задаем значение для симуляции ввода пользователя
let inputNum = 12 // введенное пользователем число
// проверяем коректность введенного числа и вызываем функцию для вывода чисел, если оно корректно
if let validNum = checkInput(inputNum: inputNum) {
    print("Коректное число: \(validNum)")
    print("Вывод чисел от 1 до \(validNum):") // выводим сообщение о НАЧАЛЕ вывода чисел
    displayNums(input: validNum) // вызываем функцию для вывода чисел от 1 до корректного числа
} else {
    print("Пжлста, попробуйте снова.")
}
// функция для вывода целых чисел от 1 до заданного числа
func displayNums(input: Int) {
    for num in 1...input { // используй цикл 'for-in' для вывода чисел от 1 до введенного числа
        print(num) // выводим КАЖДОЕ число в цикле
    }
}
/*
 веденное пользователем число 12 корректно.
 Коректное число: 12
 Вывод чисел от 1 до 12:
 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
 11
 12 */

// ЗАДАЧА 2: напиши программу, которая выводит ВСЕ целые числа от 1 до введенного числа N.
func displayNumbers(numberInput: Int) {
    for num in 1...numberInput { // используй цикл 'for-in' для вывода чисел от 1 до введенного числа
        print(num) // выводим КАЖДОЕ число в цикле
    }
}
let userNumber = 4 // это константа, хранящая значение, которое передается в функцию
displayNumbers(numberInput: userNumber) // это параметр функции + значение, переданное в функцию

// ЗАДАЧА 3: напиши функцию, которая принимает целое число 'N' и выводит все четные числа от 1 до 'N' циклом 'for'
func displayEvenNumbers( upperLimit: Int) {
    for num in 1...upperLimit {
        if num % 2 == 0 { // проверяем остаток от деления на 2: если = 0 то число ЧЕТНОЕ
            print(num)
        }
    }
}
let inputNumb = 7
displayEvenNumbers(upperLimit: inputNumb)

// ЗАДАЧА 4: напиши функцию, которая принимает целое число 'N' и вычисляет сумму квадратов ВСЕХ целых чисел от 1 до 'N' циклом 'while'
let userLimit = 7

func calculateSumOfsquares(upperLimit: Int) -> Int {
    var sumOfSquares = 0
    var i = 1

    while i <= upperLimit {
        sumOfSquares += i * i
            i += 1
        }
    return sumOfSquares
    }

print(calculateSumOfsquares(upperLimit: userLimit))

// ЗАДАЧА 5: напиши функцию, которая принимает целое число 'N' и выводит/ВОЗВРАЩАЕТ все числа от 'N' до 1 в ОБРАТНОМ порядке циклом 'while'

// вар. 1
let userNum = 12

func displayNumsReverse(upperNum: Int) {
    var i = upperNum
    while i >= 1 {
        print(i)
        i -= 1
    }
}
displayNumsReverse(upperNum: userNum)

// вар. 2 вернуть массив чисел

let userNumbe = 21

func displayAllNumsReverse(upperNum: Int) -> [Int] {
    var array = [Int]()
    var i = upperNum
    while i >= 1 {
        print(i)
        array.append(i)
        i -= 1
    }
    return array
}
displayAllNumsReverse(upperNum: userNumbe)

// вар. 3 вернуть массив чисел

func displayAllNumsInReverse(upperNum: Int) -> [Int] {
    return Array((1...upperNum).reversed())
}
let inputNumber = 9
displayAllNumsInReverse(upperNum: inputNumber) // [9, 8, 7, 6, 5, 4, 3, 2, 1]

// вар. 4 напиши функцию, которая принимает целое число 'N' и выводит/ВОЗВРАЩАЕТ все числа от 'N' до 1 в ОБРАТНОМ порядке, используй ТРАДИЦИОННЫЙ цикл 'for'

func displayNumbersInReverse( upperNum: Int) {
    var i = upperNum
    for num in (1...i).reversed() {
        print(num)
    }
}
let userN = 18
displayNumbersInReverse(upperNum: userN)

// вар. 5 КРАТКО, используй функцию stride(from: through: by:) + цикл 'for'
func displayNumsInReverse(upperNum: Int) {
    for i in stride(from: upperNum, through: 1, by: -1) {
        print(i)
    }
}
let inputNumbe = 3
displayNumsInReverse(upperNum: inputNumbe) // 1, 2, 3
// COMMENTS:
/*
1. эта функция использует функцию stride(from: through: by:), которая позволяет создать последовательность чисел от 'upperNum' до 1 с шагом '-1', что означает ОБРАТНЫЙ порядок.
 2. эта функция генерирует последовательность чисел, начиная с главного значения ('from') и заканчивая другим заданным значением ('througt') и увеличиваясь на определенный шаг ('by').
 3. эта функция позволяет создавать ЦИКЛЫ, которые могут пропускать орпеделенные элементы / генерировать последовательности с заданным шагом.
 4. есть разновидность этой функции - 'stride(from: to: by)' - она НЕ всключает конечное значение ('to') в последовательность
 5. если передать ОТРРИЦАТЕЛЬНОЕ значение в качестве шага ('by'), то последовательность будет генерировать в обратном порядке.
 ИТАК: функцию stride(from: through: by:) - это МОЩНЫЙ инструмент для создания ЦИКЛОВ с заданным шагом и НАПРАВЛЕНИЕМ - она ПОЛЕЗНА для обработки массивов / генерации числовых последовательностей. */

/* ПРОСТАЯ ЗАДАЧА: напиши функцию, которая принимает целое число и выводит ВСЕ четные числа от 1 до 'N'всключительно. */

func printAllNums(upperNum: Int) {
    for num in 1...upperNum {
        if num % 2 == 0 {
            print(num)
        }
    }
}
let inputN = 12
printAllNums(upperNum: inputN)

/* ПРОСТАЯ ЗАДАЧА: напиши функцию, которая принимает целое число и выводит ВСЕ четные числа от 1 до 'N'всключительно - используй цикл 'for' + функцию stride(from: through: by:) */

func printAllEvenNums(upperNum: Int) {
    for num in stride(from: 2, through: upperNum, by: 2) {
    }
}
let maxNumber = 12
printAllEvenNums(upperNum: maxNumber) // 2, 4, 6, 8, 10, 12

/* СЛОЖНАЯ ЗАДАЧА: напиши функцию, которая принимает МАССИВ целых чисел и возвращает НОВЫЙ МАССИВ, содержащий только УНИКАЛЬНЫЕ элементы из исходного массива. */
// вар. 1
func returnUnicNums(inputArray: [Int]) -> [Int] {
    let unicNums: Set<Int> = Set(inputArray)
    let uniqueArray = Array(unicNums)
    return uniqueArray
}
let userArray = [3, 28, 7, 28, 7, 21, 21, 7, 3, 3]
print(returnUnicNums(inputArray: userArray)) // [21, 3, 7, 28]

// вар. 2
func returnUnicumNums(inputArray:[Int]) -> [Int] {
    return Array(Set(inputArray))
}
let numbers = [3, 28, 7, 28, 7, 21, 21, 7, 3, 3]
print(returnUnicumNums(inputArray: numbers)) // [21, 3, 7, 28]

/* АЛГОРИТМИЧЕСКАЯ ЗАДАЧА: реализуй алгоритм сортировки пузырьком для массива целых чисел. Напиши функцию, которая принимает массив целых чисел и возвращает отсортированный массив в порядке возрастания */

 
