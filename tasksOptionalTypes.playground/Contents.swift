import UIKit

/* Задача
У тебя есть структура `Person`, которая содержит имя и возраст человека. Возраст может быть неопределенным (опционал). Напиши функцию, которая принимает экземпляр `Person` и возвращает строку, содержащую имя и возраст человека. Если возраст неопределен, в строке должно быть написано “возраст неизвестен”. */

struct Person {
    let name: String
    var age: Int?
}

var man = Person(name: "Tim Cook", age: 12)

func display(person: Person) -> String {
    if let age = person.age {
        return "имя: \(person.name), возраст: \(person.age ?? 0)"
    } else {
        return "имя: \(person.name), Возраст неизвестен"
    }
}
print(display(person: man))

