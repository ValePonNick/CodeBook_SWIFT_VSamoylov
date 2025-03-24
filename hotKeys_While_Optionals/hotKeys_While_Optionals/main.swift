//
//  main.swift
//  hotKeys_While_Optionals
//
//  Created by Валерия Пономарева on 23.03.2025.
//

import Foundation

// Hot Keys
/*
 1. command + N - новый файл
 2. command + B - компиляция кода
 3. command + R - запустить код
 4. print() - проверь результат
 5. shift + command + Y - открыть/закрыть консоль
 6. command + 0 - открыть/закрыть консоль
 7. command + / - закомментировать/раскомментировать код
 */

// цикл 'while'
/*
ЗАДАЧА 1: Используя цикл `while`, вычислите сумму всех чисел от 1 до заданного числа `n`. `n` должно быть optional Int. Если `n` равно nil, функция должна вернуть 0. */

// вар. 1
func calculateSum(startNum: Int, n: Int?) -> Int {
    var currentNum = startNum
    var summa = 0
    while currentNum <= n ?? 0 {
        summa += currentNum
        currentNum += 1
    }
    return summa
}
// пример использования
let result = calculateSum(startNum: 1, n: 12)
print(res)

// вар. 2
func calculateSumma(startNum: Int, n: Int?) -> Int {
    guard let n = n else {
        return 0
    }
    
    var currentNum = startNum
    var summa = 0
    while currentNum <= n {
        summa += currentNum
        currentNum += 1
    }
    return summa
}
// пример использования
let res = calculateSumma(startNum: 1, n: 12)
print(result)

 /* ЗАДАЧА 2: Напишите функцию, которая проверяет, является ли заданная строка палиндромом (читается одинаково в обоих направлениях). Игнорируйте пробелы и регистр символов. Используйте цикл `while` для сравнения символов с начала и конца строки. Строка может быть optional String. Если строка nil, функция должна вернуть false. */

 /* ЗАДАЧА 3. Сгенерируйте случайное число от 1 до 100. Предложите пользователю угадать число. Используйте цикл `while`, чтобы запрашивать ввод пользователя до тех пор, пока он не угадает число. Подсказывайте пользователю “больше” или “меньше” после каждой попытки. */

/* ЗАДАЧА 4. Напишите функцию, которая подсчитывает количество гласных букв (a, e, i, o, u) в заданной строке. Используйте цикл `while` для перебора символов строки. Строка может быть optional String. Если строка nil, функция должна вернуть 0. */

 /* ЗАДАЧА 5: Вычислите факториал заданного числа `n` (произведение всех целых чисел от 1 до `n`). Используйте цикл `while`. `n` должно быть optional Int. Если `n` равно nil или меньше 0, функция должна вернуть 1. */
