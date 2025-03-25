import UIKit

// repeated Optional Types: syntax & logic

/* ЗАДАЧА 1: напиши код, который содержит любимую цитату, а в случае ее отсутствия - выведи сообщение "I don't have a favorite quote". */

var favoriteQuote: String = "In a Hole in the ground there lived a Hobbit..."

if favoriteQuote != "" {
    print("My favorite quote is: \(favoriteQuote)")
} else {
    print("I don't have a favorite quote")
}
// COMMENTS:
/*  1. НО если любимой цитаты НЕТ и строка - ПУСТА, программа выыведет сообщение: "I don't have a favorite quote". ОДНАКО пустая строка - это просто ПУСТАЯ СТРОКА, а не любимая цитата.
    2. эту проблему решают опционалы - они способны представить ПОТЕНЦИАЛЬНОЕ отсутствие чего-либо. */

/* Задача 2: напиши код, который содержит структуру person и два экземпяра. Один пьет много чашек кофе ежедневно, а другой - вообще НЕ пьет - БЕЗ ОПЦИОНАЛА */
struct Person {
    let name: String
    let coffeesConsumed: Int
    var drinksCofee: Bool
    let canDrinkCofee: Bool
    
    func describeCofeeHabits() {
        if !canDrinkCofee {
            print("\(name) не может пить кофе.")
        } else if drinksCofee {
            print("\(name) выпивает \(coffeesConsumed) чашек кофе в день")
        } else {
            print("\(name) может пить кофе, но сегодня не пьет")
        }
    }
}
let josh = Person(name: "Josh", coffeesConsumed: 5, drinksCofee: true, canDrinkCofee: true)
let tom = Person(name: "Tom", coffeesConsumed: 0, drinksCofee: false, canDrinkCofee: false)

print(josh.describeCofeeHabits()) // Josh выпивает 5 чашек кофе в день
print(tom.describeCofeeHabits()) // Tom не может пить кофе.
/* COMMENTS:
 1. код корректен
 2. это решение НЕ так ГИБКО + ЭЛЕГАНТНО, как использование опционалов */

// Опциональные типы и обработка ОТСУТСТВУЮЩИХ данных
/*
    1. чтобы получить ДОСТУП к значению опционального ТИПА -> его нужно РАСПАКОВАТЬ,
    2. т.к. опционал. ТИП может содержать либо Int, либо nil (т.е. ВООБЩЕ НИЧЕГО)
    3. его необходимо распаковать ПЕРЕД использованием.
    4. с Int м.б. выполнены АРИФМЕТИЧЕСКИЕ операции, которые НЕ м.б. выполнены с nil. */

// Распаковка ОПЦИОНАЛЬНЫХ ТИПОВ

// см. УЛУЧШЕННУЮ структуру 'Person':
    
// см. ЭКЗЕМПЛЯРЫ, созданные на базе этой структуры:

// что произойдет, если вывести СВОЙСТВА этих двух ЭКЗЕМПЛЯРОВ структуру 'Person'? -> далеко НЕ ИДЕАЛЬНЫЙ результат!

    /*  Alex has consumed Optional(7) coffees.
        Tom has consumed nil coffees. */
    
struct Persons {
    var name: String
    var coffeesConsumed: Int? = nil
    
    init(name: String) {
        self.name = name
    }
    init(name: String, coffeesConsumed: Int?) {
        self.name = name
        self.coffeesConsumed = coffeesConsumed
    }
}
let alex = Persons(name: "Alex", coffeesConsumed: 7)
let tommy = Persons(name: "Tom", coffeesConsumed: nil)
print("\(alex.name) has consumed \(String(describing: alex.coffeesConsumed ?? nil)) coffees.")   // Alex has consumed Optional(7) coffees.
print("\(tommy.name) has consumed \(String(describing: tommy.coffeesConsumed ?? nil)) coffees.")     // Tom has consumed nil coffees.

/* Что получили?
 1. Нужное число УПАКОВАНО в КОНСТРУКЦИЮ Optional()
 2. Optional(7) coffees - это значение относится к ТИПУ Optional<Int>, НО НЕ Int.
 3. если я хочу работать с Int -> нужно РАСПАКОВАТЬ опциональный ТИП */

if let coffees = alex.coffeesConsumed {
    print("The unwrapped value is: \(coffees).")
} else {
    print("Nothing in there.")
}
// COMMENTS:
/*
    1. использование 'if let' распаковывает переменную с ПРОВЕРКОЙ условия
    2. если здесь - alex.coffeesConsumed  - присутствует значение, оно будет присвоено 'coffees'.
    3. если в распаковываемом типе значение ОТСУТСТВУЕТ, будет выполнено условие 'else'. */

