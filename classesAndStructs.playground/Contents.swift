import UIKit

// 10. CLASSES && STRUCTS: классы и структуры

// 1. Напиши простые классы с наследованием  и без

// это КЛАСС БЕЗ наследования
class Car {
    let make: String
    let model: String
    let year: Int
    let enginePower: Int
    
    // инициализатор
    init(make: String, model: String, year: Int, enginePower: Int)
    {
        self.make = make
        self.model = model
        self.year = year
        self.enginePower = enginePower
    }
    // метод для отображения инфы о машине
    func displayInfo() {
        print("марка: \(make), модель: \(model), год выпуска: \(year), мощность двигателя в л/с: \(enginePower)")
    }
}
// создание ЭКЗЕМПЛЯРА класса Car
let myCar = Car(make: "Toyota", model: "Rav-4", year: 2015, enginePower: 182)
// вызов метода для отображения
myCar.displayInfo()
/* COMMENTS:
1. класс Car имеет четыре свойства: марка, модель, год, мощность двигателя в л/с
2. инициализатор - метод 'init' -> для создания экз-ра класса с ЗАДАННЫМИ значениями свойств
3. NB: этот класс НЕ наследует от др. классов и м. б. использован АВТОНОМНО */

// КЛАСС С НАСЛЕДОВАНИЕМ
class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func makeSound() {
        print("Animal sound")
    }
}
class Dog: Animal {
    
    override func makeSound() {
        print("Woof! Woof!")
    }
}
class Cat: Animal {
    override func makeSound() {
        print("Meow! Meow!")
    }
}
//
// пример использования
let dog = Dog(name: "Rex")
dog.makeSound()
let cat = Cat(name: "Shadow")
cat.makeSound()

// это чисто/конкретно мой код
class Writers {
    var name: String = ""
    var country: String = ""
    var nickname: String = ""
    var mainBook: String = ""
}

var writer = Writers()

writer.name = "J.R.R. Tolkien"
writer.country = "England"
writer.nickname = "J.R.R."
writer.mainBook = "Hobbit"
print("\(writer.name) was born in \(writer.country). He is an author of the variety of books, but most famoius - \(writer.mainBook).")

writer.name = "R.L. Stivenson"
writer.country = "England"
writer.nickname = "R.L."
writer.mainBook = "Treasure island"
print("\(writer.name) was born in \(writer.country). He is an author of the variety of books, but most famous - \(writer.mainBook).")
// сделала САМА и НИКУДА ни разу НЕ ПОДСМотрела!!!
/*
 сравним с вариантом от perplexity: определение класса для представления любимых писателей
 NB: прозвище писателя - опционально + добавила пол автора!
*/
enum Gender {
    case male, female
}

class favoriteWriters {
    // свойства класса: имя, страна, прозвище и главная книга
    let name: String
    let country: String
    var nickname: String?
    let mainBook: String
    let gender: Gender // добавим свойство для указания пола
    
    // инициализация класса для задания свойства при создании экземпляра
    init(name: String, country: String, nickname: String? = nil, mainBook: String, gender: Gender) {
        self.name = name
        self.country = country
        self.nickname = nickname
        self.mainBook = mainBook
        self.gender = gender
        
    }
    // метод для вывода инфы о писателе
    /*
     COMMENTS:
     1. формирование строки с прозвищем
     2. если 'nickname' не 'nil' - добавим скобки
     3. если 'nickname' - 'nil' - то возвращается пустая строка
     */
    func printInfo() {
        // формирование строки с прозвищем, если оно есть
        let nicknameText = nickname.map { " (\($0))" } ?? ""
        let pronoun: String
        switch gender {
        case .male:
            pronoun = "He"
        case .female:
            pronoun = "She"
        }
        
        // вывод инфы о писателе
        print("\(name) was born in \(country). \(pronoun) is an author of the variety of books, but most famous - \(mainBook).")
        }
    }

