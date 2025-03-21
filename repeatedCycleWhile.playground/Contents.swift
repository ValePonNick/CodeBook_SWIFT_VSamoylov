import UIKit

// ЗАДАЧА: напиши функцию, которая имитирует остановку на определенной станции метро, используя цикл 'while'. Функция должна принимать массив названий станций и номер станции, на которой нужно остановиться.
func stopAtStation(stations: [String], targetStationNumber: Int) -> String {
    var currentStation = 0

    while currentStation < stations.count { // стобы ИЗБЕЖАТЬ выхода за пределы массива
        currentStation += 1
        if currentStation == targetStationNumber {
            return stations[currentStation - 1]
        }
    }
    return "Проехали!!!"
}
let metroStations = ["Юго-Западная", "Театральная", "Спортивная", "Университет", "Войковская", "Речной вокзал", "Библиотека", "Фрунзенская"]
let numberStation = 5
print(stopAtStation(stations: metroStations, targetStationNumber: numberStation)) // Войковская

// COMMENTS:
/* Почему вычитаем 1?
    1. Когда используем цикл, чтобы найти определённый элемент в массиве, мы увеличиваем счётчик (`currentStation`) на 1 в каждой итерации.
    2. Когда `currentStation` становится равным номеру станции, которую мы ищем (`index`), нам нужно вернуть элемент массива, соответствующий этому номеру.
    3. Однако, поскольку индексы начинаются с 0, а не с 1, нам нужно вычесть 1 из `currentStation`, чтобы получить правильный индекс в массиве. Напр.:
        •    Если хотим найти третью станцию, то `currentStation` будет равно 3. Но в массиве третья станция находится под индексом 2 (потому что индексация начинается с 0).
    4. Перевод `targetStationNumber`:  Номер станции назначения */

// Задача 1: Книжная библиотека
/* Напиши функцию, которая должна принимать массив названий книг и номер книги, которую нужно выдать. Используя цикл `while`, найдите и выдайте книгу по номеру. Если книги с таким номером нет, выведите сообщение “Книга не найдена”. */
// вар. 1
func findBook(bookTitles: [String], targetBookNumber: Int) -> String {
    var currentBookNumber = 0 // создали константу для хранения желаемой книги
    while currentBookNumber < bookTitles.count {
        currentBookNumber += 1
        if currentBookNumber == targetBookNumber {
            return bookTitles[currentBookNumber - 1]
        }
    }
    return "Книга не найдена"
}
let bookTitlesInLibrary = ["Hobbit", "Думай как математик", "Изучаем Swift", "Грокаем алгоритмы", "ИППУ", "Международное право", "The Lord of the Rings", "Sinderella"]
print(findBook(bookTitles: bookTitlesInLibrary, targetBookNumber: 2)) // Думай как математик

// вар. 2 КРАТКО + ЭФФЕКТИВНО
func findBooks(bookTitles: [String], targetTitleBook: Int) -> String {
    if targetTitleBook < 1 || targetTitleBook > bookTitles.count {
        return "Недопустимый номер книги"
    }
    return bookTitles[targetTitleBook - 1]
}
print(findBooks(bookTitles: bookTitlesInLibrary, targetTitleBook: 1)) // Hobbit

// COMMENTS:
/*  1. Этот вариант эффективен + прост, т.к. СРАЗУ проверяет валидность номера книги и возвращает результат без использования цикла.
    2. Циклы (`while`, `for`) используются, когда необходимо выполнить какие-то действия над КАЖДЫМ элементом коллекции, или когда нужно найти элемент по УСЛОВИЮ, которое НЕ СВЯЗАНО напрямую с ИНДЕКСОМ.
    3. если номер книги известен заранее, прямой доступ по индексу — лучший выбор.
    4. Если же нужно найти книгу по другому критерию (напр., по НАЗВАНИЮ), цикл м.б. > ПОДХОДЯЩИМ. */

// вар. 3  ЕЩЕ КОРОЧЕ - ??? с ОПЦИОНАЛОМ
func findBookInLibrary(bookTitles: [String], targetBookNumber: Int) -> String? {
    guard targetBookNumber > 0, targetBookNumber <= bookTitles.count else {
        return nil
    }
    return bookTitles[targetBookNumber - 1]
}

let bookTitlesInLibr = ["Hobbit", "Lord of the Rings", "Harry Potter", "Percy Jackson"]
if let book = findBookInLibrary(bookTitles: bookTitlesInLibr, targetBookNumber: 1) {
    print(book) // Hobbit
} else {
    print("Недопустимый номер книги")
}
// вар. 4 ТЕРНАРНЫЙ ОПЕРАТОР + ОПЦИОНАЛ
func findBookLibr(bookTitles: [String], targetBookNumber: Int) -> String? {
    return targetBookNumber > 0 && targetBookNumber <= bookTitles.count ? bookTitles[targetBookNumber - 1] : nil
}

let bookTitlesLibr = ["Hobbit", "Lord of the Rings", "Harry Potter", "Percy Jackson"]
if let book = findBookLibr(bookTitles: bookTitlesLibr, targetBookNumber: 3) {
    print(book) // Hobbit
} else {
    print("Недопустимый номер книги") // Harry Potter
}
// COMMENTS:
/*
    1. Этот вариант использует тернарный оператор для сокращения кода,
    2. но он по-прежнему ЧИТАЕМ + ПОНЯТЕН. */

