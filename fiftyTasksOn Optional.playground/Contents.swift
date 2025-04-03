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

/* Задача 4. Напиши функцию, которая принимает опциональную строку и возвращает ее длину. Если строка не существует, функция должна бросить ошибку. Используй перечисление для ошибок. */
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

/* Задача 8:
Напишите функцию, которая принимает опциональную строку — название предмета, найденного Бильбо Беггинсом. Если предмет существует + является одним из известных предметов книги, функция должна вернуть сообщение “Хоббит нашел $$имя_предмета)”. Если предмет не существует / не является одним из известных предметов, функция должна вернуть сообщение об ошибке. Если входная строка отсутствует (`nil`), функция должна вернуть сообщение по умолчанию.
Шаги:
    1.    Определите перечисление для ошибок.
    2.    Напишите функцию, которая принимает опциональную строку.
    3.    Используйте оператор нулевого слияния (`??`) для установки значения по умолчанию, если входная строка равна `nil`.
    4.    Проверьте, существует ли предмет и является ли он одним из известных предметов из книги.
    5.    Верните соответствующее сообщение или сообщение об ошибке. */

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

var num: Int? = 333

if let number = num { print(number) } else { print("no number") }

/*  ЗАДАЧА 10.    Создайте переменную типа `String?`, присвойте ей значение `nil`, затем измените на строку.*/

// вар. 1 используй 'if let' + force unwrapped + func
func main() { // `main` — это точка входа программы, где начинается выполнение кода.
    var optionalName: String? = nil

    if let unwrappedString = optionalName { // когда выполняется оператор"if let'-> он ПРОВЕРЯЕТ: содержит ли 'optionalName' значение? т.к. nil => условие НЕ выполняется и код переходит в блок 'else'
        print("Теперь значение строки НЕ опциональное - \(unwrappedString)")
    } else {
        optionalName = "Bilbo" // присвоим НОВОЕ значение свойству 'optionalName'
        print("optionalName теперь имеет значение: \(optionalName!)")
    }
}

// Вызов функции main()
main() // "optionalName теперь имеет значение: Bilbo"
/* COMMENTS:
 •    Использует `if let`: Проверяет, содержит ли опционал значение. Если значение есть, оно извлекается в новую переменную (`unwrappedString`).
     •    Принудительное извлечение (`!`): Используется для вывода значения `optionalName`, когда оно уже известно, что не равно `nil`.
     •    Блок `else`: Выполняется, если опционал равен `nil`, и присваивает новое значение.
 */

// вар. 2 - используй func + 'if - else' + force unwrapped
func start() {
    var optionalName: String? = nil // инициализация переменной значение 'nil'

    if optionalName == nil { // ПРЯМАЯ проверка на 'nil' - условие выполняется т.к. optionalName равна nil
        optionalName = "Bilbo Baggins" // присвоение нового значения
        print("optionalName теперь имеет значение: \(optionalName!)") // используем принудительное извлечение т.к. уже известно, что optionalName больше НЕ равно nil
    } else {
        print("optionalName уже имеет значение: \(optionalName!)") // блок НЕ выполняется
    }
}

/*  ЗАДАЧА 12.    Создайте переменную типа `Int?`, присвойте ей значение `nil`, затем измените на Int.*/

var optionalNumber: Int? = nil // auto nil => можно и не инициализировать значением
if let unwrappedNumber = optionalNumber {
    print("Зачения нет - \(unwrappedNumber)")
} else {
    optionalNumber = 1234567
    print("Неопциональное число равно \(optionalNumber ?? 0)") // Неопциональное число равно 1234567
}

/*  ЗАДАЧА 13.    Создайте переменную типа `Bool?`, присвойте ей значение `nil`, затем измените на Bool */

var optionalBool: Bool? = nil

if let unwrappedBool = optionalBool {
    print("No value - \(unwrappedBool)")
} else {
    optionalBool = true
    print("Non optional Bool: \(optionalBool!)") // принудительное извлечение
} // Non optional Bool: true

// вар. 2

var optionalBool2: Bool? = nil

if let unwrappedBool = optionalBool2 {
    print("Optional Bool: \(unwrappedBool)")
} else {
    optionalBool2 = false
    if let nonOptionalBool = optionalBool2 {
        print("Non optional Bool: \(nonOptionalBool)") // Non optional Bool: false
    }
}

/*  ЗАДАЧА 15.    Создайте переменную типа `Int?`, присвойте ей значение `nil`, затем измените на Int.*/

// вар. 1 - используй 'if - else' + force unwrapped + func
func run1() {
    var optionalInt: Int? = nil // инициализация переменной значением 'nil'
    if optionalInt == nil {
        optionalInt = 1212 // присвой НОВОЕ значение
        print("optionalInt теперь имеет значение - \(optionalInt!)") // optionalInt теперь имеет значение - 1212
    } else {
        print("optionalInt уже имеет значение: \(optionalInt!)") // блок НЕ выполняется
    }
}

run1()

// вар. 2

func run2() {
    var optionalInt: Int? = nil
    
    if let unwrappedInt = optionalInt { // проверка на 'nil' -> условие ВЕРНО => блок выполняется
        print("Теперь целочисленное значение - НЕ ОПЦИОНАЛЬНО! - \(unwrappedInt)")
    } else {
        optionalInt = 8888
        print("Опциональное число теперь не nil, оно имеет значение - \(optionalInt!)")
    } // Опциональное число теперь не nil, оно имеет значение - 8888
}
run2()

