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

func bubleSort(inputArr: [Int]) -> [Int] {
    var arr = inputArr // создай КОПИЮ, чтобы НЕ менять оригинал
    let n = arr.count // считай количество элементов в массиве
 
    // ВНЕШНИЙ цикл: кол-во итераций = кол-во элементов минус 1 - ??? - с каждым проходом самый БОЛЬШОЙ элемент/пузырек "ВСПЛЫВАЕТ" в конец и он нам уже НЕ нужен
    for i in 0..<n - 1 {
        for j in 0..<n - i - 1 {
            // ВНУТРЕННИЙ цикл: он будет проходить по массиву каждый раз короче на 1 элемент - ??? - мы уже ЗНАЕМ, что последний элемент i УЖЕ ОТСОРТИРОВАН
            if arr[j] > arr[j + 1] { // проверь: ТЕКУЩИЙ элемент БОЛЬШЕ следующего?
                let temp = arr[j]   // если ДА, то меняй их местами: используй временную переменную для ХРАНЕНИЯ значения текущего элемента
                arr[j] = arr[j + 1] // ТЕКУЩИЙ элемент стал -> СЛЕДУЮЩИМ
                arr[j + 1] = temp // следующий элемент стал ТЕКУЩИМ (он СОХРАНЕН во временной переменной0
            }
        }
    }
    return arr // после ВСЕХ итераций верни отсортированный массив
}
// пример использования
let nums = [3, 28, 7, 28, 7, 21, 21, 7, 3, 3]
// вызываем функцию и сохраняем результат в НОВОМ массиве
print(bubleSort(inputArr: nums)) // [3, 3, 3, 7, 7, 7, 21, 21, 28, 28]

// вар. 2 используй встроенную фунакцию 'sorted()'
func sortedArray(inputArr: [Int]) -> [Int] {
    inputArr.sorted()
}
let userNumbers = [3, 1, 7, 2, 9, 7, 4, 4, 10, 2, 12]
print(sortedArray(inputArr: userNumbers)) // [1, 2, 2, 3, 4, 4, 7, 7, 9, 10, 12]


/* ПРАКТИЧЕСКАЯ ЗАДАЧА: напиши функцию, которая моделирует простой банковский счет: принимает массив операций ( напр.: 'deposit 100', 'withdraw 50', 'deposit 200') и возвращает конечный баланс счета. Операции м.б. либо депозитами (зачисление денег), либо выводами(снятие денег). Если баланс становится отрицательным, функция д. вернуть сообщение об ошибке */

func bankAccount(inputOperations: [String]) -> String {
    // эта переменная для баланса будет использована ПОЗЖЕ
    var balance: Double = 0.0
    for operation in inputOperations {
        let parts = operation.components(separatedBy: " ")
        let command = parts[0]
        var summa = parts[1]
        let summaDouble = Double(summa) ?? 0
        
        switch command {
        case "deposit":
            balance += summaDouble
        case "withdraw":
            if balance - summaDouble < 0 {
                return "Ошибка баланс становтся отрицательным"
            }
            balance -= summaDouble
        default:
            return "Ошибка: неизвестная команда"
        }
    }
    return "Конечный баланс: \(balance)"
}
// пример использования
var operations = ["deposit 100", "deposit 100", "withdraw 180"]
let result = bankAccount(inputOperations: operations)
print(result)

/* ЗАДАЧА: напиши функцию, которая моделирует простой магазин. Функция принимает массив заказов, где каждый заказ - это строка в формате "товар количество" ("apple 12", "banana 42"). Функция д.б. вернуть СЛОВАРЬ, где ключи - название товаров, а значения - общее кол-во каждого товара. Если в заказе указано отрицательное кол-во товара, функция д.б. вернуть сообщение об ошибке. */

func processOrders(currentOrders: [String]) -> [String: Int]? {
    var ordersSummary: [String: Int] = [:] // инициализация словаря
    
    for order in currentOrders { // разбери каждый новый заказ га название товара и количество
        let components = order.components(separatedBy: " ")
        let product = components[0]
        let quantity = Int(components[1]) ?? 0
        
        if quantity < 0 {
            return [:] // или можно вернуть собщение об ошибке
        }
        // ОБНОВЛЕНИЕ СЛОВАРЯ
        if var currentQuantity = ordersSummary[product] {
            ordersSummary[product] = currentQuantity + quantity
        } else {
            ordersSummary[product] = quantity
        }
    }
    return ordersSummary
}
// пример использования
let orders = ["apple 21", "banana 44", "apple 12", "banana 6", "limon 12"]
if let result = processOrders(currentOrders: orders) {
    print(result)
} else {
    print("Ошибка: отрицательное количество товара.")
}
