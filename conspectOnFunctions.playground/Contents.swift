import UIKit
// ЭССЕ FUNCTIONS: понятие, структура и виды

/*
 ФУНКЦИЯ - это:
- основополагающий элемент языка, который ОРГАНИЗУЕТ код в единый контейнер = "черный ящик" и выполняет определенные задачи
 
 ПОНЯТИЕ и НАЗНАЧЕНИЕ:
 ФУНКЦИЯ - это блок кода, который выполняет определенную задачу:
 - разбивает код на МЕЛКИЕ и УПРАВЛЯЕМЫЕ части
 - делает код МОДУЛЬНЫМ и УДОБНЫМ для тестирования и отладки
 - имеет УНИКАЛЬНОЕ имя, по которому можно ВЫЗВАТЬ ФУНКЦИЮ в нужный момент и передать АРГУМЕНТЫ
 - может принимать ВХОДЯЩИЕ ПАРАМЕТРЫ - они САМОСТОЯТЕЛЬНЫЕ ОБЪЕКТЫ!, имеют ИМЯ + ТИП
 - создает отдельную область видимости ВНУТРИ себя => все созданные в ТЕЛЕ функции методы НЕДОСТУПНЫ ИЗВНЕ
 - может ВОЗВРАЩАть значение  -> результат исполнения кода (Int, String, Array, func)
 - имеет собственный функциональный ТИП ДАННЫХ
 - м.б. сохранена в  let/var и в таком виде передана
 - внутри функции они становятся МЕТОДАМИ (область видимости локальна, ограничена ТЕЛОМ функции), они ЗАВИСИМЫ от функции
 - закончив действия, функция ПЕРЕСТАЕТ работать, а ее данные будут уничтожены и станут НЕДОСТУПНЫ
     - in, with, on - ???
- return  - возвращаемое значение после которого функция завершит РАБОТАТЬ и происходит ВЫХОД из нее, но в ОДНОЙ функции return м.б. много
- производит операции который позволяет избежать его дублирования и делает его КОРОЧЕ и ЯСНЕЕ
 
 СТРУКТУРА ФУНКЦИИ:
    - ключевое слово 'func': используй для ВЫЗОВА функции
    - имеет имя - naming - УНИКАЛЬНОЕ название, которое описывает: что делает ЭТА функция? naming важен т.к. кд д.б. ЧИТАЕМ
    - ВХОДЯЩИЕ ПАРАМЕТРЫ - значения, которые функция принимает(НЕобязательны) они САМОСТОЯТЕЛЬНЫЕ ОБЪЕКТЫ!, берутся/создаются ИЗВНЕ (ВНЕШНЯЯ зона видимости) за lim функции
    - ВОЗВРАЩАЕМЫЙ ТИП значения  -> результат (Int, String, Array, func)
    - ТЕЛО функции - это КОД, который выполняется при ВЫЗОВЕ функции (вычисления и ...?)
 
ТЕРМИНОЛОГИЯ:
- ВХОДНЫЕ ПАРАМЕТРЫ - константы, которые передаются в функцию должны иметь значения - иначе error!
- ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ: результат работы функции
- ВЛОЖЕННЫЕ ФКНКЦИИ - функции, определенные ВНУТРИ др. функций. Они могут использовать переменные внешней функции */

/* ВИДЫ ФУНКЦИЙ:

1. ПРОСТАЯ функция: НЕ принимает параметров и ничего НЕ возвращает */
func greet() {
    print("Hi, Valery!")
}
greet() // Hi, Valery!  -  для ее ВЫЗОВА просто используй ее ИМЯ

// ЗАДАЧА: напиши УСЛОЖНЕННУЮ функцию приветствия, которое меняется с учетом времени суток

func greet(name: String) {
    let date = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    
    let greeting: String
    
    switch hour {
    case 0...11:
        greeting = "Доброе утро, \(name)!"
    case 12...17:
        greeting = "Добрый день, \(name)!"
    case 18...21:
        greeting = "Добрый вечер, \(name)!"
    default:
        greeting = "Доброй ночи, \(name)!"
    }
    print(greeting)
}
// пример использования
greet(name: "Мама Люся") // Доброе утро, Мама Люся!
print(greet(name: "Мама Люся")) // Доброе утро, Мама Люся!

