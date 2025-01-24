import UIKit

// 10. CLASSES && STRUCTS: классы и структуры

// 1. Напиши простые классы с наследованием  и без

/*
 2. Напиши консольное приложение: в нем создать класс 'House' и в нем несколько свойств - 'width', 'height', и несколько методов - 'build'(вывлдит на экран ширину * высоту), 'getWidth' и 'getHeight' выводят на экран соотв-но ширину и высоту. */

/*
 3. Напиши класс:
- в нем метод, который будет принимать букву(одну, м.б. типа string, просто будете передавать ему одну букву) и возвращать все имена, которые начинаются на эту букву.
 напр.: А - Алексей, Александр, Артем, Антон и пр. Внутри метода / полем класса (как удобно) задайте массив строк, в котором прописаны имена - их просто захардкодить т.е. не подгружаем откуда-то. Метод д.б. вернуть отфильтрованный массив с именами.
  - написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль каждое имя с новой строки. Этим методом распечатать на консоль то, что получилось отфильтровать. */
/*
 4. напиши класс, который формирует массив учеников, сортирует и считает кол-во этих учеников. Если учеников >  30, то выведи сообщение 'в школе нет мест'.
 */
// 5. Создай 5 - 10 своих структур.

// 6. создай список покупок! Код пишет продукты в массив. Если вызываем опр. продукт -> в консоли пиши типа "Мед - куплено!"

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
