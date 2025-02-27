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

