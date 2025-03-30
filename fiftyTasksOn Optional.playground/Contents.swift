import UIKit

// fifty tasks on Optional Types

/* ЗАДАЧА 1. Обработка опциональных значений: Напиши функцию, которая принимает опциональное целое число и возвращает его квадрат, если число существует. Если число не существует, функция должна вернуть сообщение об ошибке. */

// вар.1
func calculate(inputNum: Int?) -> String { // возвращаем строку: квадрат числа / сообщение об ошибке
    
    if let num = inputNum {
        return String(num * num)
    } else {
        return "Числа не существует: ошибка!"
    }
}

print(calculate(inputNum: 6))

// вар. 2 БОЛЕЕ ПРОДВИНУТЫЙ С ИСПОЛЬЗОВАНИЕМ ОПЦИОНАЛЬНОГО ЗНАЧЕНИЯ
func calc(optionalNum: Int?) -> Int? {
    
    if let num = optionalNum {
        return num * num
    } else {
        return nil
    }
}
if let result = calc(optionalNum: 0) {
    print("Результат равен: \(result)")
} else {
    print("Числа не существует: ошибка!")
}

// вар. 3 использование перечисления с ошибками

enum CalculationError: Error { // определение перечисления для ошибок
    case numberDoesNotExist // ошибка, возникающая когда числа НЕ существует
}

func calculating(inputNum: Int?) throws -> Int { // функция для расчета квадрат числа, которая может "бросать ошибку"
    if let num = inputNum { // ПРОВЕРКА: существует ли число?
        return num * num // если число СУЩЕСТВУЕТ -> возвращаем его вкадрат
    } else {
        throw CalculationError.numberDoesNotExist // если числа нет - "бросаем ошибку" - т.е. подаем сигнал
    }
}
// вызов функции с обработкой ошибок
do {
    let result = try calculating(inputNum: 8) // попытка выполнить функцию
    print("Результат - \(result)") // успешо? выводит результат
} catch CalculationError.numberDoesNotExist { // если возникла ошибка - выводим сообщение об ошибке
    print("Числа не существует: ошибка!")
} catch {
    print("Произошла неизвестная ошибка: \(error)")
}
/*
 COMMENTS:
Конструкция `do-catch` позволяет:
    1.    Выполнять код, который может бросить ошибку в блоке `do`.
    2.    Перехватывать и обрабатывать ошибки в блоке `catch`.
    3. Типы блоков `catch`:
        •    Общий блок `catch`: Обрабатывает любые ошибки.
        •    Конкретный блок `catch`: Обрабатывает конкретные типы ошибок. */

/* Задача 2. Напиши функцию, которая принимает опциональную строку и возвращает ее длину. Если строка не существует, функция должна бросить ошибку. Используй перечисление для ошибок. */
enum StringError: Error {
    case stringDoesNotExist
}

func displayLength(inputOptionalString: String?) throws -> Int {
    if let currentStringLength = inputOptionalString { // проверка: существует ли строка? используй optional binding - `if let`
        return currentStringLength.count // если строка существует -> возвращаем ее длину
    } else {
        throw StringError.stringDoesNotExist // если строки не существует -> "бросаем ошибку"
    }
}
    // вызов функции с обработкой ошибок
    do {
        let length = try displayLength(inputOptionalString: "Hobbitania") // попытка вызвать функцию
            print("Длина строки равна: \(String(describing: length))")
    } catch  StringError.stringDoesNotExist {
        print("Строка не существует: ошибка!")
    } catch {
        print("Произошла неизвестная ошибка: \(error)")
    }

 /* Задача:
  Напиши функцию, которая принимает опциональную строку - название предмета, найденного Бильбо Беггинсом (например, “Кольцо Всевластья”, “Меч Жало”, “золото троллей”). Если предмет существует и является одним из известных предметов из книги, функция должна вернуть сообщение “Хоббит нашел $$имя_предмета)”. Если предмет не существует или не является одним из известных предметов из книги, функция должна бросить ошибку.
  Шаги:
      1.    Определи перечисление для ошибок.
      2.    Напиши функцию, которая принимает опциональную строку.
      3.    Проверь, существует ли предмет и является ли он одним из известных предметов из книги.
      4.    Если предмет существует и является известным, верни соответствующее сообщение.
      5.    Если предмет не существует или не является известным, бросай ошибку.
      6.    Обработай ошибку в вызывающем коде.
  */

// вар. 1 - используй 'guard let'
enum TreasureError: Error {
    case treasureDoesNotExist
    case unknownTreasure
}

let knownTreasures = [
    "troll's gold",
    "The One Ring",
    "Sting",
    "Arkenstoun"
]

func displayTreasures(inputString: String?) throws -> String {
    guard let treasure = inputString else {
        throw TreasureError.treasureDoesNotExist
    }

    if knownTreasures.contains(treasure) {
        return "Хоббит Бильбо Баггинс нашел \(treasure)"
    } else {
        throw TreasureError.unknownTreasure
    }
}

