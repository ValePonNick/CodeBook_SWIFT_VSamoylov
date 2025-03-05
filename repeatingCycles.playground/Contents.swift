import UIKit

// Введение в циклы в Swift

/*
Iteration - это:
    - ОДНО выполнение цикла/действия в определенном порядке и многократно,
    - процесс ПОВТОРЕНИЯ шагов/операций в коде/алгоритме,
    - организация обработки данных, при которой действия повторяются многократно БЕЗ вызовов самих себя(отличие от рекурсии)
 ПРИМЕНЕНИЕ:
 - последовательная обработка элементов в коллекции (массивы + списки)
 - поиск элементов в коллекциях
 - решение задач, требующих повтороения действий (построение цикла / повторяющихся операций) */

/*  Цикл 'for' - для итерации по коллекциям / диапазонам значений
for переменная in коллекция {
    // код для выполнения
} */
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)
} //

/* Цикл 'while' - выполняет блок кода, пока условие остается истинным
while условие {
    // код для выполнения
} */
var i = 0
while i < 5 {
    print(i)
    i += 1
}

/* Цикл 'repeat-while' - блок кода выполняется хотя бы ОДИН раз, а затем условие проверяется
repeat {
 // код для выполнения
 } while условие */
var j = 0
repeat {
    print(j)
} while j > 0 && j <= 3
/* ЛОГИКА ЦИКЛА:
 - прерывание цикла 'break' - используй для НЕМЕДЛЕННОГО выхода из цикла
 - пропуск итерации 'continue' - пропускает итерацию и переходит к следующей */

// ЗАДАЧА 1: выведи числа от 1 до 5 с помощью цикла
var a = 1 // инициализация переменной
while a <= 5 { // условие цикла: пока  a <= 5 цикл продолжается
    print(a) // внутри цикла выведи ТЕКУЩЕЕ значение a
    a += 1 // ИНКРЕМЕНТ - после вывода увеличь a на 1
}
// ЗАДАЧА 2: сумма чисел в массиве с помощью цикла
let arrayNums = [1, 212, -212, 33, 500]
var sum = 0 // создай переменную для хранения суммы чисел
var index = 0 // индекс для обхода массива
let count = arrayNums.count // количество элементов в массиве
// цикл 'while'
while index < count {
    sum += arrayNums[index] // накопление суммы
    index += 1 // переходим к СЛЕДУЮЩЕМУ элементу
}
print(" Сумма чисел в массиве: \(sum)")

/*
 ЗАДАЧА 3: выведи все ЧЕТНЫЕ числа от 1 до 12 с помощью цикла */
var n = 1
while n <= 12 {
    if n % 2 == 0 {
        print(n)
    }
    n += 1 // перейди к СЛЕДУЮЩЕМУ числу
} // 2, 4, 6, 8, 10, 12

// ЗАДАЧА 4: найди и выведи max значение в массиве с помощью цикла

let array = [2, 12, 212, 34, -21]
var maxValue  = array[0] // инициализация max значения ПЕРВЫМ элементом массива
for value in array { // цокл для поиска max значения
    if value > maxValue { // проверка: если ТЕКУЩЕЕ значение больше max
        maxValue = value // обновление max значения
    }
}
    
print(maxValue)

/* ЗАДАЧА 5: напиши программу, которая выводит таблицу умножения для чисел от 1 до 5 с помощью цикла */

let nums = [1, 2, 3, 4, 5]
var indexOuter = 0 // создай ВНЕШНИЙ индекс для обхода массива

while indexOuter < nums.count {
    print("Таблица умножения для \(nums[indexOuter])")
    // ВНУТРЕННИЙ цикл для умножения на ВСЕ остальные числа от 1 до 5
    var innerIndex = 0
    while innerIndex < nums.count {
        let result = nums[indexOuter] * nums[innerIndex]
        print("\(nums[indexOuter]) * \(nums[innerIndex])  = \(result)")
        innerIndex += 1
    }
    print() // пустая строка для разделения таблицы
    indexOuter += 1
}
/*
 Таблица умножения для 1
 1 * 1  = 1
 1 * 2  = 2
 1 * 3  = 3
 1 * 4  = 4
 1 * 5  = 5

 Таблица умножения для 2
 2 * 1  = 2
 2 * 2  = 4
 2 * 3  = 6
 2 * 4  = 8
 2 * 5  = 10

 Таблица умножения для 3
 3 * 1  = 3
 3 * 2  = 6
 3 * 3  = 9
 3 * 4  = 12
 3 * 5  = 15

 Таблица умножения для 4
 4 * 1  = 4
 4 * 2  = 8
 4 * 3  = 12
 4 * 4  = 16
 4 * 5  = 20

 Таблица умножения для 5
 5 * 1  = 5
 5 * 2  = 10
 5 * 3  = 15
 5 * 4  = 20
 5 * 5  = 25 */

// ЗАДАЧА 6: выеди числа от 12 до 15 с помощью цикла
var num = 12
while num <= 15 {
    print(num)
    num += 1 // НЕ ЗАБЫВАЙ про ИНКРЕМЕНТ! иначе - БЕСконечный цикл
}

// ЗАДАЧА 7: выведи числа, кратные 3-м

// вар. 1
let arr = [14, 21, -33, 51, -60, 71]
for num in arr {
    if num % 3 == 0 {
        print(num) // 21, -33, 51, -60

    }
}
// вар. 2
var indexArr = 0
while indexArr < arr.count {
    if arr[indexArr] % 3 == 0 {
        print(arr[indexArr])
    }
    indexArr += 1
} // 21, -33, 51, -60


// вар. 3 используй метод '.filter'
let multiplesOfThree = arr.filter { $0 % 3 == 0 }
for num in arr {
    print(num)
} // 21, -33, 51, -60

