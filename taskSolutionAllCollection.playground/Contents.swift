import UIKit

// создание и преобразование коллекций в SWIFT

// ЗАДАЧА 1: создай массив 5 любимых книг типа String. Выведи на консоль ПЕРВЫЙ и ПОСЛЕДНИЙ элемент.
let myFavoriteBooks: [String] = ["The Shiniing", "The Hobbit", "The Lord of the Rings", "The White Company", "The Island of the Treasures"]
let firstBook = myFavoriteBooks[0] // получение ПЕРВОГО элемента
let lastBook = myFavoriteBooks[myFavoriteBooks.count - 1] // получение ПОСЛЕДНЕГО элемента
print("Первая книга: \(firstBook)")
print("Последняя книга: \(lastBook)")

// ЗАДАЧА 2: создай множество УНИКАЛЬНЫХ чисел от 1 до 10 типа Set<Int>. Добавь уже имеющееся число. Что произойдет?
let numbersSet: Set <Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let addnumberSet: Set <Int> = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // элемент НЕ добавлен - ИГНОР!!!
print(addnumberSet) // [1, 4, 8, 10, 5, 2, 3, 9, 7, 6]

/* ЗАДАЧА 3: Создай словарь (ключи: месяцы + значение: порядковый номер). Добавь данные о трех месяцах. Выведи в консоль порядковый номер ОДНОГО месяца, используя его название как ключ */
var mounths = ["April": 4, "May": 5, "Jine": 6, "January": 1]
let addMounths = ["February": 2, "March": 3, "July": 7]
var allMounths = mounths.merging(addMounths) { (current, new) in
    return new
}
print(allMounths)

// теперь выведем номер отдельного месяца, скажем июля
if let julyNumber = allMounths["July"] {
    print("The sequence number of July is: \(julyNumber)")
} else {
    print("July is not found in the dictionary")
}
print(allMounths)
/*
 COMMENTS:
 1. вызываем метод 'merge'для словаря 'months' - этот метод добавляет ВСЕ элементы из словаря 'addMonths' в словарь 'months'
 2. { (current, new) in return new } - это ЗАМЫКАНИЕ, которое определяет: что делать, если КЛЮЧ УЖЕ существует в ОБОИХ словарях. то -> значение из 'addMonths' будет перезвписано и новое значение (из 'addMonths') будет сохранено.
 3. if let julyNumber = allMounths"July" { ... } else { ... } - эта конструкция 'if let' испльзуется для БЕЗОПАСНОГО извлечения из словаря по ключу и возвращает ОПЦИОНАЛЬНОЕ значение 'Int?', т.к. КЛЮЧ может ОТСУТСТВОВАТЬ в словаре.
 4. 'if let julyNumber = allMounths"July"' - пытается ИЗВЛЕЧЬ значение, связанное с КЛЮЧОМ "July" и присвоить его константе julyNumber ТОЛЬКО ЕСЛИ ключ 'july' существует в словаре.
 5. Если ключ 'july' существует:
    - выполняется блок внутри кода 'if'
    - print() - выводится порядковый номаер в консоль
 6. Если ключ 'july' НЕ существует:
 - выполняется блок внутри кода 'else'
 - print() - выводится сообщение, что июль не найден
 7. выводит на консоль ВЕСЬ словарь 'months' - видим КАКИЕ элементы в нем содержатся ПОСЛЕ слияния
 */
// ЗАДАЧА 4: преобразование МАССИВА чисел в МНОЖЕСТВО(удали дубли). Выведи в консоль КОЛИЧЕСТВО элементов в получ. мн-ве.
var numbersArray = [1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 6, 7]
let numArr: Set<Int> = Set(numbersArray)
print("Количество элементов в множестве \(numArr.count)") // 7

// ЗАДАЧА 5: Фильтрация масссива чисел: создай новый массив чисел из исходного массива > 30. Выведи в консоль новый массив.
let numbersInt = [10, 20, 30, 40, 12, 22, 32, 42]
var newArray: [Int] = []
for number in numbersInt {
    if number > 30 {
        newArray.append(number)
    }
    print(newArray) // [40, 32, 42]
}