// ЗАДАЧА 17: используй опциональное связывание 'if let' для проверки значения переменной типа Int?
// вар. 1 присвоим значение изначально

var optInt: Int? = 7 // создай опт. переменную: она может иметь значение / нет
@MainActor func initProgram() {
    if let unwrInt = optInt { // поверка на 'nil'
        print("Проверка на 'nil', извлечение значения и создания новой НЕопцилнальной переменной - \(unwrInt)") // Проверка на 'nil', извлечение значения и создания новой НЕопцилнальной переменной - 7
    } else {
        optInt = 77777
        print("Присвоено новое значение - и оно обычное целочисленное: \(String(describing: optInt))")
    }
}
initProgram()

// вар. 2 присвоим значение 'nil'
var optiInt: Int? = nil // создай опт. переменную: она может иметь значение / нет
@MainActor func initProgramm() {
    if let unwrInt = optiInt { // поверка на 'nil'
        print("Проверка на 'nil', извлечение значения и создания новой НЕопцилнальной переменной - \(unwrInt)")
    } else {
        optiInt = 77777
        print("Присвоено новое значение - и оно обычное целочисленное: \(optiInt)")
    }
}
initProgram()

// вар. 3 НЕ присваивай значения переменнйо
var optioInt: Int? // Объявление опциональной переменной, НО т.к. значение НЕ задано, оно auto = nil

@MainActor func initProgr() {
    
    if let unwrInt = optioInt { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)")
    } else {
        print("Переменная равна nil") // Переменная равна nil
    }
}

initProgr()

// вар. 4 присвой значение переменной ВНУТРИ кода

var optionaInt: Int? // Объявление опциональной переменной, НО т.к. значение НЕ задано, оно auto = nil

@MainActor func initProgra() {
    optionaInt = 555
    
    if let unwrInt = optionaInt { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)") // Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - 555
    } else {
        print("Переменная равна nil") // Переменная равна nil
    }
}

initProgra()

// вар. 5 явно заданное значение 'nil' + изменение значения обычного Int
var optionInt: Int? = nil // Объявление опциональной переменной с nil

@MainActor func initProgram1() {
    if let unwrInt = optionInt { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)")
    } else {
        print("Переменная равна nil")
    }
    
    // Изменение значения на Int
    optionInt = 1221
    if let unwrInt = optionInt { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)") // Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - 1221
    } else {
        print("Переменная не содержит значения")
    }
}

initProgram1() // Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - 1221

// ЗАДАЧА 22: напиши функцию, которая принимает опцион. параметр типа Double? и возвращает его удвоенное значение, если оно не равно 'nil'
func main3(optionDouble: Double?) -> Double {
    return (optionDouble ?? 0.0) * 2 // используй концепцию 'nil-coalesing'
}
let result = main3(optionDouble: 3.14)
print(result) // 6.28

// ЗАДАЧА 23: Создайте массив опциональных строк и добавь в него 'nil' и несколько строк.

var optionalArray: [String?] = ["no", "swift", "to", "yes"] // Создание массива опциональных строк - каждый элемент либо строка, либо 'nil' + инициализируем массив начальными значениями
optionalArray.append(nil)

var currentArray: [String] = optionalArray.compactMap { $0 } // Создание нового массива БЕЗ опционал. значений. метод 'compactMap' используй для УДАЛЕНИЯ 'nil' из массива опционал. значений + замыкание { $0 } возвращает каждый элемент массива как есть - ПРОПУСКАЕТ 'nil' и оставляет только НЕПУСТЫЕ значения.

optionalArray.append("first") // Добавление новых элементов в исходный массив
optionalArray.append("second")

var arrayStr = optionalArray.compactMap { $0 }
print("Массив строк: \(arrayStr)") // Массив строк: ["no", "swift", "to", "yes", "first", "second"]

// ЗАДАЧА 24:  удалите все 'nil' из массива и получи массив строк

var arrayOptionalString: [String?] = [nil, nil, "swift", "swift", nil, nil]
var arrayString = arrayOptionalString.compactMap { $0 }
print("Массив, содержащий НЕопциональные строки: \(arrayString)") // Массив, содержащий НЕопциональные строки: ["swift", "swift"]

// ЗАДАЧА 25: создай словарь с ключами типа 'String' и значениями типа 'Int?'. Добавь несколько пар ключ-значение, где некоторые значения равны 'nil'.
var dictOptionValues: [String: Int?] = [:] // создай пустой словарь
dictOptionValues["Thorin"] = 0
dictOptionValues["Balin"] = 1
dictOptionValues["Dvalin"] = 2
dictOptionValues["Bofur"] = 3
dictOptionValues["Bombur"] = nil
dictOptionValues["Bifur"] = nil
print(dictOptionValues)

for (key, value) in dictOptionValues {
    if let val1 = value {
        print("\(key): \(val1)")
    } else {
        print("\(key): nil")
    }
}
/*  Dvalin: 2
    Thorin: 0
    Bofur: 3
    Balin: 1 */

let dictString = dictOptionValues.map {
    "\($0.key): \(($0.value != nil ? "\($0.value!)" : "nil"))"
}.joined(separator: ", ")
print("Словарь: \(dictString)") // Словарь: Dvalin: 2, Thorin: 0, Balin: 1, Bofur: 3

// ЗАДАЧА 26: напиши функцию, которая принимает словарь с опционал. значениями и возвращает только те пары, где значения не равны 'nil'