/*
 ЗАДАЧА: напиши функцию, которая принимает имя и возраст м выводит поздравления с днем рождения, учитывая возраст.*/
func congratulateBirthDay(name: String, age: Int) {
    let congratulation: String
    
    switch age {
    case 0...12:
        congratulation = "С днем рождения, \(name). Желаем тебе веселого дня и новых приключений!"
    case 13...19:
        congratulation = "С днем рождения, \(name). Пусть этот год будет полон интересных открытий!"
    case 20...64:
        congratulation = "С днем рождения, \(name). Желаем тебе успехов и счастья в новом году жизни!"
    default:
        congratulation = "С днем рождения, \(name). Пусть этот год будет наполнен теплом и любовью!"
    }
    print(congratulation)
}
// пример использования
congratulateBirthDay(name: "John", age: 65)
congratulateBirthDay(name: "Bob", age: 12)
congratulateBirthDay(name:"Vincent", age: 22)

// вариант 2 - функция возвращает строку
func congrateBirthDay(name: String, age: Int) -> String {
    let congratulate: String
    
    switch age {
    case 0...12:
        congratulate = "С днем рождения, \(name). Желаем тебе веселого дня и новых приключений!"
    case 13...19:
        congratulate = "С днем рождения, \(name)! Пусть этот год будет полон интересных открытий!"
    case 20...64:
        congratulate = "С днем рождения, \(name)! Желаем тебе успехов и счастья в новом году жизни!"
    default:
        congratulate = "С днем рождения, \(name)! Пусть этот год будет наполнен теплом и любовью близких!"
    }
    return congratulate
}
// пример использования
print(congrateBirthDay(name: "Mary", age: 68))
print(congrateBirthDay(name: "Ann", age: 7))
print(congrateBirthDay(name:"Valery", age: 21))
/*
 COMMENTS:
 1. Функция БЕЗ возвращаемого значения -> НЕ требует доп. памяти
    - функция выполняет действия ВНУТРИ себя и выводит сообщение с помощью 'print'
    - создается строка ВНУТРИ функции - она ЗАНИМАЕТ ПАМЯТЬ, но после выполнения функции эта память ОСВОБОЖДАЕТСЯ
    - пример ВЫЗОВА функции congratulateBirthDay(name: "Bob", age: 12)
 2. Функция С ВОЗВРАЩАЕМЫМ значением -> String
    - функция возвращает строку -> требует доп. память для СОХРАНЕНИЯ возвращаемого значения
    - функция вычисляет поздравления и ВОЗВРАЩАЕТ его как строку, которую можно ИСПОЛЬЗОВАТЬ в дальнейшем
    - пример вызова print(congrateBirthDay(name: "Ann", age: 7))
    - после ВЫЗОВА функции возвращаемая строка ОСТАЕТСЯ в памяти до тех пор, пока:
 1. она не будет ЯВНО УДАЛЕНА
 2. выйдет из области ВИДИМОСТИ
 
 КЛЮЧЕВЫЕ РАЗЛИЧИЯ:
 1. первая функция НЕ возвращает НИЧЕГО, а вторая - строку
 2. в первой функции результат выводится НАПРЯМУЮ ВНУТРИ функции, а во второй - результат возвращается и м.б. использован ВНЕШНИМ КОДОМ для сохранения / вывода
 3. функция, возвращающая значение - более ГИБКАЯ, т.к. позволяет использовать результат в разных контекстах */
      
func outerFunction() {
    func innerFunction() {
        print("This is an inner function")
    }
    innerFunction()
}

/*
2. ПОЛЬЗОВАТЕЛЬСКАЯ ФУНКЦИЯ с ВХОДНЫМИ ПАРАМЕТРАМИ: создаются кодером для решения конкретных задач */

