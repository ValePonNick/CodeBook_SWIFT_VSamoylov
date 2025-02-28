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
    displayName() // эта функция ВЛОЖЕНа и м.б. ВЫЗВАНА только ВНУТРИ greetMessage()
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
let result = operation(9, 12) // 9 + 12 = 21
print("Results:", result) // Results: 21

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

/* напиши функцию, которая принимает строку и проверяет: является ли она палиндромом - для этого создай вложенную функцию 'reverseString', которая вернет перевернутую строку */
func isPalindrom(_ input: String) -> Bool {
    func reverseString(_ a: String) -> String {
            return String(a.reversed())
        }
        let reversed = reverseString(input)
        return input == reversed
    }
// пример использования
print(isPalindrom("level")) // true
print(isPalindrom("Hobbit")) // false

/* напиши функцию, которая принимает строку и проверяет: является ли она палиндромом БЕЗ вложенной функции */
func is_Palindrom(_ input: String) -> Bool {
    return input == String(input.reversed())
}
print(is_Palindrom("Gondor")) // false
print(is_Palindrom("step on no pets")) // true

// еще короче функция
func isPalindRom(_ a: String) -> Bool {
    a == String(a.reversed())
}
// пример использования
// вызов функции БЕЗ 'print'
isPalindRom("bob") // результат НЕ виден на экране
// вызов функции с 'print'
print(isPalindRom("string")) // результат виден на экране - false

/* ЗАДАЧА: напиши функцию, которая принимает массив целых чисел и возвращает сумму всех четных чисел в этом массиве. Используй вложенную функцию для проверки: является ли число четным? */
func sumEvenNumbers(_: [Int]) -> Int {
    return ...
}
/* ЗАДАЧА: создай функцию, которая принимает строку и возвращает количество гласных в этой строке. Вложенная функция д.б. проверть: является ли символ гласной? */
func countVowels(_: String) {
    ...
}

// ЗАДАЧА: напиши функцию, которая принимает массив чисел с плавающей точкой и возвращает среднее всех положительных чисел в этом массиве. Вложенная функция д.б. проверить: является ли число положительным? */
func averagePositiveNumbers(_: [Int]) {
    ...
}
