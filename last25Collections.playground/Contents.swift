import UIKit

// REPEATING COLLECTIONS(Arrays + Sets + Dictionaries) + TUPLES
// Arrays
let arrayNum = [1, 2, 3, 4, 5, 6, 7]

let arrayString = ["one", "two", "three", "four", "five", "six", "seven", "nine", "ten"]
let arrayDouble = [2.11, 1.12, 3.14, 4.44, -12.12, -3.14]

// МНОГОМЕРНЫЕ МАССИВЫ

// Массивы МАССИВОВ - полезен для таблиц/матриц
let arrayOfArrays = [[1,2,3], [4,5,6], [1,2,3], [3,4,5], [2,3,4]]

// массивы ПОЛЬЗОВАТельских СТРУКТУР / КЛАССОВ

struct Child {
    let name: String
    let age: Int
}
var children = [Child(name: "John", age: 11), Child(name: "Ann", age: 8), Child(name: "Bob", age: 21)]

for child in children {
    print("Имя: \(child.name), возраст: \(child.age)")
}
// реализация протокола 'CustomStringConvertible'
struct Dog {
    let name: String
    let age: Int
    
    var description: String {
        return "Имя: \(name), Возраст: \(age)"
    }
}
var dogs = [Dog(name: "Rex", age: 1), Dog(name: "Brave", age: 2), Dog(name: "Hardy", age: 3)]
for dog in dogs {
    print(dog)
}

// массивы ПОЛЬЗОВАТельских КЛАССОВ

class Student {
    let name: String
    let job: String

// инициализация класса
    init(name: String, job: String) {
        self.name = name
        self.job = job
}
    
// метод для вывода инфы о ребенке
    func printInfo() {
        print("Имя: \(name), работа: \(job)")
    }
}
// создание массива ЭКЗЕМПЛЯРОВ класса 'Student'
var students = [
    Student(name: "Alica", job: "IT"),
    Student(name: "Alex", job: "IT"),
    Student(name: "ann", job: "IT")
]
// вывод инфы о студентах в массиве
for student in students {
    student.printInfo()
}

// массивы кортежей
var arrayOfTuple = [("John", 12), ("Ann", 21), ("Sara", 34), ("Bob", 32)]

let arrOfTuples = [(12, 12.121, true), (21, 21.21, false), (14, 14.14, true), (15, 15.15, false)]

// массив с ОПЦИОНальными типами данных

// объявление массива с опциональными строками
var optionalStrings: [String?] = ["John", nil, "Jane", nil, "Bob", "Kate"]
print("Массив с опциональными строками:")
print(optionalStrings)
// фильтрация массива для удаления 'nil'
var filteredStrings = optionalStrings.compactMap { $0 }
print("Массив ПОСЛЕ фильтрации:")
print(filteredStrings)

// перебор массива с проверкой на 'nil'
for  string in optionalStrings {
    if let unwrappedString = string {
        print("Строка: \(unwrappedString)")
    } else {
       print("Строка пуста")
    }
}

// объявление массива с ОПЦИОНальными целыми числами
var optionalInts: [Int?] = [1, nil, 2, 3, nil, 7, 6]

/* ЗАДАЧА: создай класс 'Book' со свойствами 'title' и 'author'. Создайте массив экземпляров этого класса и выведите инфу о каждой книге */
class Book {
    let title: String
    let author: String
    let yearOfPublication: Int
    
    init(title: String, author: String, yearOfPublication: Int) {
        self.title = title
        self.author = author
        self.yearOfPublication = yearOfPublication
    }
        func printInfa() {
            print("В \(yearOfPublication) году \(author) написал книгу '\(title)'.")
    }
}
// создание массива экземпляров класса
let arrayBooks = [
    Book(title: "Hobbit", author: "J.R.R.Tolkien", yearOfPublication: 1937),
    Book(title: "Treasure Island", author: "R.L.Stevenson", yearOfPublication:  1883),
    Book(title: "The White Company", author: "A.Conan Doyle", yearOfPublication:  1891)
]
// вывод инфы о КАЖДОЙ книге
for book in arrayBooks {
    book.printInfa()
}
/*
 ЗАДАЧА: создай структуру 'Movie' со свойствами 'title', 'director', 'yearOfRelease'. Создай массив экземпляров этой структуры и выведи инфу о каждом вильме в формате: "В году режиссер снял фильм с названием" */

struct Movie {
    let title: String
    let director: String
    let yearOfRelease: Int
    
    func description() {
        print("In \(yearOfRelease) year, famous director \(director) made the film \(title).")
    }
}
let arrayMovies = [
    Movie(title: "The Good, the Bad and the Ugly", director: "Sergio Leone", yearOfRelease: 1966),
    Movie(title: "Unforgiven", director: "Clint Eastwood", yearOfRelease: 1992),
    Movie(title: "Once Upon a Time in the West", director: "Sergio Leone", yearOfRelease: 1968)
]
for movie in arrayMovies {
    movie.description() // вызов метода для вывода инфы
}
/* ЗАДАЧА: напиши функцию, которая принимает ДВА словаря и возвращает НОВЫЙ словарь, объединяющий КЛЮЧИ из обоих словарей. Если ключи повторяются, ключи второго словаря должны заменять значения первого. */