/* ЗАДАЧА: напиши функцию, которая принимает ТРИ целых числа и возвращает их сумму */
func addSum(num1 a: Int, num2 b: Int, num3 c: Int) -> Int {
    let summa = a + b + c
    return summa
}
// пример использования
let sum = addSum(num1: 1, num2: 2, num3: 3)
print(sum)

// КРАТКАЯ ЗАПИСЬ
func addSumma(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return a + b + c // 12
}
addSumma(12, -12, 12)  // 12


func multiplie(_ a: Double, _ b: Double) -> Double {
    return a * b
}
let multiply = multiplie(1.34, 2.45) // 3.283

/*
ЗАДАЧА: проверка наличия символа: напиши функцию, которая принимает строку и символ и возвращает 'true' если символ присутствует в строке и 'false'  - в противном случае */
func checkPresenceOfSymbol(input: String, symbol: Character) -> Bool {
    for char in input {
        if char == symbol {
            return true
        }
    }
    return false
}
// пример использования
let inputString = "Hello, World!"
print(checkPresenceOfSymbol(input: inputString, symbol: "!")) // true
    
// вариант 2: ПРОСТО + ЭФФЕКТИВНО - преобразуй символ в строку

func checkingPresenceOfSymbol(input: String, symbol: Character) -> Bool {
    return input.contains(String(symbol))
}
// пример использования
let inputStr = "Hi, World!"
print(checkingPresenceOfSymbol(input: inputStr, symbol: "!")) // true
// вариант 3 ЛАКОНИЧНО + ЭФФЕКТИВНО - метод 'first(where:)' для поиска ВХОЖДЕНИЯ символа

func checkPresenceSymbol(_ input: String, _ symbol: Character) -> Bool {
    return input.first(where: { $0 == symbol }) != nil
}
// пример использования
let str = "Hi, World!"
let symbol: Character = "?"
print(checkPresenceSymbol(str, symbol)) // false
/*
 COMMENTS:
 Именно ЭТОТ метод наиболее ЛАКОНИЧЕН + ЭФФЕКТИВЕН, ибо он ОСТАНАВЛИВАЕТСЯ при ПЕРВОМ нахождении совпадения */

/*
 3. ФУНКЦИЯ из стандартной БИБЛИОТЕКИ: встроенные функции языка Swift, которые можно использовать БЕЗ создания собственных
 'sorted()' - функция сортирует МАССИВ и возвращает НОВЫЙ массив с уже отсортированными элементами */
let numbers = [3,6,1,9,10,2,12,15,21,0]
let sortedNumbers = numbers.sorted()
print(sortedNumbers)

let friuts = ["lime", "grapes", "date", "kiwi", "mango", "melon"]
let sortedFruits = friuts.sorted() // сортировка в АЛФАВИТНОМ порядке
print(sortedFruits) // date", "grapes", "kiwi", "lime", "mango", "melon"
let sortedRFruitsDescending = friuts.sorted(by: >) // сортировка в ОБРАТНОМ алфавитному порядке
print(sortedRFruitsDescending) //melon", "mango", "lime", "kiwi", "grapes", "date

// сортировка строк ПО ДЛИНЕ, используя замыкание
let words = ["Lime", "Grapes", "Date", "kiwi", "mango", "Melon"]
let sortedByLength = words.sorted { $0.count < $1.count }

print(sortedByLength) // "lime", "date", "kiwi", "mango", "melon", "grapes"
// сортировка строк с учетом РЕГИСТРА
let mixedCaseFruits = ["Lime", "Grapes", "Date", "kiwi", "mango", "Melon"]
let sortedMixedCaseFruits = mixedCaseFruits.sorted()
print(sortedMixedCaseFruits) // "Date", "Grapes", "Lime", "Melon", "kiwi", "mango"
/* COMMENTS:
 при сортировке строки сравниваются с их ASCII - кодами: ЗАглавные буквы имеют МЕНЬШИЕ коды, чем СТРОЧНЫЕ -> они расположены ПЕРВЫМИ в отсортированном массиве */

/* сортировака МАССИВА объектов по СВОЙСТВУ
Задача: есть массив ПОЛЬЗОВАТЕЛЬСКИХ объектов. Отсортируй его по конкретному свойству - возврасту */
struct Person {
    let name: String
    let age: Int
}

