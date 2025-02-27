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