do {
    let tresureMessage = try displayTreasures(inputString: "troll's gold")
    print(tresureMessage)
} catch TreasureError.treasureDoesNotExist {
    print("Такого сокровища Бильбо Баггинс не находил")
} catch TreasureError.unknownTreasure {
    print("Это неизвестное сокровище")
} catch {
    print("Неизвестная ошибка \(error)")
}
/* COMMENTS: Сравнение `if let` и `guard let`
 используй `guard let` вместо `if let` -> код более читабельным и эффективным в данном контексте:
1.    Упрощение кода: `guard let` позволяет вынести проверку опционала в начало функции и сразу же обработать ситуацию, когда значение равно `nil` -> код  стал лаконичным + понятным.
2.    Выход из функции: `guard let` автоматически выходит из функции, если значение = `nil`, что избавляет от необходимости вкладывать весь остальной код в блок `if let` -> улучшает читаемость + уменьшает количество вложенных блоков.
3.    Логика функции: В функции `displayTreasure` логика построена так, что если входная строка отсутствует (`nil`), функция должна бросить ошибку или вернуть сообщение об ошибке. `guard let` ИДЕАЛЬНО подходит для этой логики, т.к. сразу обработана ситуация с `nil` + выход из функции. */


// вар. 2 - используй 'if let'
enum RichesError: Error {
    case richesDoesNotExist
    case unknownRiches
}

let knownRiches = [
    "troll's gold",
    "The One Ring",
    "Sting",
    "Arkenstoun"
]
func displayRiches(inputString: String?) throws -> String {
    if let riches = inputString {
        if knownRiches.contains(riches) {
            return "Хоббит Бильбо Баггинс нашел \(riches)"
        } else {
            throw RichesError.unknownRiches
        }
    } else {
        throw RichesError.richesDoesNotExist
    }
}
do {
    let richesMessage = try displayRiches(inputString: "Sting")
    print(richesMessage)
} catch RichesError.richesDoesNotExist {
    print("Такого сокровища Бильбо Баггинс не находил")
} catch RichesError.unknownRiches {
    print("Это неизвестное сокровище")
} catch {
    print("Неизвестная ошибка \(error)")
}

// ИТАК: В обоих случаях код - корректен, но версия с `guard let`  -> > ЛАКОНИЧНА + ЧИТАБЕЛЬНА
// Список известных предметов

// вар. 3 используй оператор объединения нулей (`??`)
let knownWealth = [
    "Кольцо Всевластья",
    "Меч Жало",
    "золото троллей",
    "Аркенстон"
]

// Функция, которая принимает опциональную строку и возвращает сообщение
func displayWealth(inputString: String?) -> String {
    let wealth = inputString ?? "неизвестное сокровище"
    
    if knownWealth.contains(wealth) {
        return "Хоббит нашел \(wealth)"
    } else {
        return "Это - \(wealth)"
    }
}

// Вызов функции
print(displayWealth(inputString: "Аркенстон")) // Хоббит нашел Аркенстон
print(displayWealth(inputString: nil)) // Хоббит нашел неизвестное сокровище
print(displayWealth(inputString: "другое сокровище")) // Предмет другое сокровище неизвестен

/* Задача 4:
Напишите функцию, которая принимает опциональную строку — название предмета, найденного Бильбо Беггинсом. Если предмет существует + является одним из известных предметов книги, функция должна вернуть сообщение “Хоббит нашел $$имя_предмета)”. Если предмет не существует / не является одним из известных предметов, функция должна вернуть сообщение об ошибке. Если входная строка отсутствует (`nil`), функция должна вернуть сообщение по умолчанию.
Шаги:
    1.    Определите перечисление для ошибок.
    2.    Напишите функцию, которая принимает опциональную строку.
    3.    Используйте оператор нулевого слияния (`??`) для установки значения по умолчанию, если входная строка равна `nil`.
    4.    Проверьте, существует ли предмет и является ли он одним из известных предметов из книги.
    5.    Верните соответствующее сообщение или сообщение об ошибке. */



/* ЗАДАЧА 2.    Работа с опциональными массивами: Создай функцию, которая принимает опциональный массив целых чисел и возвращает сумму всех элементов в массиве. Если массив не существует, функция должна вернуть ноль. */

/* ЗАДАЧА 3.    Объединение опциональных строк: Напиши функцию, которая принимает две опциональные строки и возвращает одну строку, объединив их через пробел. Если обе строки не существуют, функция должна вернуть пустую строку. */

// вар. 1
func combineTwoStrings(firstString: String?, secondString: String?) -> String {
    let combined = (firstString ?? "") + " " + (secondString ?? "")
    return combined.trimmingCharacters(in: .whitespaces)
    }

print(
    combineTwoStrings(firstString: "Bilbo", secondString: "Baggins"))

// вар. 2
func combinedTwoStrings(firstString: String?, secondString: String?) -> String {
    return [(firstString ?? ""), (secondString ?? "")].compactMap { $0 }.joined(separator: " ")
}
print(combinedTwoStrings(firstString: "Frodo", secondString: "Torbins"))
print("Результат: \(combinedTwoStrings(firstString: "", secondString: ""))")

/* ЗАДАЧА 4.    Проверка опциональных значений: Напиши функцию, которая принимает опциональное значение и проверяет, существует ли оно. Если значение существует, функция должна вывести в консоль сообщение “Значение существует”, иначе — “Значение не существует”.*/

/* ЗАДАЧА 5.    Преобразование опционального значения в неопциональное: Напиши функцию, которая принимает опциональное целое число и возвращает неопциональное целое число. Если опциональное значение не существует, функция должна вернуть по умолчанию ноль. */
