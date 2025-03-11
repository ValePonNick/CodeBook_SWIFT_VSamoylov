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

// Задача: вывести все четные числа от 2 до 12
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
