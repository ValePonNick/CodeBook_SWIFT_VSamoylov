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
// Задача: напиши код, который содержит структуру person и два экземпяра. Один пьет много чашек кофе ежедневно, а другой - вообще НЕ пьет - БЕЗ ОПЦИОНАЛА
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
struct Persons {
    let name: String
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
print("\(alex.name) consumed \(String(describing: alex.coffeesConsumed ?? nil)) coffees.") // Alex consumed Optional(7) coffees.
print("\(tommy.name) consumed \(String(describing: tommy.coffeesConsumed ?? nil)) coffees.") // Tom consumed nil coffees.