// вар. 6 MAX КРАТКО, но СЛОЖЕН и менее ЧИТАЕМ
func findingBookInLibrary(bookTitles: [String], targetBookNumber: Int) -> String? {
    return bookTitles.indices.contains(targetBookNumber - 1) ? bookTitles[targetBookNumber - 1] : nil
}
// COMMENTS: используй `indices.contains` -> проверь, есть ли такой индекс в массиве?

// Задача 2: Дорога
/* Напишите программу, которая имитирует движение по дороге. Используя цикл `while`, выводите сообщения о пройденных километрах до тех пор, пока не будет достигнута определённая дистанция (например, 100 км). */
func calculateWays(distance: Double) -> String {
    var currentDistance = 0.0
    
    while currentDistance < distance {
        currentDistance += 3.0
        print("Пройдено \(currentDistance) километров.")
    }
    return "Путь завершен. Пройдено \(currentDistance) километров."
}
let way = calculateWays(distance: 12.0)
print(way)

// ОШИБКИ:
/*
 1. условие цикла - цикл д.б. завершен, КОГДА 'currentDistance' превосходит целевую дистанцию - гарантия достижения цели.
 2. сообщение о ЗАВЕРШЕНИИ пути выводится ПОСЛЕ цикла, а не ВНУТРИ него.
 3. функция возвращает СТРОКУ с ПОЛНЫМ описанием пройденного расстояния. */

/* ЗАДАЧА 3: Дорога 3.0: напиши программу, которая имитирует движение по дороге. Используя цикл 'while' выводи сообщение о пройденных километрах, пока не б. достигнута ЦЕЛЕВАЯ ДИСТАНЦИЯ. Если целевая дистанция НЕ КРАТНА 3.0 (3 км), завершите движение на последнем шаге до цели. */
func calcWay(targetDistance: Int, transport: String) -> String {
    var currentWay = 0.0
    let step: Double
    switch transport {
    case "пешком": step = 3.0
    case "на велосипеде": step = 5.0
    default: step = 3.0
    }

    while currentWay < Double(targetDistance) {
       let remain = targetDistance - Int(currentWay)
        
        // если остаток >= шагу -> двигаемся на полный шаг
        if remain >= Int(step) {
            currentWay += step
            print("Пройдено \(String(format: "%.1f", currentWay)) километров.")
        } else {
            // если остаток < шага -> заверши движение
            currentWay += Double(remain)
            print("Движение завершено. Пройдено \(String(format: "%.1f", currentWay)) километров.")
            break
        }
    }
    return "Путь завершен. Пройдено \(String(format: "%.1f", currentWay)) километров."
}
let ways = calcWay(targetDistance: 12, transport: "на велосипеде")
print(ways) // Путь завершен. Пройдено 12.0 километров. */

// Задача 3: Музыкальный плейлист
 
/* Напишите функцию, которая проигрывает музыкальный плейлист. Функция должна принимать массив названий песен и проигрывать их по порядку, используя цикл `while`. Если плейлист закончился, выведите сообщение “Плейлист завершён”. */

func playList(songTitles: [String]) {
    var index = 0
    
    while index < songTitles.count {
        print("Текущая песня - \(songTitles[index])")
        index += 1
    }
    print("Плейлист завершен")
}
let playListOfSongs = ["Lady in red", "Chingizhan", "Осень", "Опиум", "О море, море", " October and April"]
playList(songTitles: playListOfSongs)
// COMMENTS:
/*
 1. Разница между `вывести` и `вернуть` сообщение в программировании заключается в:
    - назначении
    - последствиях.
Вывести сообщение (`print()` -
 •    Что делает: Отображает текст в консоли или интерфейсе программы.
 •    Когда использовать: показать результат пользователю или отладить код.
 Вернуть сообщение (`return` в Swift)
     •    Что делает: Передаёт значение обратно вызывающей части программы.
 •    Когда использовать: результат функции нужен для дальнейшей обработки в другом месте программы.
 Почему это важно в вашем коде?
 В задаче требуется вывести сообщение (“Плейлист завершён”), а не вернуть его. Если функция возвращает строку, но не выводит её через `print()`, сообщение останется НЕвидимым для пользователя.
 Итог:
     •    `print()` — для отображения информации.
     •    `return` — для передачи результата функции.
 В вашем случае нужен `print()`, чтобы сообщение было ВИДНО. */

/* ЗАДАЧА 4: напиши функцию, которая выводит число от 1 до ЗАДАННОГО числа, но с УСЛОВИЕМ - если число:
    - четное - выводи его значение,
    - НЕ четное - выводите слово "нечетное" */

func displayNums(inputNum: Int) {
    var number: Int = 1
    while number <= inputNum {
        if number % 2 == 0 {
            print(number)
        }
        number += 1
    }
    print("нечетное")
}

displayNums(inputNum: 12)

// ЗАДАЧА 5: напиши цикл 'while', который умножает число на 2, пока его значение остается < 100.
var number = 1
while number < 12 {
    number = number * 2
}

// ЗАДАЧА 6: напиши цикл 'repeat-while', который умножает число на 2, пока его значение остается < 100.
var num = 1
repeat {
    num = num * 2
} while num < 21

// ЗАДАЧА 7: напиши простую игру, которая начинается с уровня 1 и завершается на уровне 12, используя цикл 'repeat-while'.
var currentLevel = 1
var winningLevel = 12

repeat {
    print("We're at level \(currentLevel) of \(winningLevel)!")
    currentLevel = currentLevel + 1
} while currentLevel < winningLevel
print("Game finished!")