// использование класса
var favoriteWriter1 = favoriteWriters(name: "Agatha Christie", country: "England", nickname: "", mainBook: "Murder on the Orient Express", gender: .female)
// вывод инфы о ПЕРВОМ писателе
favoriteWriter1.printInfo()
// создание нового экземпляра для второго писателя
var favoriteWriter2 = favoriteWriters(name: "Arthur Conan Doyle", country: "England", nickname: "", mainBook: "The White Company", gender: .male)
// вывод инфы о ВТОРОМ писателе
favoriteWriter2.printInfo()
/*
 2. Напиши консольное приложение: в нем создать класс 'House' и в нем несколько свойств - 'width', 'height', и несколько методов - 'build'(вывлдит на экран ширину * высоту), 'getWidth' и 'getHeight' выводят на экран соотв-но ширину и высоту. */
class House {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    func build() -> Int {
        let square = width * height
        return square
    }
    func getWidth() {
        print("Ширина дома = \(width)")
    }
    func getHeight() {
        print("Высота дома = \(height)")
    }
}

// создай экземпляр класса House
let myHouse = House(width: 100, height: 60)
//  вызов метода build() для ЭКЗЕМПЛЯРА myHouse
let area = myHouse.build()
// вызов методов getWidth(), getHeight()
myHouse.getHeight()
myHouse.getWidth()
/*
 3. Напиши класс:
- в нем метод, который будет принимать букву(одну, м.б. типа string, просто будете передавать ему одну букву) и возвращать все имена, которые начинаются на эту букву.
 напр.: А - Алексей, Александр, Артем, Антон и пр. Внутри метода / полем класса (как удобно) задайте массив строк, в котором прописаны имена - их просто захардкодить т.е. не подгружаем откуда-то. Метод д.б. вернуть отфильтрованный массив с именами.
  - написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль каждое имя с новой строки. Этим методом распечатать на консоль то, что получилось отфильтровать. */

class Names {
    let letter: Character
    let name: String
    
    init(letter: Character, name: String) {
        self.letter = letter
        self.name = name
    }
   
        var namesArray = ["Bob", "Brendan", "Ann", "Anthony", "Alex", "Bo", "Arthur", "Abie", "Barac", "Barny", "Bailey", "Alf", "Brad"]
    var groupedNames: [Character: [String]] = [:]
        func groupNames() {
            for name in namesArray {
                let firstLetter = name.first!
                if var names = groupedNames[firstLetter] {
                    names.append(name)
                    groupedNames[firstLetter] = names
                } else {
                    groupedNames[firstLetter] = [name]
                }
            }
            
            for (letter, names) in groupedNames {
                print("\(letter): \(names)")
            }
    }
}
// создай экземпляр класса
let myNames = Names(letter: "A", name: "Alex")
// вызов функции группировки имен
myNames.groupNames()
// COMMENTS:
/*
Шаг 1. определение класса 'Names'
- класс 'Names' определим с двумя свойствами, которые инициализируются через конструктор 'init'
 - 'init' - это спец. МЕТОД, он вызывается при создании НОВОГО экземпляра класса
 - 'init' инициализирует свойства 'letter' + 'name'
Шаг 2. Определение массива имен и словаря для группировки
 - 'namesArray' - массив строк, содержащий имена
  - 'groupedNames' - СЛОВАРЬ, где ключ: символ "Character', а значение: массив строк - это используется для группировки имен по первой букве
Шаг 3. функция группировки имен
 - цикл 'for' перебирает каждый элемент в 'arrayNames'
 - 'firstLetter' извлекает ПЕРВУЮ букву каждого имени
 - проверка наличия ключа в словаре:
    если ключ 'firstLetter' уже существует в словаре, то добавляет текущее имя в соотв. массив,
    НО если ключа НЕТ, то создает новый массив с текущим именем
 - вывод рез-тов: после группировки всех имен -> печатает кажздую группу по новой букве
Шаг 4. создание экземпляра
 - создает новый экземпляр 'myNames' класса 'Names' c инициализацией "letter' + 'name'
 - вызов функции 'groupNames' - запускае функцию группировки имен и выводит рез-ты
СИНТАКСИС и ЛОГИКА:
 1. использваны стандартные конструкции Swift: классы, свойства, конструкторы, циклы и словари
 2. логика группировки: основана на переборе массива имен и использовании словаря для группировки по первой букве каждого имени
 РЕЗУЛЬТАТ: этот код демонстирует базовые концепции Swift и ПРОСТУЮ логику группировки данных. */

