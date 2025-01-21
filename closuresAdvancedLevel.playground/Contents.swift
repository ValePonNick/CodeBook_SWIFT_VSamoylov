import UIKit

// CLOSURES "ЗАМЫКАНИЯ": Advanced Level "продвинутый уровень".

/*
 1. создай func, которая принимает массив Double. Напиши алгоритм, который находит в массиве min значение. Распечатай рез-т на консоль
 */
/*
 1. Эта функция возвращает min значение в массиве, если он НЕ пуст.
 2. Если он пуст, она возвращает nil
 */
let numbers = [3.14, 2.12, 7.77, -4.23]
    if let minNumber = numbers.min() {
        print("минимальное значение: \(minNumber)")
    } else {
        print("массив пуст")
}
// вручную с помощью ЦИКЛА это можно сделать так:
let nums = [1, 3, 6, 9, 12, -2, -12]
var minNumber: Int = Int.max
for number in nums {
    if number < minNumber {
        minNumber = number
    }
}
print("минимальное значение: \(minNumber)")
/*
 NB:
 1. 'Int.max' используется для инициализации 'minNumber', чтобы гарантировать,
 что ЛЮБОЙ элемент в массиве будет меньше него. */
 
// 1.2 чтобы найти ДВА min значения в массиве:
 // 1. сортировка массива по возрастанию и взять два первых элемента:
let sortedNums = nums.sorted()
if sortedNums.count >= 2 {
    let min1 = sortedNums[0]
    let min2 = sortedNums[1]
    print("первое min значение: \(min1), второе min значение: \(min2)")
} else {
    print("массив содержит менее двух чисел")
}
// 1.3 поиск min значения с помощью  ЦИКЛА и замыкания
var min1 = nums.min() ?? 0
var min2: Int?

nums.forEach { number in
    if number < min1 {
        min2 = min1
        min1 = number
    } else if min2 == nil || (number < min2! && number != min1) {
        min2 = number
    }
}
if let min2 = min2 {
    print("первое min значение: \(min1), второе min значение: \(min2)")
} else {
    print("массив содержит менее двух чисел")
}

/*
 2. в этом же массиве найди max значение. Распечатай рез-т на консоль
 */
let numsDouble = [3.14, 2.12, 7.77, -4.23, -3.14]
if let maxNumber = numsDouble.max() {
        print("максимальное значение: \(maxNumber)")
    } else {
        print("массив пуст")
}
// вручную с помощью ЦИКЛА это можно сделать так:
let numsInt = [1, 3, 6, 9, 12, -2, -12]
var maxNumber = numsInt[0] // инициализация max значения
for number in numsInt {
    if number > maxNumber {
        maxNumber = number
    }
}
print("максимальное значение: \(maxNumber)")
/* этот код проходит по КАЖДОМУ элементу массива и обновляет переменную
 'maxNumber', если текущий элемент > предыдущего max
 1. инициализируем массив
 2. ищем в нем max значение: зададим начальное значение для max - var maxNumber = numsInt[0]
 3. предположим, что ПЕРВОЕ число в массиве - и есть max. Переменная 'maxNumber' хранит
 ТЕКУЩИЙ max
 4. цикл перебора элементов массива - 'for-in' проходит по КАЖДОМУ числу в массиве
 5. на КАЖДОЙ итерации проверяем: больше ли текущее число 'number' ТЕКУЩЕГО max - 'maxNumber'
 6. если ДА -> обновляем 'maxNumber' и присваиваем ему ТЕКУЩЕЕ число
 7. если НЕТ - НИЧЕГО НЕ делаем
 8. после заверщения цикла в переменной 'maxNumber' будет храниться САМОЕ большое число из массива ->
 9. выводим его на экран
 */
/*
 3. создай func, которая принимает массив букв - Characters. Отсортируйте массив так, чтобы главсные оказались в левой части, а согласные - в правой. Разделите массив на гласные/согласные(2 отдельных массива). Отсортируйте каждый по алфавиту. Распечатай рез-т на консоль
 */
// 1. создай массив букв с типом Character.
let charsArray: [Character] = ["u", "b", "s", "c", "t", "d", "e", "f", "g", "h", "i","a"]
type(of: charsArray)
// создай два пустых массива типа Character.
var vowels: [Character] = []
var consonants: [Character] = []
// сортируем массив
for letter in charsArray {
    if "aeiou".contains(letter) {
        vowels.append(letter)
    } else {
        consonants.append(letter)
    }
}
let sortedArray = vowels + consonants
print(sortedArray)
// отсортируй КАЖДЫЙ массив по алфавиту - NB: используй метод, который ИЗМЕНЯЕТ массив
vowels.sort()
consonants.sort()
 // разделим массив на два отдельных
print("массив гласных: \(vowels)")
print("массив согласных: \(consonants)")
/*
 4. сложите получившиеся массивы в один. Распечатай рез-т на консоль
 */
let sortArray = vowels + consonants
print(sortArray)
// ГОТОВО и НЕ сложно