// ЗАДАЧА 6: Преобразование словаря в массив кортежей,
/* где каждый кортеж содержит имя + возраст. Выведи в консоль первый элемент полученного массива. */
let agesDict = ["Alice": 30, "Bob": 25, "Charlie": 35]
var agesTuplesArray: [(name: String, age: Int)] = [] // создай ПУСТОЙ массив кортежей
for (name, age) in agesDict {
    agesTuplesArray.append((name: name, age: age))
}
print((agesTuplesArray).first)
// альтернативный вариант: БОЛЕЕ КОМПАКТНО
let agesTupleArray = agesDict.map { (name: $0.key, age: $0.value) }
print(agesTupleArray.first)
/*
COMMENTS:
    - метод 'map' преобразует КАЖДЫЙ элемент словаря в КОРТЕЖ и создает НОВЫЙ массив из этих КОРТЕЖЕЙ.
    - '$0' = каждая пара ключ-значение в словаре
    - '$0.key' - это ключ (имя),
    - '$0.value' - это значение(возраст).  */

/*
 ЗАДАЧА 7: Преобразуй массив в словарь, где ключ - слово, значение - количество раз, которое это слово встречается в массиве. Выведите словарь в консоль. */
let words = ["tomato", "potato", "tomato", "carrot", "potato", "potato", "pepper", "cabbage", "onion", "cucumber", "onion", "onion"] // массив слов
var wordsDict: [String: Int] = [:] // создай пустой словарь
for word in words {
    wordsDict[word, default: 0]
    += 1
}
print("Словарь овощей: \(wordsDict)")
    
/*
 ЗАДАЧА 8: преобразуй словарь(ключ - название продукта, значение - цена) в МАССИВ КОРТЕЖЕЙ, где каждый кортеж = название продукта + его цена, отсортированный по УБЫВАНИЮ цены. Выведи массив кортежей в консоль. */
let productPrices: [String: Double] = ["Яблоко": 50.0, "Банан": 30.0, "Апельсин": 70.0, "Манго": 150.0]
var productTuplesArray =  productPrices.map { (product: $0.key, price: $0.value) }
let sortedProductTuplesArray = productTuplesArray.sorted { $0.price > $1.price }

print(sortedProductTuplesArray) // [(product: "Манго", price: 150.0), (product: "Апельсин", price: 70.0), (product: "Яблоко", price: 50.0), (product: "Банан", price: 30.0)]
// COMMENTS:
/*
 1. преобразуй СЛОВАРЬ в МАССИВ кортежей прежде, чем сортировать его: используй метод 'map' для этого:
    -  productPrices.map { (product: $0.key, price: $0.value) } - создает НОВЫЙ массив кортежей, где каждый кортеж содержит название продукта(key) + его цену(value) из словаря 'productPrices'
    - '$0' = каждая пара ключ-значение в словаре
    - $0.key - это ключ(название продукта)
    - $0.value - это значение(цена)
 2. Сортировка МАССИВА кортежей используй метод 'sorted(by:)' для сортировки МАССИВА 'productTuplesArray' по убыванию ЦЕНЫ:
    - productTuplesArray.sorted { $0.price > $1.price } создает НОВЫЙ ОТСОРТИРОВАННЫЙ массив кортежей
    - $0 и $1 - это два соседних КОРТЕЖА в массиве
    - '$0.price > $1.price' сравни цены двух кортежей. Если цена первого кортежа >, то он будет идти РАНЬШЕ в отсортированном массиве (сортировка по УБЫВАНИЮ)
 3. выведи отсортированный массив кортежей в консоль 'sortedProductTuplesArray' */

/*
 ЗАДАЧА 9: есть МАССИВ чисел, преобразуйте его в СЛОВАРЬ, где ключом будет строка "четное" или "нечетное" в зависимости от того, является ли число четным / нечетным, а значением - массив чисел, соответствующий этому ключу. */
// ожидаемый результат:
["четное": [2, 4, 6, 8, 10], "нечетное": [1, 3, 5, 7, 9]]

let numberInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // есть массив чисел
var evenOddDict: [String: [Int]] = [:] // создай ПУСТОЙ словарь

for number in numberInt {
    if number % 2 == 0 {
        evenOddDict["четное", default: []].append(number)
    } else {
        evenOddDict["нечетное", default: []].append(number)
    }
}
print(evenOddDict) // ["четное": [2, 4, 6, 8, 10], "нечетное": [1, 3, 5, 7, 9]]

// COMMENTS:
/*
 1. Инициализация словаря - создай ПУСТОЙ словарь, ключи: строки ("четное"/"нечетное"), значения - массивы целых чисел - [Int].
 2. Перебор массива: for number in numberInt - перебирает КАЖДОЕ число в исходном МАССИВЕ 'numbers'
 3. Проверка на ЧЕТНОСТЬ:   if number % 2 == 0
 4. Добавление в СЛОВАРЬ:
    - evenOddDict["четное", default: []].append(number) -> если число ЧЕТНОЕ, эта строка добавляет его в массив, связанный с ключом 'четное' в словаре 'evenOddDict'.
    - если ключа 'четное' еще НЕ существует в словаре, то 'default: []' создает НОВЫЙ ПУСТОЙ массив и свзязывает его с этим ключом.
    - затем '.append(number)' добавляет ТЕКУЩЕЕ четное число в этот массив.
    - аналогично: если число НЕчетное, эта строка добавляет его в массив, связанный с ключом "нечетное".
 5. вывод результата в консоль -> print(evenOddDict)
 ЗАКЛЮЧЕНИЕ:
    - использование 'default: []' очень удобно, т.к. позволяет ИЗБЕЖАТЬ проверки НАЛИЧИЯ ключа ПЕРЕД добавлением элемента.
    - если ключ УЖЕ существует, то используется существующий массив,
    - если НЕТ - то создается НОВЫЙ пустой массив.
 Этот код эффективно разделяет числа из ИСХОДНОГО массива на четные и НЕчетные и сохраняет их в словаре соотв. с их типом. */

// Преобразование МАССИВА -> в СЛОВАРЬ с использованием 'zip()'
let keys = ["key1", "key2", "key3"]
let values = ["value1", "value2", "value3"]

let zipped = zip(keys, values) // объедени два массива ключей + значений с помощью zip
let dictionary = Dictionary(uniqueKeysWithValues: zipped)

print(dictionary) // ["key1": "value1", "key2": "value2", "key3": "value3"]
// COMMENTS:
/*
 1. 'keys' - это МАССИВ ключей, 'values' - это МАССИВ значений
 2. функция zip() объединяет два массива в по=>ть пар(КОРТЕЖЕЙ), где первый элемент - элемент из 1-го массива, а второй - из 2-го.
 3. создание СЛОВАРЯ с помощью инициализатора 'Dictionary(uniqueKeysWithValues:' на основе полученной по=>ти
 4. вывод полученнного словаря в консоль
 */
let keysName = ["Ann", "Bob", "Stuart", "John"] // массив строк
let valuesAge = [12, 21, 18, 10] // массив чисел

let zippedArray = zip(keysName, valuesAge) // объедени два массива РАЗНЫХ типов
let nameDict = Dictionary(uniqueKeysWithValues: zippedArray) // создай СЛОВАРЬ с 'Dictionary(uniqueKeysWithValues:'
print(nameDict) // ["Ann": 12, "Bob": 21, "Stuart": 18, "John": 10]

// Преобразование МАССИВА -> в СЛОВАРЬ c обработкой ПОВТОРЯЮЩИХСЯ КЛЮЧЕЙ
let letters = ["f", "g", "b", "a", "f", "g"]
let num = [1, 2, 3, 4, 5, 6]

var letterNumDict: [String: Int] = [:]
for (index, letter) in letters.enumerated() {
    letterNumDict[letter] = num[index]
}