/*
 4. напиши класс, который формирует массив учеников, сортирует и считает кол-во этих учеников. Если учеников >  30, то выведи сообщение 'в школе нет мест'. */

class Child {
    let name: String
    let age: Int
    let gender: String
    
    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func groupedChildrensByName(children: [Child]) -> [String: [Child]] {
        var groupedChildren = [String: [Child]]()
        for child in children {
            var firstLetter = String(child.name.first!)
            if groupedChildren[firstLetter] == nil {
                groupedChildren[firstLetter] = []
            }
            // добавь школьника в соотв. массив
        groupedChildren[firstLetter]?.append(child)
        }
        return groupedChildren
    }
}
// пример использования
var children = [
    Child(name: "Bob", age: 11, gender: "male"),
    Child(name: "Brendan", age: 14, gender: "male"),
    Child(name: "Anthony", age: 10, gender: "male"),
    Child(name: "Arthur", age: 13, gender: "male"),
    Child(name: "Anna", age: 11, gender: "female"),
    Child(name: "Alf", age: 12, gender: "male"),
    Child(name: "Alex", age: 10, gender: "male"),
    Child(name: "Barac", age: 11, gender: "male"),
    Child(name:  "Brad", age: 15, gender: "male"),
    Child(name: "Ann", age: 12, gender: "female")
]
let child = Child(name: "Example", age: 0, gender: "uncnown")
let group = child.groupedChildrensByName(children: children)
                                
for (key, value) in group {
    print("Группа по букве \(key):")
for child in value {
    print("Имя: \(child.name), Возраст: \(child.age), Пол: \(child.gender)")
    }
}
 /*
// 5. Создай 5 - 10 своих структур.

// 6. создай список покупок! Код пишет продукты в массив. Если вызываем опр. продукт -> в консоли пиши типа "Мед - куплено!" */

/* ЗАДАНИЯ от PERPLEXITY:
 
 1. Практика с классами и объектами
     •    Создайте класс для описания книги с свойствами `title`, `author`, и `yearOfPublication`.
     •    Реализуйте функцию, которая выводит информацию о книге.*/
class Book {
    let title: String
    let author: String
    let yearOfPublication: Int
    
    init(title: String, author: String, yearOfPublication: Int) {
        self.title = title
        self.author = author
        self.yearOfPublication = yearOfPublication
    }
    
    func displayBook() {
        print("Книга \(title) написана \(author) в \(yearOfPublication) году.")
    }
}
    
// создай экземпляр класса ВНЕ класса!
var myBook = Book(title: "'The Shining'", author: "Stephen King", yearOfPublication: 1977)
myBook.displayBook()
myBook = Book(title: "'Грокаем алгоритмы'", author: "Адитья Бхаргава", yearOfPublication: 2022)
myBook.displayBook()

/* COMMENTS:
1. в методе 'displayBook()' НЕ НУЖНО передавать параментры, т.к. он использует СВОЙСТВА КЛАССА
2. экземпляр класса д.б. создан ВНЕ КЛАССА
3. при вызове метода 'displayBook()' НЕ НУЖНО передавать параметры т.к. они УДАЛЕНЫ из метода
 ЛОГИКА КОДА:
 создает класс 'Book()' - экземпляр которого выводит инфу о книге в консоль */