// ЗАДАЧА 8: найди и выведи индекс элемента со значением 23 с помощью цикла

// вар. 1 с помощью цикла 'for'
let arrNumb = [0, 12, -55, 23, -23] // создай массив
var indexArrNumb = 0 // создай переменную для хранения индекса
// цикл для обхода массива
for num in arrNumb {
    if num == 23 {
        print(indexArrNumb) // вывод индекса элемента со значением 23
    }
    indexArrNumb += 1 // ИНКРЕМЕНТ индекса для перехода к следующему элементу
}

// вар. 2 с помощью цикла 'for' и проверкой на отсутствие искомого элемента
let arrNumbers = [12, 27, 300, -777, 888]
var indexArrNumbers = 0 // создай переменную для хранения индекса
var found = false // ФЛАГ для проверки наличия элемента
for num in arrNumb {
    if num == 21 {
        print("Индекс элемента 21: \(indexArrNumb)")
        found = true
    }
    indexArrNumb += 1
}
if !found {
    print("Элемент 21 не найден в массиве")
}
// ЗАДАЧА 9:  - таблица деления для чисел от 1 до 5 с помощью циклов

// вар. 1 - используй цикл 'while'
let arrNums1_5 = [1, 2, 3, 4, 5]
var outerIndex = 0 // создай переменную для хранения ВНЕШНЕГО индекса
var innerIndex = 0 // создай переменную для хранения ВНУТРЕНЕГО индекса

while outerIndex < arrNums1_5.count {
    print("Таблица деления для \(arrNums1_5[outerIndex]):")
    print() // пустая строка
    innerIndex = 1 // начало ВНУТРЕННЕГО цикла с единицы - на НОЛЬ делить НЕЛЬЗЯ
    
    while  innerIndex <= arrNums1_5.count {
        let result = Double(arrNums1_5[outerIndex]) / Double(innerIndex)
        print("\(arrNums1_5[outerIndex]) / (innerIndex) = \(result)")

        innerIndex += 1
    }
    print()
    outerIndex += 1
}
/*
 Таблица деления для 1:

 1 / (innerIndex) = 1.0
 1 / (innerIndex) = 0.5
 1 / (innerIndex) = 0.3333333333333333
 1 / (innerIndex) = 0.25
 1 / (innerIndex) = 0.2

 Таблица деления для 2:

 2 / (innerIndex) = 2.0
 2 / (innerIndex) = 1.0
 2 / (innerIndex) = 0.6666666666666666
 2 / (innerIndex) = 0.5
 2 / (innerIndex) = 0.4

 Таблица деления для 3:

 3 / (innerIndex) = 3.0
 3 / (innerIndex) = 1.5
 3 / (innerIndex) = 1.0
 3 / (innerIndex) = 0.75
 3 / (innerIndex) = 0.6

 Таблица деления для 4:

 4 / (innerIndex) = 4.0
 4 / (innerIndex) = 2.0
 4 / (innerIndex) = 1.3333333333333333
 4 / (innerIndex) = 1.0
 4 / (innerIndex) = 0.8

 Таблица деления для 5:

 5 / (innerIndex) = 5.0
 5 / (innerIndex) = 2.5
 5 / (innerIndex) = 1.6666666666666667
 5 / (innerIndex) = 1.25
 5 / (innerIndex) = 1.0 */

// вар. 2 - используй цикл 'for'
while outerIndex < arrNums1_5.count {
    print("Таблица деления для \(arrNums1_5[outerIndex]):")
    print()
    
    for innerIndex in 1...5 {
        let result = Double(arrNums1_5[outerIndex]) / Double(innerIndex)
        print("\(arrNums1_5[outerIndex]) / (innerIndex) = \(result)")
    }
    print()
    outerIndex += 1
} // тот же результат на консоли

// ЗАДАЧА 10: вычислить сумму чисел от 1 до n

// вар. 1
// запроси число у юзера
func requestNumber(testInput: String) -> Int {
    if let number = Int(testInput), number > 0 && number <= 30 {
        return number
    } else {
        fatalError("Invalid input")
    }
}
// вычисли сумму чисел от 1 до n
func calculateSum(n: Int) -> Int {
    return n * (n + 1) / 2
}
// ОСНОВНАЯ ФУНКЦИЯ
func main() {
    let testInputs = ["15", "21", "30"] // задай тестовое значение
    for input in testInputs {
        let n = requestNumber(testInput: input)
        let sum = calculateSum(n: n)
        print("The sum of numbers from 1 to \(n) is: \(sum)")
    }
}
main()
/*
 The sum of numbers from 1 to 15 is: 120
 The sum of numbers from 1 to 21 is: 231
 The sum of numbers from 1 to 30 is: 465 */

// вар. 2
// запроси число у юзера
func requestNumbers(testInput: String) -> Int? {
    if let number = Int(testInput), number > 0 && number <= 30 {
        return number
    } else {
        return nil
    }
}
// вычисли сумму чисел от 1 до n
func calculateSumma(n: Int) -> Int {
    return n * (n + 1) / 2
}
// ОСНОВНАЯ ФУНКЦИЯ
func mainFunc() {
    let testInputs = ["12", "27", "33"] // задай тестовое значение
    for input in testInputs {
        if let n = requestNumbers(testInput: input) {
            let sum = calculateSumma(n: n)
            print("The sum of numbers from 1 to \(n) is: \(sum)")
    } else {
        print("Invalid input: \(input). Pleas enter a number between 1 and 30.")
    }
}
}
mainFunc()
/*
 The sum of numbers from 1 to 12 is: 78
 The sum of numbers from 1 to 27 is: 378
 Invalid input: 33. Pleas enter a number between 1 and 30. */

