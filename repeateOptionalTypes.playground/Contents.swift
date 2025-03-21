import UIKit

// repeated Optional Types: syntax & logic

var number: Int! = nil
number = 21

var favoriteQuote: String = "In a Hole in the ground there lived a Hobbit..."

if favoriteQuote != "" {
    print("My favorite quote is: \(favoriteQuote)")
} else {
    print("I don't have a favorite quote")
}
// COMMENTS:
/*
    1. НО если любимой цитаты НЕТ и строка - ПУСТА, программа выыведет сообщение: "I don't have a favorite quote". ОДНАКО пустая строка - это просто ПУСТАЯ СТРОКА, а не любимая цитата.
    2. эту проблему решают опционалы - они способны представить ПОТЕНЦИАЛЬНОЕ отсутствие чего-либо.
 */

// Для чего нужны опциолнальные ТИПЫ?

/* Задача: напиши код, который содержит структуру person и два экземпяра. Один пьет много чашек кофе ежедневно, а другой - вообще НЕ пьет - БЕЗ ОПЦИОНАЛА */
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

// ЗАДАЧА:
var magicNumber: Int? = nil
magicNumber = 5
magicNumber = nil
if let number = magicNumber {
    if(number == 5) {
        print("Magic!")
    }
} else {
    print("No magic!")
} // No magic!

// ЗАДАЧА:
var soupOfTheDay: String? = "French Onion"
if let soup = soupOfTheDay {
    print("The soup of the day is \(soup)")
} else {
    print("There is no soup of the day today!")
} // The soup of the day is French Onion"

// ЗАДАЧА:
var mineral: String? = "Quartz"
if let stone = mineral {
    print("The minereal is \(stone)")
} // The minereal is Quartz

// ЗАДАЧА:
var name: String? = "Bob"
if let person = name {
    if (person == "Bob") {
        print("Bye, Bob!")
    }
} // Bye, Bob!

// 