/*
 2. Работа со словарями
     •    Создайте словарь, где ключом является название страны, а значением — ее столица.
     •    Напишите функцию, которая принимает название страны и возвращает ее столицу.*/

var countriesCapitals = ["USA": "Vashington", "Albania": "Tirana", "Italy": "Rom", "Finland": "Helsinki", "Vatican City": "Vatican City"]

@MainActor func getCapital(for country: String) -> String? {
    return countriesCapitals[country]
}
// пример использования
if let capital = getCapital(for: "France") {
    print("Столица Франции - \(capital)")
} else {
    print("Столица не найдена")
}
if let capital = getCapital(for: "Vatican City") {
    print("Столица Ватикана - \(capital)")
} else {
    print("Столица не найдена")
}

/* COMMENTS:
1. словарь 'countriesCapitals' хранит название стран как ключи и столицы как значения
2. функция 'getCapital(for:)' принимает название страны и возвращает ее столицу. ЕСЛИ страна НЕ НАЙДЕНА, функия возвращает 'nil'  */

/* 3. Группировка данных
     •    Создайте массив структур (или классов), представляющих людей с именем и возрастом.
     •    Напишите функцию, которая группирует людей по возрасту. */
// создай структуру студента
struct Student {
    var name: String
    var age: Int
}
// напиши функцию, которая группирует студентов по возрасту
func groupedStudentsByAge(students: [Student]) -> [Int: [Student]] {
    var grupedStudents = [Int: [Student]]()
    for student in students {
        // если ключа еще НЕТ в словаре, создай новый массив
        if grupedStudents[student.age] == nil {
            grupedStudents[student.age] = []
        }
        // добавь студента в соотв. массив
        grupedStudents[student.age]?.append(student)
        }
    return grupedStudents
}
// пример использования
var students: [Student] = [
    Student(name: "Ann", age: 12),
    Student(name: "Alice", age: 15),
    Student(name: "Alex", age: 10)
    ]
let grouped = groupedStudentsByAge(students: students)
// вывод результата
for (age, students) in grouped {
    print("Возраст \(age):")
    for student in students {
        print(" - \(student.name)")
    }
}
/* COMMENTS:
1. структура 'Student' определяет модель данных с двумя свойствами: имя + возраст
2. функция 'groupedStudentsByAge'
    - принимает массив студентов
    - создает пустой СЛОВАРЬ 'grupedStudents', где ключ - это возраст, а значение - это массив студентов
    - перебирает КАЖДОГО студента в массиве и добавляет его в соотв. массив по возрасту
3. ПРИМЕР ИСПОЛЬЗОВАНИЯ:
    - создай массив студентов
    - вызови функцию для группировки
    - результат выведи в консоль */

/*
 4. Работа с массивами
     •    Создайте массив чисел и напишите функцию, которая находит максимальное и минимальное значения в массиве.
     •    Реализуйте функцию сортировки массива по возрастанию или убыванию. */
let numbersInt = [112, 812, 214, 314, 7, 5, 1234, 77, 2]
if let minNumber = numbersInt.min(), let maxNumber = numbersInt.max() {
    print("Минимальное число: \(minNumber)")
    print("Максимальное число: \(maxNumber)")
} else {
    print("Массив пуст")
}
// функция сортировки массива по возрастанию
let sortedAscending = numbersInt.sorted()
print("Отсортированный массив по возрастанию: \(numbersInt)")
// функция сортировки массива по  убыванию
let sortedDescending = numbersInt.sorted { $0 > $1 }
print("Отсортированный массив по убыванию: \(numbersInt)")
// COMMENTS:
/*
 1. используй ВСТРОЕННУЮ ФУНКЦИЮ 'sorted()' сортирует массив по возрастанию ПО УМОЛЧАНИЮ!
 2. 'sorted { $0 > $1 }' сортирует массив по УБЫВАНИЮ, используя closure - ЗАМЫКАНИЕ, которое сравнивает элементы в ОБРАТНОМ порядке */
