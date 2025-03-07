import UIKit

// Repeated CYCLES: 'for' & 'while'

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

func displayAllNumsInReverse(upperNum: Int) -> [Int] {
    var array = [Int]()
    var i = upperNum
    while i >= 1 {
        print(i)
        array.append(i)
        i -= 1
    }
    return array
}
displayAllNumsInReverse(upperNum: userNumbe)

// вар. 3 используй цикл 'for'