// КЛЮЧЕВЫЕ МОМЕНТЫ:
/*  1. опциональные ТИПЫ позволяют обрабатывать ФАКТ ОТСУТСТВИЯ данных.
    2. ЛЮБОЙ ТИП (включая кастомные) м.б. созданы в опциональной версии.
    3. опциональная версия ТИПА создается ОПЕРАТОРОМ ?
    4. опциональный ТИП может содержать все, что может содержать обычнй ТИП или же значение 'nil' как полное отсутствие какого-либо значения.
    5. обращение к данным в опциональном типе ТРЕБУЕТ дополнительного шага - т.н. РАСПАКОВКИ. */

// ЗАДАЧА 3:
var magicNumber: Int? = nil
magicNumber = 5
magicNumber = nil
if let number = magicNumber {
    if number == 5 {
        print("Magic!")
    }
} else {
    print("No magic!")
} // No magic!

// ЗАДАЧА 4:
var soupOfTheDay: String? = "French Onion"
if let soup = soupOfTheDay {
    print("The soup of the day is \(soup)")
} else {
    print("There is no soup of the day today!")
} // The soup of the day is French Onion"

// ЗАДАЧА 5:
var mineral: String? = "Quartz"
if let stone = mineral {
    print("The minereal is \(stone)")
} // The minereal is Quartz

// ЗАДАЧА 6:
var name: String? = "Bob"
if let person = name {
    if person == "Bob" {
        print("Bye, Bob!")
    }
} // Bye, Bob!

/* Задача 7: Создай структуру `Book`, которая имеет следующие свойства: `title` (строка), `author` (строка) и `yearOfPublication` (целое число). Одно из свойств должно быть опциональным. Назначьте значения этим свойствам и выведите их на экран. */

struct FantasyBook {
    let title: String
    let author: String
    var yearOfPublication: Int?
}

let hobbitBook = FantasyBook (title: "Hobbit", author: "J.R.R.Tolkien", yearOfPublication: 1934)
print(hobbitBook.title) // Hobbit
print(hobbitBook.author) // J.R.R.Tolkien
if let yearOfPublication = hobbitBook.yearOfPublication {
print("Год публикации: \(yearOfPublication)")
} else {
    print("Год публикации не указан") // Год публикации: 1934
}

// COMMENTS:
/*
 1. инициализируем экземпляр `Book` и выводим его свойства.
 2. Для опционального свойства `yearOfPublication` - используем `if let`, чтобы безопасно распаковать его значение и вывести на экран.
 3. Если значение `nil`, то будет выведено сообщение об отсутствии года публикации. */

// Задача 8:
/*
Добавьте условие: если год публикации книги позже 2000 года, то выведите сообщение “Книга современная”. Иначе выведите “Книга классическая”. */
struct Book {
    let title: String
    let author: String
    var yearOfPublication: Int?
}

let hobbit = Book(title: "Hobbit", author: "J.R.R.Tolkien", yearOfPublication: 1934)
print(hobbit.title) // Hobbit
print(hobbit.author) // J.R.R.Tolkien
if let yearOfPublication = hobbit.yearOfPublication {
    print("Год публикации: \(yearOfPublication)") // Год публикации: 1934
    
    if yearOfPublication > 2000 {
        print("Эта книга современная")
    } else {
        print("Эта книга классическая") // Эта книга классическая
    }
} else {
    print("Год публикации не указан")
    print("Книга не классифицируется")
}
// COMMENTS:
/*
 1. условие для классификации книги как современной/классической находится ВНУТРИ блока `if let`, где мы УЖЕ знаем, что год публикации существует.
 2. Если год публикации `nil`, то выводится сообщение о том, что книга не классифицируется. */

/* ЗАДАЧА 9. проверь условие для нескольких книг: создай несколько экземпляров `Book` с разными годами публикации и проверь, как работает код для каждого из них. */

let lordOfRings = Book(title: "The Lord of the Rings", author: "J.R.R.Tolkien", yearOfPublication: 1954)
print(lordOfRings.title)
print(lordOfRings.author)
if let yearOfPublication = lordOfRings.yearOfPublication {
    print("Год публикации: \(yearOfPublication)") // Год публикации: 1954
    
    if yearOfPublication > 2000 {
        print("Эта книга современная")
    } else {
        print("Эта книга классическая") // Эта книга классическая
    }
} else {
    print("Год публикации не указан")
    print("Книга не классифицируется")
}
let swiftForKids = Book(title: "Coding iPhone Apps for Kids", author: "Gloria Winquist ", yearOfPublication: 2017)
print(swiftForKids.title) // Coding iPhone Apps for Kids
print(swiftForKids.author) // Gloria Winquist
if let yearOfPublication = swiftForKids.yearOfPublication {
    print("Год публикации: \(yearOfPublication)") // Год публикации: 2017
    
    if yearOfPublication > 2000 {
        print("Эта книга современная")
    } else {
        print("Эта книга классическая") // Эта книга современная
    }
} else {
    print("Год публикации не указан")
    print("Книга не классифицируется")
}
