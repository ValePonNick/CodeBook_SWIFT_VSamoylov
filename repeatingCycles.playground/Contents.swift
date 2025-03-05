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