let people = [
    Person(name: "Bob", age: 42),
    Person(name: "Arny", age: 12),
    Person(name: "Charlie", age: 71),
    Person(name: "Alice", age: 15)
]
// сортировка по возврасту
let sortedPeopleByAge = people.sorted { $0.age > $1.age }
for person in sortedPeopleByAge {
    print("\(person.name): \(person.age)")
}
/* Charlie: 71
Bob: 42
Arny: 12 */

/* сортировка по ДВУМ критериям
 - сортируем СНАЧАЛА - по возврасту, а потом - по ИМЕНИ.
 - одна функция = одно действие,
 - иначе разбивай на две самостоятельные функции */

let sortedPeopleByAges = people.sorted {
    if $0.age > $1.age {
        return $0.name < $1.name // если возраст ОДИНАКОВ, то сортируй по ИМЕНИ
    }
    return $0.age < $1.age // сортируй по ВОЗРАСТУ
}

for person in sortedPeopleByAges {
    print("\(person.name): \(person.age)")
}
/* Alice: 15
Arny: 12
Bob: 42
Charlie: 71 */

// Сортировка строк по ДЛИНЕ и АЛФАВИТУ

let sortedWords = words.sorted {
    if $0.count == $1.count {
        return $0 < $1 // если длина одинакова, сортируем по алфавииту
    }
    return $0.count < $1.count // сортируем по длине
}
print(sortedWords) // "Date", "Lime", "kiwi", "Melon", "mango", "Grapes"

// СОРТИРОВКА СЛОВАРЕЙ по НЕСКОЛЬКИМ ключам
/* ЗАДАЧА: есть массив словарей, отсортируй его по нескольким ключам: по оценке и возрасту */

let students = [ // создай масссив словарей: каждый словарь - студент + его данные
    ["name": "John", "age": 21, "score": 98],
    ["name": "Doe", "age": 23, "score": 96],
    ["name": "Jane", "age": 20, "score": 100]
    ]
 // сортируем студентов сначала по 'age',  затем - по 'score'
let sortedStudents = students.sorted {
    // сравниваем возраст дв4х студентов
    if ($0["age"] as! Int) == ($1["age"] as! Int) {
       // если возраст одинаковый, сортируем по убыванию оценок
        return ($0["score"] as! Int) > ($1["score"] as! Int)
    }
    // если возраст разный, сортируем по возрастанию возраста
    return ($0["age"] as! Int) < ($1["age"] as! Int)
}
// выводим инфу об отсортированных студентах
for student in sortedStudents {
    // используй развертывание(!) для получения значений из словаря
    print("Student: \(student["name"]!), Age:  \(student ["age"]!), Score: \(student ["score"]!)")
}
/*  Student: Jane, Age:  20, Score: 100
    Student: John, Age:  21, Score: 98
    Student: Doe, Age:  23, Score: 96 */

// ВХОДНЫЕ ПАРАМЕТРЫ - именованные
/*
 ЗАДАЧА: создайте функцию, которая рассчитает стоимость поездки: принимает именованные параметры - distance (расстояние в км, Double), fuelConsumption(расход топлива на 100 км, Double), fuelPrice(стоимость 1 литра топлива, Double). Функция д.б. вернуть общую стоимость поездки.
 ДОП. УСЛОВИЕ: добавь доп. параметр 'passengers'(количество пассажиров, Int) и ИЗМЕНИ функцию так, чтобы она возвращала стоимость поездки на ОДНОГО человека. */

func calculateCostOfTrip(distance: Double, fuelConsumption: Double, fuelPrice: Double, passengers: Int) -> Double {
    let costOfTrip = distance / 100 * fuelConsumption * fuelPrice / Double(passengers)
    return costOfTrip
}
let costTripToKemerovo = calculateCostOfTrip(distance: 500.0, fuelConsumption: 10.0, fuelPrice: 55.0, passengers: 4)
print("Общая стоимость поездки: \(costTripToKemerovo) рублей") // Общая стоимость поездки: 687.5 рублей