func mergeDictionaries(dict1: [String: Int], dict2: [String: Int]) -> [String: Int] {
    var result = dict1 // создай КОПИЮ первого словаря, чтобы НЕ изменять ОРИГИНАЛ
// объедини ВТОРОЙ словарь с КОПИЕЙ первого
// если ключи повторяются, функция ЗАМЕНЯЕТ значение из result на значение из dict2
// closure { $1 } указывает, что при КОНФЛИКТЕ ключей следует брать значение из ВТОРОГО словаря
    result.merge(dict2) { $1 }
    return result // возвращаем объединенный словарь
}
// пример использования функции
let dict1 = ["a": 1, "b":2, "c": 3, "d": 4]
let dict2 = ["c": 7, "d": 9]
print(mergeDictionaries(dict1: dict1, dict2: dict2)) // ["d": 9, "b": 2, "c": 7, "a": 1]
/*
COMMENTS:
 1. эта функция эффективно объединяет ДВА словаря, сохраняя ПРИОРИТЕТ значений из ВТОРОГО словаря при конфликтах ключей
 2. используй метод 'merging(_:uniquingKeyWith:)' - он позволил ЯВНО указать КАКОЕ значение д.б. сохранено при конфликте ключей.
 3. используй функции высшего порядка для > СЛОЖНЫХ операций над словарями: 'filter', 'map', 'reduce' для ОБРАБОТКИ данных ПОСЛЕ объединения.
 4. РЕАЛЬНЫЕ ПРОЕКТЫ:
    НАГЛЯДНЫЙ ПРИМЕР -
    - есть два словаря настроек пользователя: один - по умолчанию, второй - пользовательские. ОБЪЕДИНИ их так, чтобы ПОЛЬЗОВАТельские настройки ПЕРЕОПРЕДЕЛЯЛИ настройки по умолчанию */

let defaultSettings: [String: String] = ["theme": "light", "language": "en"]
let userStrings: [String: String] = ["theme": "dark", "language": "rus"]
let mergedSettings = defaultSettings.merging(userStrings) { $1 }
print(mergedSettings) // ["theme": "dark", "language": "rus"]

/* ЗАДАЧА: напиши функцию, которая принимает массив КОРТЕЖЕЙ и возвращает МНОЖЕСТВО уникальных элементов из этих кортежей */

func extractUnuqueElements(from tuples: [(Int, Int, Int)]) -> Set<Int> {
    var uniqueElements: Set<Int> = []
    
    for tup in tuples {
        for element in [tup.0, tup.1, tup.2] {
        uniqueElements.insert(element)
        }
    }
    return uniqueElements
}
// пример использования
let tuples: [(Int, Int, Int)] = [(1, 2, 3), (2, 3, 4), (3, 4, 5)]
let unicueElements = extractUnuqueElements(from: tuples)
print(unicueElements) // [1, 3, 2, 4, 5]
/*
 COMMENTS:
 1. функция ПРИНИМАЕТ массив кортежей
 2. ВНЕШНИЙ цикл - итерируем по КАЖДОМУ кортежу ВНУТРИ массива
 3. ВНУТРЕННИЙ цикл - итерируем по КАЖДОМУ элементу кортежа, используя массив 'tup.0, tup.1, tup.2'
 4. добавляем КАЖДЫЙ элемент во МНОЖЕСТВО. */

// если использовать массивы вместо кортежей - это будет проще
func extractUniqueElements(from arrays: [[Int]]) -> Set<Int> {
    var uniqueElements: Set<Int> = []
    
    for array in arrays {
        for element in array {
            uniqueElements.insert(element)
        }
    }
    return uniqueElements
}
// пример использования
let arrays: [[Int]] = [[11, 12, 13], [12, 13, 14], [13, 14, 15]]
let uniqueElements = extractUniqueElements(from: arrays)
print(uniqueElements) // [13, 12, 11, 14, 15]

/* ЗАДАЧА: напиши функцию, которая принимает СЛОВАРЬ и МНОЖЕСТВО ключей и возвращает НОВЫЙ словарь, содержащий только ТЕ пары ключ-значение, ключи которых находятся в ЗАДАННОМ множестве. */
func filterDict(_ dict: [String: Int], keys: Set<String>) -> [String: Int] {
    var filteredDictionary: [String: Int] = [:]
    
    for (key, value) in dict {
        if keys.contains(key) {
            filteredDictionary[key] = value
        }
    }
    return filteredDictionary
}
// пример использования
let dicti: [String: Int] = ["a": 12, "b": 10, "c": 21, "d": 32]
let keys: Set<String> = ["a", "e", "f"]
let filteredDict = filterDict(dicti, keys: keys)
print(filteredDict) // ["a": 12]

// упрощение кода - используй метод 'filter' и инициализатор словаря
func filterDicti(_ dicti: [String: Int], keys: Set<String>) -> [String: Int] {
    return Dictionary(uniqueKeysWithValues: dicti.filter { keys.contains($0.key) })
}
// пример использования
let dictio: [String: Int] = ["a": 22, "b": 20, "c": 27, "d": 38]
let keys1: Set<String> = ["b", "d"]
let filterDict = filterDicti(dicti, keys: keys1)
print(filterDict) // ["b": 10, "d": 32]
