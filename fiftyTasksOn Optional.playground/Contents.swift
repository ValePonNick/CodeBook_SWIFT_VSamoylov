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

var num: Int? = 333

if let number = num { print(number) } else { print("no number") }

// ЯВНОЕ присвоение переменной 'nil' - полезно

var optionalValue: Int? = 10 // Переменная имеет значение

// Позже в коде
optionalValue = nil // Явно сбрасываем значение

// БАЗОВЫЕ ЗАДАЧИ

/*  ЗАДАЧА 1.    Создайте переменную типа `String?`, присвойте ей значение `nil`, затем измените на строку.*/

// вар. 1.1  используй 'if let' + force unwrapped + func
func main1() { // `main` — это точка входа программы, где начинается выполнение кода.
    var optionalName: String? = nil

    if let unwrappedString = optionalName { // когда выполняется оператор"if let'-> он ПРОВЕРЯЕТ: содержит ли 'optionalName' значение? т.к. nil => условие НЕ выполняется и код переходит в блок 'else'
        print("Теперь значение строки НЕ опциональное - \(unwrappedString)")
    } else {
        optionalName = "Bilbo" // присвоим НОВОЕ значение свойству 'optionalName'
        print("optionalName теперь имеет значение: \(optionalName!)")
    }
}

// Вызов функции main()
main1() // "optionalName теперь имеет значение: Bilbo"
/* COMMENTS:
 •    Использует `if let`: Проверяет, содержит ли опционал значение. Если значение есть, оно извлекается в новую переменную (`unwrappedString`).
     •    Принудительное извлечение (`!`): Используется для вывода значения `optionalName`, когда оно уже известно, что не равно `nil`.
     •    Блок `else`: Выполняется, если опционал равен `nil`, и присваивает новое значение.
 */

// вар. 1.2 - используй func + 'if - else' + force unwrapped
func start1() {
    var optionalName: String? = nil // инициализация переменной значение 'nil'

    if optionalName == nil { // ПРЯМАЯ проверка на 'nil' - условие выполняется т.к. optionalName равна nil
        optionalName = "Bilbo Baggins" // присвоение нового значения
        print("optionalName теперь имеет значение: \(optionalName!)") // используем принудительное извлечение т.к. уже известно, что optionalName больше НЕ равно nil
    } else {
        print("optionalName уже имеет значение: \(optionalName!)") // блок НЕ выполняется
    }
}

// Вызов функции start()
start1() // optionalName теперь имеет значение: Bilbo Baggins


var optionalString: String? = nil // создай опц. строку и присвой ей значение 'nil'

@MainActor func go() {
    optionalString = "новое значение, напр.: ХОББИТ" // сначала присвоим значение
        
    if let unwrappedString = optionalString { // проверка на nil
            print("Опциональная строка имеет значение: \(unwrappedString)")
    } else {
        print("Опциональная строка равна nil")
    }
}

go()

var optionString: String? = nil

@MainActor func going() {
    if optionString == nil { // проверка на 'nil'
        print("Опциональная строка равна nil")
    }
    
    optionString = "ХОББИТ" // присваиваем значение опц. строке
    
    if let unwrappString = optionString {
        print("Опциональная строка теперь имеет значение: \(unwrappString)") // Опциональная строка теперь имеет значение: ХОББИТ
    }
}

going()

/*  ЗАДАЧА 2.    Создайте переменную типа `Int?`, присвойте ей значение `nil`, затем измените на Int.*/

var optionalNumber1: Int? = nil // auto nil => можно и не инициализировать значением
if let unwrappedNumber = optionalNumber1 {
    print("Зачения нет - \(unwrappedNumber)")
} else {
    optionalNumber1 = 1234567
    print("Неопциональное число равно \(optionalNumber1 ?? 0)") // Неопциональное число равно 1234567
}

/*  ЗАДАЧА 2.1.    Создайте переменную типа `Bool?`, присвойте ей значение `nil`, затем измените на Bool */

var optionalBool1: Bool? = nil

if let unwrappedBool = optionalBool1 {
    print("No value - \(unwrappedBool)")
} else {
    optionalBool1 = true
    print("Non optional Bool: \(optionalBool1!)") // принудительное извлечение
} // Non optional Bool: true

// вар. 2.2 - используй опционал. связывание 'if let'

var optionalBool3: Bool?

