import UIKit

// NESTED FUNCTIONS: Syntax & Logics
/*
 Вложенные функции - это функции, определяемые ВНУТРИ других функций.
 ПОЛЕЗНЫ для:
    - инкапсуляции логики внутри определенного контекста
    - могут захватывать переменые из ОКРУЖАющей области видимости
СИНТАКСИС nested function: */
func outerFunction() {
    // тело внешней функции
    func innerFunction() {
        // тело внутренней функции
    }
    innerFunction() // ВЫЗОВ внутренней функции
}
/*
ЛОГИКА:
 - инкапсуляция - скрытие деталей реализации ВНУТРИ внешней функции
 захват переменных - внутренние функции м. использовать переменные из внешней функции  */

// nested functions:

// простая вложенная функция
func greetMessage() {
    func displayName() {
        print("Good morning, Joe!")
    }
    displayName()
}
greetMessage() // Good morning, Joe!

// Вложенные функции с параметрами
func addNumbers() {
    print("Addition")
    func display(num1: Int, num2: Int) {
        print("9 + 12 =", num1 + num2)
    }
    display(num1: 9, num2: 12)
}
addNumbers()
// Addition
// 9 + 12 = 21

// вложенная функция со значением для возврата
func operate(symbol: String) -> (Int, Int) -> Int {
    func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    func subtract(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
    let operation = (symbol == "+") ? add : subtract
    return operation
}
let operation = operate(symbol: "+")
let result = operation(9, 12)
print("Results:", result)
// 9 + 12 = 21
// Results: 21

/*
COMMENTS:
 1.
 2.
 3.
 */

// верни ОБЕ функции, используя ЗАМЫКАНИЕ
func operated(symbol: String) -> ((Int, Int) -> Int, (Int, Int) -> Int) {
    func add(num1:Int, num2:Int) -> Int {
    return num1 + num2
    }
    func subtract(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
return (add, subtract)
}
let (addOperation, subtractOperation) = operated(symbol: "+")
let addResult = addOperation(9, 12)
let subtractResult = subtractOperation(9, 12)
print("Adding Results:", addResult) // Adding Results: 21
print("Subtract Result:", subtractResult) // Subtract Result: -3
/* COMMENTS:
1. функции 'add' и 'subtract' возвращаются ка КОРТЕЖ ЗАМЫКАНИЙ (НЕявно определенных)
2. => их можно использовать ВНЕ функции 'operate'
 3. как? ВНЕШНЯЯ функция возвращает ССЫЛКУ на ВЛОЖЕННУЮ функцию, которая м.б. сохранена и вызвана позже. */

/*
 ЗАДАЧА: напиши програму, которая использует вложенную функцию для проверки четности/НЕчетности числа. Программа принимает целое число и выводит сообщение о его четности/НЕчетности */
func isEven(number: Int) {
    func operating() {
        if number % 2 == 0 {
            print("Это число четное - \(number)")
        } else {
            print("Это число НЕчетное - \(number)")
        }
    }
    operating() // не забудь вызвать функцию
}
// пример использования
isEven(number: 12)
isEven(number: 17)
/*
COMMENTS:
 1. вызови функцию operating() ВНУТРИ функции isEven(number: Int)
 2. тогда она правильно проверит: является ли число четным? */
// та же зпдача, но код ЛАКОНИЧЕН + ЭФФЕКТИВЕН
func isEvenNumber(num: Int) {
    func operation() {
        print("Это число \(num % 2 == 0 ? "четное" : "нечетное") - \(num)")
    }
    operation()
}
isEvenNumber(num: 27) // Это число нечетное - 27