print(letterNumDict) // ["f": 5, "a": 4, "b": 3, "g": 6]
// COMMENTS:
/*
1. цикл 'for (index, letter) in letters.enumerated()' -
    - это цикл 'for - in' перебирает массив 'letters' вместе с их индексами
    - 'letters.enumerated()' возвращает по=>ть пар(индекс, элемент)
    - 'index' это индекс текущего элемента в массиве 'letters'
    - 'letter' это текущий элемент массива 'letters'(буква)
2. 'letterNumDict[letter] = num[index]'
    - в теле цикла присваиваем значение элементу словаря 'letterNumDict' с ключом 'letter' значением 'num[index]'.
    - для каждой буквы из массива 'letters' находим соответств. число из массива 'num' по индексу
    - добавляем эту пару в словарь
    - если буква встречается НЕСКОЛЬКО раз -> ее значение в словаре будет ПЕРЕЗАПИСАНО последним соотв. числом.  */

// Преобразование МАССИВА -> в СЛОВАРЬ с помощью 'reduce(into:)'
let arr = [1, 3, 5, 7, 9, 11]

let dicti = arr.enumerated().reduce(into: [Int: Int]()) { (result, element) in
    if element.offset % 2 == 0 {
        if element.offset < arr.count - 1 {
            result[element.element] = arr[element.offset + 1]
        }
    }
}
print(dicti) // [9: 11, 5: 7, 1: 3]
// COMMENTS:
/*
 1. используй 'enumerated()' для получения пар(индексб значение) из массива
 2. '.reduce(into: [Int: Int]()' создает ПУСТОЙ СЛОВАРЬ [Int: Int] и итерируется по МАССИВУ
 3. внутри замыкания проверка - ЧЕТНЫЙ ли индекс 'element.offset < arr.count - 1' чтобы избежать ОШИБКИ, когда в массиве НЕчетное кол-во элементов
 4. 'result[element.element] = arr[element.offset + 1]' добавляет пару ключ-значение в словарь
    - ключ: текущий элемент 'element.element'
    - значение - следующий элемент в массиве 'arr[element.offset + 1'  */

// Преобразование МАССИВА -> в СЛОВАРЬ с помощью цикла 'for' (ПРОСТО + ЯСНО)
let array = ["3.14", "2.12", "1.12", "4.14"]
var dictio: [String: String] = [:]
for i in stride(from: 0, to: array.count - 1, by: 2) {
    dictio[array[i]] = array[i + 1]
}
print(dictio) // ["1.12": "4.14", "3.14": "2.12"]

// ЗАДАЧА 10. Напиши функцию, которая принимает МАССИВ Int и возвращает их сумму и среднее значение в виде КОРТЕЖА.
let arrayNum = [2, 4, 6, 8, 10, 12] // массив чисел
var tuple: (Double, Double) // объявляем кортеж для хранения результата(сумма и среднее)

func getNums(_ array: [Int]) -> (Double, Double) {
    let count = arrayNum.count // 6
    let summa = arrayNum.reduce(0, +) // 42
    let average = Double(summa) / Double(count) // вычисляем среднее + преобразуем в Double для точности
    return (Double(summa), average) // возвращаем кортеж с суммой и средним
}
tuple = getNums(arrayNum) // вызываем функцию и присваиваем результат кортежу

print("Сумма: \(tuple.0), Среднее значение: \(tuple.1)") // Сумма: 42.0, Среднее значение: 7.0

// ЗАДАЧА 11. Напиши функцию, которая принимает МАССИВ чисел типа Double и возвращает КОРТЕЖ, содержащий max/min значение в массиве и разницу между ними. Если массив ПУСТОЙ, функция должна вернуть nil.
let numsArray = [3.0, 2.0, 1.0, 4.0, 1.0, 2.0, 3.0, 5.0]
let maximum  = numsArray.max()!
let minimum = numsArray.min()!

func getMinMaxRenge(_ array: [Double]) -> (maximum: Double, minimum: Double, renge: Double)? {
    guard !array.isEmpty else { // проверь: не ПУСТ ли массив?
        return nil // возвращаем nil, если массив пустой
    }
    guard let maximum = numsArray.max(), let minimum = numsArray.min() else {  // находим max / min
        return nil // возвращаем nil, если не нашли min/max
    }
    let renge = maximum - minimum // вычисли разницу
    return (maximum: maximum, minimum: minimum, renge: renge)
    }