if let unwrappedBool = optionalBool3 {
    print("Optional Bool: \(unwrappedBool)")
} else {
    optionalBool2 = false
    if let nonOptionalBool = optionalBool3 {
        print("Non optional Bool: \(nonOptionalBool)") // Non optional Bool: false
    }
}

/*  ЗАДАЧА 3.    Создайте переменную типа `Int?`, присвойте ей значение `nil`, затем измените на Int.*/

// вар. 3.1 - используй 'if - else' + force unwrapped + func
func run2() {
    var optionalInt: Int? = nil // инициализация переменной значением 'nil'
    if optionalInt == nil {
        optionalInt = 1212 // присвой НОВОЕ значение
        print("optionalInt теперь имеет значение - \(optionalInt!)") // optionalInt теперь имеет значение - 1212
    } else {
        print("optionalInt уже имеет значение: \(optionalInt!)") // блок НЕ выполняется
    }
}

run2()

// вар. 3.2

func run3() {
    var optionalInt: Int?
    
    if let unwrappedInt = optionalInt { // проверка на 'nil' -> условие ВЕРНО => блок выполняется
        print("Теперь целочисленное значение - НЕ ОПЦИОНАЛЬНО! - \(unwrappedInt)")
    } else {
        optionalInt = 8888
        print("Опциональное число теперь не nil, оно имеет значение - \(optionalInt!)")
    } // Опциональное число теперь не nil, оно имеет значение - 8888
}
run3()

/*  ЗАДАЧА 4.    Создайте переменную типа `Float?`, присвойте ей значение `nil`, затем измените на Float. */

// вар. 4.1
var optionalFloat: Float? = nil

if let unwrappedFloat = optionalFloat {
    print("Проверено: значения нет - \(unwrappedFloat)")
} else {
    optionalFloat = 3.14
    print("Создали новое свойство и присвоили ему НЕопциональное значение: \(optionalFloat ?? 0.0)")
}

// вар. 4.2 - КРАТКО + ВЕРНО
var optionalFloat2: Float? = nil
optionalFloat2 = 3.14
print("Присвоили значение: \(optionalFloat2 ?? 0.0)")

// вар. 4.3 используй nil-coalescing  - '??'

var optionalFloat3: Float? = nil
optionalFloat3 = optionalFloat3 ?? 3.14
print("Присвоили значение: \(optionalFloat3 ?? 0.0)")

// вар. 4.4 используй 'guard'

func setupOptionalFloat() {
    var optionalFloat4: Float? = nil

    guard optionalFloat4 == nil else {
        print("Значение уже присвоено: \(optionalFloat4 ?? 0.0)")
        return
    }

    optionalFloat4 = 3.14
    print("Присвоили значение: \(optionalFloat4 ?? 0.0)")
}

setupOptionalFloat()

// вар. 4.5 используй простой 'if'
var optionalFloat5: Float?

if optionalFloat5 == nil {
    optionalFloat5 = 3.14
    print("Присвоили значение: \(optionalFloat5 ?? 0.0)")
} else {
    print("Значение УЖЕ было присвоено ДО ПРОВЕРКИ: \(optionalFloat5 ?? 0.0)")
}

// ЗАДАЧА 4: используй опциональное связывание 'if let' ДЛЯ ПРОВЕРКИ значения переменной типа Int?

// вар. 1 присвоим значение изначально

var optInt2: Int? = 7 // создай опт. переменную: она может иметь значение / нет
@MainActor func initProgram2() {
    if let unwrInt = optInt2 { // поверка на 'nil'
        print("Проверка на 'nil', извлечение значения и создания новой НЕопцилнальной переменной - \(unwrInt)") // Проверка на 'nil', извлечение значения и создания новой НЕопцилнальной переменной - 7
    } else {
        optInt2 = 77777
        print("Присвоено новое значение - и оно обычное целочисленное: \(optInt2 ?? 0)")
    }
}
initProgram2()

// вар. 2 присвоим значение 'nil'
var optiInt4: Int? = nil // создай опт. переменную: она может иметь значение / нет
@MainActor func initProgramm4() {
    if let unwrInt = optiInt4 { // поверка на 'nil'
        print("Проверка на 'nil', извлечение значения и создания новой НЕопцилнальной переменной - \(unwrInt)")
    } else {
        optiInt4 = 77777
        print("Присвоено новое значение - и оно обычное целочисленное: \(optiInt4)")
    }
}
initProgramm4()

// вар. 3 НЕ присваивай значения переменнйо
var optioInt5: Int? // Объявление опциональной переменной, НО т.к. значение НЕ задано, оно auto = nil

@MainActor func initProgr5() {
    
    if let unwrInt = optioInt5 { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)")
    } else {
        print("Переменная равна nil") // Переменная равна nil
    }
}

initProgr()

// вар. 4 присвой значение переменной ВНУТРИ кода

var optionaInt2: Int? // Объявление опциональной переменной, НО т.к. значение НЕ задано, оно auto = nil

@MainActor func initProgra2() {
    optionaInt2 = 555
    
    if let unwrInt = optionaInt2 { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)") // Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - 555
    } else {
        print("Переменная равна nil") // Переменная равна nil
    }
}

initProgra2()

// вар. 5 явно заданное значение 'nil' + изменение значения обычного Int
var optionInt2: Int? = nil // Объявление опциональной переменной с nil

@MainActor func initProgramm2() {
    if let unwrInt = optionInt2 { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)")
    } else {
        print("Переменная равна nil")
    }
    
    // Изменение значения на Int
    optionInt2 = 1221
    if let unwrInt = optionInt2 { // Проверка на nil
        print("Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - \(unwrInt)") // Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - 1221
    } else {
        print("Переменная не содержит значения")
    }
}

initProgram2() // Проверка на 'nil', извлечение значения и создание новой НЕопциональной переменной - 1221

// ЗАДАЧА 3: напиши функцию, которая принимает опцион. параметр типа Double? и возвращает его удвоенное значение, если оно не равно 'nil'
func main4(optionDouble: Double?) -> Double {
    return (optionDouble ?? 0.0) * 2 // используй концепцию 'nil-coalesing'
}
let result4 = main4(optionDouble: 3.14)
print(result4) // 6.28

// ЗАДАЧА 4: Создайте массив опциональных строк и добавь в него 'nil' и несколько строк.

var optionalArray2: [String?] = ["no", "swift", "to", "yes"] // Создание массива опциональных строк - каждый элемент либо строка, либо 'nil' + инициализируем массив начальными значениями
optionalArray2.append(nil)

var currentArray2: [String] = optionalArray2.compactMap { $0 } // Создание нового массива БЕЗ опционал. значений. метод 'compactMap' используй для УДАЛЕНИЯ 'nil' из массива опционал. значений + замыкание { $0 } возвращает каждый элемент массива как есть - ПРОПУСКАЕТ 'nil' и оставляет только НЕПУСТЫЕ значения.

optionalArray2.append("first") // Добавление новых элементов в исходный массив
optionalArray2.append("second")

var arrayStr1 = optionalArray2.compactMap { $0 }
print("Массив строк: \(arrayStr1)") // Массив строк: ["no", "swift", "to", "yes", "first", "second"]

// ЗАДАЧА 5:  удалите все 'nil' из массива и получи массив строк

var arrayOptionalStrings: [String?] = [nil, nil, "swift", "swift", nil, nil]
var arrayStrings = arrayOptionalStrings.compactMap { $0 }
print("Массив, содержащий НЕопциональные строки: \(arrayStrings)") // Массив, содержащий НЕопциональные строки: ["swift", "swift"]

// ЗАДАЧА 6: создай словарь с ключами типа 'String' и значениями типа 'Int?'. Добавь несколько пар ключ-значение, где некоторые значения равны 'nil'.
var dictOptionValue: [String: Int?] = [:] // создай пустой словарь
dictOptionValues["Thorin"] = 0
dictOptionValues["Balin"] = 1
dictOptionValues["Dvalin"] = 2
dictOptionValues["Bofur"] = 3
dictOptionValues["Bombur"] = nil
dictOptionValues["Bifur"] = nil
print(dictOptionValue)