// пример использования
if let result = getMinMaxRenge(numsArray) {
    print("Максимум: \(result.maximum), минимум: \(result.minimum), разница: \(result.renge)")
} else {
    print("Массив пустой")
} // Максимум: 5.0, минимум: 1.0, разница: 4.0

// пример с ПУСТЫМ МАССИВОМ
let emptyArray: [Double] = []
if let result = getMinMaxRenge(emptyArray) {
    print("Максимум: \(result.maximum), минимум: \(result.minimum), разница: \(result.renge)")
} else {
    print("Массив пустой")
} // Массив пустой
// COMMENTS:
/*
1. проверка - является ли массив пустым? Если да, функция возвращает СРАЗУ nil
2. методы 'max()'/'min()' возвращают ОПЦИОНАЛЬНЫЕ значения (т.е. Double?) т.к. если массив пуст, то 'max()'/'min()'значения НЕ СУЩЕСТВУЕТ.
3. используй 'guard let'для БЕЗОПАСНОГО извлечения опционалов м выхода из функции, если значение = nil.  Код стал БЕЗОПАСЕН + ЧИТАЕМ.
4. функция 'getMinMaxRenge' теперь возвращает опциональный КОРТЕЖ  - (maximum: Double, minimum: Double, renge: Double)?
5. это означает: функция может вернуть либо кортеж с результатами, либо nil, если массив пустой.
6. нет необходимости преобразовывать Double -> в Int */

// ЗАДАЧА 12: создай КОРТЕЖ для хранения инфы о студенте(имя, возраст, специальность). Напиши функцию, которая принимает массив таких кортежей и выводит инфу о каждом студенте в консоль.

typealias Student = (name: String, age: Int, speciality: String)
func printStudentInfo(student: Student) {
    print("Имя: \(student.name), Возраст: \(student.age), Специальность: \(student.speciality)")
}
// функция для вывода инфы о массиве студентов
func printStudentInfo(students: [Student]) {
    for student in students {
        printStudentInfo(student: student)
    }
}
// пример использования
let student1: Student = ("Ann", 21, "IT")
let student2: Student = ("Bob", 22, "IT")
let student3: Student = ("Ron", 20, "IT")

let studentArray: [Student] = [student1, student2, student3]
printStudentInfo(students: studentArray) /* Имя: Ann, Возраст: 21, Специальность: IT
Имя: Bob, Возраст: 22, Специальность: IT, Имя: Ron, Возраст: 20, Специальность: IT */

// COMMENTS:
/*
1. typealias Student = (name: String, age: Int, speciality: String) - эта строка создает псевдоним типа 'Student' для кортежа, содержащего имя, возраст и спец-ть студента.
    Использование псевдонима - несколько ПРЕИМУЩЕСТВ:
    - читаемость кода: вместо того, чтобы КАЖДЫЙ раз писать (name: String, age: Int, speciality: String) -> используй короткое + понятное 'Student'. Особенно удобно, когда КОРТЕЖ использован в НСКОЛЬКИХ местах.
    - избегай ОШИБОК + упрощай поддержку кода: если нужно ИЗМЕНИТЬ структуру кортежа(напр. добавить поле "курс") -> нужно изменить ТОЛЬКО определение псевдонима 'Student', а НЕ ВСЕ места, где используется этот кортеж.
    - СЕМАНТИЧЕСКАЯ ясность: псевдоним 'Student' сразу дает понять: кортеж содержит инфу о студенте.
2. функция  'printStudentsInfo(students: Student)' принимает МАССИВ КОРТЕЖЕЙ типа 'Student'. Она ПЕРЕБИРАЕТ масссив и для КАЖДОГО студента вызывает функцию 'printStudentInfo' чтобы вывести его данные в консоль.
3. в примере использования создай ТРИ кортежа 'student1', 'student2', 'student3' - они представляют ИНФУ о РАЗНЫХ студентах.
4. Затем они ОБЪЕДИНЯЮТСЯ в массив 'studentArray', который передается в функцию 'printStudentsInfo' для вывода инфы обо ВСЕХ студентах.  */