for (key, value) in dictOptionValue {
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

let dictStrings = dictOptionValues.map {
    "\($0.key): \(($0.value != nil ? "\($0.value!)" : "nil"))"
}.joined(separator: ", ")
print("Словарь: \(dictStrings)") // Словарь: Dvalin: 2, Thorin: 0, Balin: 1, Bofur: 3

// ЗАДАЧА 7: напиши функцию, которая принимает словарь с опционал. значениями и возвращает только те пары, где значения не равны 'nil'

// вар. 7.1 используй .compactMap + кложуры
func filterNonNilPairs(_ dictionary: [String: Int?]) -> [(String, Int)] {
    return dictionary.compactMap { key, value in
        value.map { (key, $0) }
    }
}

// Использование
let dicti: [String: Int?] = ["Tom": 1, "Sam": nil, "Bill Haggins": 3, "William": 4]
let pairs = filterNonNilPairs(dicti)
print(pairs) // [("Tom", 1), ("Bill Haggins", 3), ("William", 4)]
    
/* COMMENTS:
•    `_ dictionary`: Параметр функции — словарь. Символ `_` перед именем параметра означает, что при вызове функции этот параметр НЕ будет иметь ВНЕШНЕГО имени.
•    `-> (String, Int)`: Тип возвращаемого значения — МАССИВ КОРТЕЖЕЙ, где каждый кортеж содержит ключ типа `String` и значение типа `Int`.
 
 ФИЛЬТРАЦИЯ СЛОВАРЯ
 •    Метод `compactMap` используется для фильтрации и преобразования значений словаря. Он пропускает `nil` значения и возвращает массив результатов успешных преобразований.
 •    `{ key, value in ... }`: Closure, который обрабатывает каждую пару ключ-значение в словаре. Здесь `key` — ключ типа `String`, а `value` — значение типа `Int?`.
 •    `value.map { (key, $0) }`: Если `value` не `nil`, то `map` преобразует его в кортеж `(key, value)`. Если `value` равен `nil`, то `map` возвращает `nil`, и `compactMap` пропускает такую пару.
 ВЫЗОВ ФУНКЦИИ
 •    Функция `filterNonNilPairs` вызывается с словарем `dict` в качестве аргумента.
 •    Результат вызова функции - массив кортежей, где каждая пара содержит ключ и значение из словаря, но только для тех пар, где значения не равны `nil`. */

// вар. 7.2 используй `filter` + `map`
func nonNilDictionaryEntries(_ dict: [String: Int?]) -> [(String, Int)] {
    return dict.filter { $0.value != nil }.map { ($0.key, $0.value!) }
}

// Использование
let dictio: [String: Int?] = ["a": 1, "b": nil, "c": 3]
let pair = nonNilDictionaryEntries(dictio)
print(pairs) // Выводит: [("a", 1), ("c", 3)]

// вар. 7.3 используй цикл 'for'

func removeNilValues(_ dict: [String: Int?]) -> [(String, Int)] {
    var result: [(String, Int)] = []
    for (key, value) in dict {
        if let unwrappedValue = value {
            result.append((key, unwrappedValue))
        }
    }
    return result
}

// Использование
let diction: [String: Int?] = ["Gandalth Grey": 1, "Saruman White": nil, "Radogast Braun": 3]
let pairs1 = removeNilValues(diction)
print(pairs1) // [("Gandalth Grey", 1), ("Radogast Braun", 3)]

// ЗАДАЧА 8: используй оператор '??' для задания значения по умолчанию для опционального значения String?

var оptionalWithDefault: String?

// Без присвоения значения
print("Значение по умолчанию при 'nil': '\(оptionalWithDefault ?? "")'") // Значение по умолчанию при 'nil': ''
// С присвоением значения
оptionalWithDefault = "Hobbit"
print("Значение после присвоения: \(оptionalWithDefault ?? "")") // Значение после присвоения: Hobbit

// ЗАДАЧА 8.1: используй оператор '??' для задания значения по умолчанию для опционального значения Int?

var optionalIntWithDefault: Int?

print("Значения по умолчанию при 'nil': \(optionalIntWithDefault ?? 0)") // Значения по умолчанию при 'nil': 0
optionalIntWithDefault = 777 // Значение ПОСЛЕ присвоения: 777
print("Значение ПОСЛЕ присвоения: \(optionalIntWithDefault ?? 0)")

// ЗАДАЧА 8.2: используй оператор '??' для задания значения по умолчанию для опционального значения Bool?
// вар. A:
var optionalsBool: Bool?
print("Значение по умолчанию при 'nil': \(optionalsBool ?? true)")
optionalsBool = false
print("Значение ПОСЛЕ присвоения: \(optionalsBool ?? false)")

// вар. B: используй функцию `String(describing:)`, чтобы вывести 'nil'

var optioBool: Bool?

// Без присвоения значения
print("Значение по умолчанию при 'nil': \(String(describing: optioBool))") // Значение по умолчанию при 'nil': nil

// С присвоением значения
optioBool = true
print("Присвоенное значение: \(String(describing: optioBool))") // Присвоенное значение: Optional(true)


// вар. C: тернарный оператор '?' + функция `String(describing:)`
var optiBool: Bool?
print("Значение по умолчанию при 'nil': \(optiBool != nil ? String(describing: optiBool) : "nil")") // Значение по умолчанию при 'nil': nil
optiBool = false
print("Значение ПОСЛЕ присвоения: \(String(describing: optiBool))") // Значение ПОСЛЕ присвоения: Optional(false)
/*
 COMMENTS:
 1. напрямую вывести `nil` не получится
 2.  используй оператор `??` - предназначен для предоставления значения по умолчанию ВМЕСТО `nil`.
 3. используй функцию `String(describing:)`, чтобы вывести `nil' */

// ЗАДАЧА 8.3: используй оператор '??' для задания значения ПО УМОЛЧАНИЮ для опционального значения Double?

var optiDouble: Double?
print("Значение ПО УМОЛЧАНИЮ задано auto - 'nil': \(optiDouble ?? 0.0)") // Значение ПО УМОЛЧАНИЮ задано auto - 'nil': 0.0
optiDouble = 3.14
print("Значение ПОСЛЕ присвоения: \(optiDouble ?? 0.0)") // Значение ПОСЛЕ присвоения: 3.14

// ЗАДАЧА 9: создай tuple - (фр. cortege - торжественный проезд, шествие, выезд лошадей) (String?, Int?), присвой ему значение и затем извлеки их с помощью optional binding - 'if let'

var tupleWizard: (name: String?, count: Int?) = ("Gandalf Gray", 1)

if let wizardName = tupleWizard.name, let wizardCount = tupleWizard.count {
    print("Name:", wizardName) // Name: Gandalf Gray
    print("Count:", wizardCount) // Count: 1
} else {
    print("No values")
}

/*
ЗАДАЧА 9: Создай кортеж: информация о персонажах из Хоббита -  имя, опциональную роль в компании и опциональное количество драгоценных камней, которые он нашел. Затем используйте `if let` для безопасного извлечения и вывода информации о каждом персонаже */

var characters: [(name: String, role: String?, countOfGems: Int?)]  = [
    ("Bilbo Baggins", "thief", 12),
    ("Thorin Oakenshield", "Head of Dvorths", 888),
    ("Gandalf Gray", "wizard", 21)
    ]
// используй цикл для вывода инфы о каждом персонаже
for char in characters {
    if let role = char.role, let countOfGems = char.countOfGems {
        print("Имя: \(char.name), Роль: \(char.role ?? ""), Количество драгоценных камней: \(char.countOfGems ?? 0)")
    } else {
        print("Имя: \(char.name), нет иной информации")
    }
}
/*  Имя: Bilbo Baggins, Роль: thief, Количество драгоценных камней: 12
    Имя: Thorin Oakenshield, Роль: Head of Dvorths, Количество драгоценных камней: 888
    Имя: Gandalf Gray, Роль: wizard, Количество драгоценных камней: 21  */

/* COMMENTS:
 1. создай массив кортежей, где каждый кортеж содержит информацию о персонаже.
 2. используй цикл `for` для итерации по массиву и вывода информации о каждом персонаже с помощью `if let`.
 3. Если роль или количество драгоценных камней отсутствует, выведи соответ. сообщение. */

/* Задача 10: Напиши функцию, которая принимает множество опционал. целых чисел 'Imt?' и возвращает сумму всех не-'nil' значений */

func sumOptionalInts(inputSet: [Int?]) -> Int {
    var summa = 0
    for num in inputSet {
        if let unwreppedNum = num {
            summa += unwreppedNum
        }
    }
    return summa
}
let numbers: [Int?] = [1, 2, 3, 4, 5, 6, 7]
print(sumOptionalInts(inputSet: numbers)) // 28

// вар. 2 более современный

func summaOptionalInts(inputSet: [Int?]) -> Int {
    return inputSet.compactMap { $0 }.reduce(0, +)
}

let nums: [Int?] = [10, 12, 14, 15, 16, 17]
print(summaOptionalInts(inputSet: nums)) // 84
/* COMMENTS:
 1. используй `compactMap`, чтобы удалить все `nil` значения,
 2. затем суммируй оставшиеся числа с помощью метода `reduce` */

/* Задача 11: Напиши функцию, которая принимает опционал целого числа и возвращает его значение, если оно не `nil`, иначе возвращает 0 */

func start(optionalNum: Int?) -> Int {
    return (optionalNum ?? 0)  // Используем nil-coalescing для возврата значения по умолчанию (0), если optionalNum = nil.
}
let res = start(optionalNum: nil)
print(res) // 0

/* ЗАДАЧА 12: Создай опционал типа `String` и присвой ему значение `"Hello"`. Затем напиши функцию, которая принимает этот опционал и выводит его значение, если оно не `nil` */
let optString: String? = "Hello, I'm Tom Bombadil"

func display(input: String?) {
    print(input ?? "nil")
}
display(input: optString) // Hello, I'm Tom Bombadil

/* ЗАДАЧА 13: Напиши функцию, которая принимает опционал типа `String` и возвращает его значение в верхнем регистре, если оно не `nil`, иначе возвращает пустую строку */

func stringToUpperCase(_ optionalString: String?) -> String {
    return optionalString?.uppercased() ?? ""
}

print(stringToUpperCase("Hi, Thorin Oakenshild!")) // HI, THORIN OAKENSHILD!

// COMMENTS:
/*  1. Обработка nil: Используется оператор nil-coalescing (`??`) для возврата пустой строки, если `optionalString` равен `nil`.
    2. Этот вариант соответствует стандартам Swift и лучше читается
    3. используq _ перед именем параметра в функции
    4. при вызове функции этот параметр не будет отображаться в списке аргументов.
    5. полезно -> простой синтаксис вызова функции.*/

/* ЗАДАЧА 14: Напиши функцию, которая принимает опционал типа `Int` и возвращает его значение, умноженное на 5, если оно не `nil`, иначе возвращает 0. */

func multiplyNumber(_ optionalInt: Int?) -> Int {
    return (optionalInt ?? 0) * 5
}
print(multiplyNumber(10)) // 50
print(multiplyNumber(-2)) // -10
print(multiplyNumber(nil)) // 0

/* ЗАДАЧА 15: Напиши функцию, которая принимает опционал типа `String` и присваивает ему значение в нижнем регистре, если оно не `nil`. Если значение `nil`, функция должна выводить сообщение “Строка пуста” */

func stringToLowerCase(_ optionalString: String?) -> String {
    if let lowerCaseString = optionalString?.lowercased() {
        return lowerCaseString
    } else {
        print("строка пуста")
        return ""
    }
}

print(stringToLowerCase("HOBBITANIA")) // hobbitania
print(stringToLowerCase(nil)) // Вывод: "строка пуста"

/* ЗАДАЧА 16: Напиши функцию, которая принимает опционал типа `String` и присваивает ему значение в нижнем регистре, если оно не `nil`. Если значение `nil`, функция должна выводить сообщение “Строка пуста”
  Вот еще одна подсказка:
    •    Используйте оператор `if let` или `guard let` для проверки значения опционала. */

func stringIntoLowerCase(_ optionalString: String?) -> String {

// вар. 1 используй  if let
    if let lowerString = optionalString {
        return lowerString.lowercased()
    } else {
        return "Строка пуста"
    }
}

print(stringIntoLowerCase("HI, GANDALF GRAY!")) // hi, gandalf gray!

// вар. 2 используй `guard let`

func strIntoLowerCase(_ optionalStr: String?) -> String {
   
    guard let lowerString = optionalStr?.lowercased() else {
        print("Строка пуста")
        return "Строка пуста"
    }
    return lowerString
}
print(strIntoLowerCase("HOBBIT")) // hobbit
print(strIntoLowerCase(nil)) // Строка пуста

// вар. 3
func striIntoLowerCase(_ optionalStri: String?) -> String {
    var temp = ""
    
    guard let lowerString = optionalStri?.lowercased() else {
        print("Строка пуста")
        return "Строка пуста"
    }
    
    // Здесь вы можете использовать temp для других целей
    temp = lowerString
       
    // Заменяем определенные символы
    temp = temp.replacingOccurrences(of: "a", with: "@")
       
       return temp
}

print(striIntoLowerCase("HOBBITANIA")) // Выводит: "hobbit@ni@"
print(striIntoLowerCase(nil)) // Выводит: "Строка пуста"

// ЗАДАЧА 26: напиши функцию, которая принимает словарь с опционал. значениями и возвращает только те пары, где значения не равны 'nil'

